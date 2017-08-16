#! /usr/bin/env python

import rospy
from PIL import Image
import base64
from std_msgs.msg import String
from my_tutorial.srv import MapData, MapDataResponse, MapList, MapListResponse
import os


class StaticMapSrv():
    def __init__(self):
        MAP_DIR ='/home/whj/catkin_ws/src/my_tutorial/maps/'
        # MAP_DIR = rospy.get_param('~map_list_dir')
        self.path = MAP_DIR
        mapsrv = rospy.Service('get_static_map',MapData,self.handle_staticmap)
        listsrv = rospy.Service('map_list',MapList,self.handle_maplist)

    def handle_staticmap(self,req):
        full_name = self.path+req.name+'.png'
        f=open(full_name,'rb')
        base_data=MapDataResponse()
        base_data.mapWidth, base_data.mapHeight = Image.open(full_name).size
        base_data.base64Data = str(base64.b64encode(f.read()))

        return base_data

    def handle_maplist(self,req):
        f_list=os.listdir(self.path)
        map_list=[]
        for f in f_list:
            if os.path.splitext(f)[1]== '.yaml':
                map_list.append(os.path.splitext(f)[0])
        map_string=MapListResponse()

        map_string.mapName=';'.join(map_list)
        return map_string



if __name__ == "__main__":
    rospy.init_node('static_map_server')
    StaticMapSrv()
    rospy.spin()
