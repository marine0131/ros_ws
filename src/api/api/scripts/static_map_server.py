#! /usr/bin/env python

import rospy
from PIL import Image
import base64
import os
import re
from api_msgs.srv import DelMap, DelMapResponse, RenameMap, RenameMapResponse
from api_msgs.srv import MapData, MapDataResponse, MapList, MapListResponse, MapToPng, MapToPngResponse


class StaticMapSrv():
    def __init__(self, pkg_path):
        self.pkg_path = pkg_path
        rospy.Service('api/get_static_map', MapData, self.handle_staticmap)
        rospy.Service('api/map_list', MapList, self.handle_maplist)
        rospy.Service('api/map_to_png', MapToPng, self.handle_maptopng)
        rospy.Service('api/del_map', DelMap, self.handle_delmap)
        rospy.Service('api/rename_map', RenameMap, self.handle_renamemap)

    def handle_staticmap(self, req):
        full_name = os.path.join(self.pkg_path, 'maps/' + req.name + '.png')
        f = open(full_name, 'rb')
        base_data = MapDataResponse()
        base_data.mapWidth, base_data.mapHeight = Image.open(full_name).size
        base_data.base64Data = str(base64.b64encode(f.read()))

        return base_data

    def handle_maplist(self, req):
        f_list = os.listdir(os.path.join(self.pkg_path, 'maps/'))
        map_list = []
        for f in f_list:
            if os.path.splitext(f)[1] == '.yaml':
                map_list.append(os.path.splitext(f)[0])
        map_string = MapListResponse()

        map_string.mapName = ';'.join(map_list)
        return map_string

    def handle_delmap(self, req):
        res = DelMapResponse()
        rospy.loginfo('request to delte map "%s"', req.mapName)
        if not os.path.isfile(os.path.join(self.pkg_path, 'maps/' + req.mapName
                                           + '.yaml')):
            res.msg = 'map not exist'
            return res
        os.remove(os.path.join(self.pkg_path, 'maps/' + req.mapName + '.yaml'))
        os.remove(os.path.join(self.pkg_path, 'maps/' + req.mapName + '.png'))

        try:  # delete goal list file
            os.remove(os.path.join(self.pkg_path, 'goals/' + req.mapName + '.json'))
        except Exception:
            pass
        res.msg = 'success'
        return res

    def handle_renamemap(self, req):
        res = RenameMapResponse()
        rospy.loginfo('request to rename map "%s" to "%s"',
                      req.oldMapName, req.newMapName)
        yaml = os.path.join(self.pkg_path, 'maps/' + req.oldMapName + '.yaml')
        png = os.path.join(self.pkg_path, 'maps/' + req.oldMapName + '.png')
        if not os.path.isfile(yaml):
            res.msg = 'map not exist'
            return res
        new_yaml = os.path.join(self.pkg_path, 'maps/' + req.newMapName + '.yaml')
        new_png = os.path.join(self.pkg_path, 'maps/' + req.newMapName + '.png')

        if os.path.isfile(new_yaml):
            res.msg = 'new name exist'
            return res

        try:
            os.rename(yaml, new_yaml)
            os.rename(png, new_png)
        except Exception:
            res.msg = 'os error'
            return res

        self.modify_yaml(new_yaml, req.oldMapName, req.newMapName)
        res.msg = 'success'
        return res

    def handle_maptopng(self, req):
        response = MapToPngResponse()
        response.result = self.pgm2png(os.path.join(self.pkg_path, 'maps/' + req.oldName + '.pgm'),
                                       os.path.join(self.pkg_path, 'maps/'))
        if response.result == 'Success':
            self.modify_yaml(os.path.join(self.pkg_path, 'maps/' + req.oldName
                                          + '.yaml'), 'pgm', 'png')
        return response

    def pgm2png(self, pgm_file, png_dir):
        try:
            pgm = Image.open(pgm_file)
        except IOError:
            rospy.loginfo('file: %s not exit', pgm_file)
            return 'error: file not exit'
        name = (str)(os.path.join(png_dir, os.path.splitext(
            os.path.basename(pgm_file))[0])) + ".png"
        pgm.save(name)
        os.remove(pgm_file)
        return 'Success'

    def modify_yaml(self, yaml_file, pattern, repl):
        with open(yaml_file, 'r') as f:
            lines = f.readlines()
        lines[0] = re.sub(pattern, repl, lines[0])
        with open(yaml_file, 'w+') as f:
            f.writelines(lines)


if __name__ == "__main__":
    rospy.init_node('static_map_server')
    pkg_path = rospy.get_param('~api_pkg_path', '/home/whj/catkin_ws/src/api/api/')
    StaticMapSrv(pkg_path)
    rospy.spin()
