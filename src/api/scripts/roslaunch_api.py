#!/usr/bin/env python
import rospy
import subprocess, os
from api.srv import LaunchCmd, LaunchCmdResponse


class RosLaunchApi():
    def __init__(self, base_path):
        self.base_path = base_path
        self.cmd_list = {"start_mapping": "roslaunch cartographer_ros my_revo_lds.launch",
                         "stop_mapping": "rosnode kill cartographer_node",
                         "save_map": "rosrun map_server map_saver -f ",
                         "start_map_server": "rosrun map_server map_server __name:=map_server ",
                         "start_navigation": "roslaunch xunjian_nav xunjian_move_base.launch",
                         "stop_map_server": "rosnode kill map_server",
                         "stop_navigation": "rosnode kill ",
                         "start_total_map_server": ""
                         }
        rospy.Service("remote_launch", LaunchCmd, self.handle_savemap)

    def handle_savemap(self, req):
        res = LaunchCmdResponse()
        res.msg = "fail"
        cmd = self.cmd_list.get(req.cmd)
        status = True
        t0 = rospy.Time.now().to_sec()
        check_topic = None

        if req.cmd == "start_mapping":
            rospy.loginfo('remote run: ' + cmd)
            p = subprocess.Popen(cmd, shell=True)
            check_topic = '/map'

        elif req.cmd == "stop_mapping":
            rospy.loginfo('remote run: ' + cmd)
            p = subprocess.Popen(cmd, shell=True)
            res.msg = 'success'

        elif req.cmd == "save_map":
            cmd = cmd + self.base_path + "maps/" + req.mapName
            rospy.loginfo('remote run:' + cmd)
            p = subprocess.Popen(cmd, shell=True)
            res.msg = 'success'

        elif req.cmd == "start_map_server":
            cmd = cmd + self.base_path + "maps/" + req.mapName + ".yaml"
            rospy.loginfo('remote run: ' + cmd)
            p = subprocess.Popen(cmd, shell=True)
            check_topic = '/map'

        elif req.cmd == "stop_map_server":
            rospy.loginfo('remote run: ' + cmd)
            p = subprocess.Popen(cmd, shell=True)
            res.msg = 'success'

        elif req.cmd == "start_navigation":
            rospy.loginfo('remote run: ' + cmd)
            p = subprocess.Popen(cmd, shell=True)
            check_topic = '/map'

        elif req.cmd == "stop_navigation":
            rospy.loginfo('remote run: ' + cmd + 'amcl')
            subprocess.Popen(cmd + "amcl", shell=True)
            rospy.loginfo('remote run: ' + cmd + 'move_base')
            subprocess.Popen(cmd + "move_base", shell=True)
            rospy.loginfo('remote run: ' + cmd + 'pose_publisher')
            subprocess.Popen(cmd + "pose_publisher", shell=True)
            res.msg = 'success'

        elif req.cmd == "start_total_map_server":
            rospy.loginfo('remote run: ' + 'total_map_server')
            map_list = []
            f_list = os.listdir(self.base_path + 'maps/')
            for f in f_list:
                if os.path.splitext(f)[1] == '.yaml':
                    map_list.append(f)
            k = 0
            for mm in map_list:
                k = k+1
                nn = mm.split('.')[0]
                subprocess.Popen('rosrun map_server map_server ' +
                                 self.base_path + 'maps/' + mm +
                                 ' __name:=map_server' + str(k) +
                                 ' /map:=/' + nn +
                                 ' /map_metadata:=/' + nn + '_metadata',
                                 shell=True)

        else:
            res.msg = "command not found"

        if check_topic:
            topics = rospy.get_published_topics()
            while(status and rospy.Time.now().to_sec() - t0 < 5.0):
                for topic in topics:
                    if topic[0] == check_topic:
                        res.msg = 'success'
                        status = False

        return res


if __name__ == "__main__":
    rospy.init_node("roslaunch_api", anonymous=True)
    path = rospy.get_param("~api_pkg_path", "/home/whj/catkin_ws/src/api/")
    RosLaunchApi(path)
    rospy.spin()
