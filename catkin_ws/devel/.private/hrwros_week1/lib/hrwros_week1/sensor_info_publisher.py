#!/home/rbednar/.local/share/virtualenvs/ros-edx-example-TNbRsaha/bin/python3
# -*- coding: utf-8 -*-
# generated from catkin/cmake/template/script.py.in
# creates a relay to a python script source file, acting as that file.
# The purpose is that of a symlink
python_script = '/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/src/hrwros/hrwros_week1/scripts/sensor_info_publisher.py'
with open(python_script, 'r') as fh:
    context = {
        '__builtins__': __builtins__,
        '__doc__': None,
        '__file__': python_script,
        '__name__': __name__,
        '__package__': None,
    }
    exec(compile(fh.read(), python_script, 'exec'), context)
