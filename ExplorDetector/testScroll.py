import os
import time
import subprocess
import uiautomator2 as u2

d = u2.connect()

# 定义截图起始坐标和大小
x = 0
y = 0
width = 1080
height = 1920

# 定义滚动距离和间隔时间
# scroll_distance = 200
scroll_distance = 380
scroll_duration = 0.5


cmd1 = 'adb shell screencap -p /sdcard/screenshot.png'
output = subprocess.check_output(cmd1).decode("utf-8")


xml = d.dump_hierarchy()


cmd2 = 'adb pull /sdcard/screenshot.png ' + os.getcwd()
output = subprocess.check_output(cmd2).decode("utf-8")
# print(output)
cmd4 = 'adb shell rm /sdcard/screenshot.png'
output = subprocess.check_output(cmd4).decode("utf-8")
# print(output)

xmlTemp = xml

# 滚动截图并合并
n = 1
while True:
    file_nameN = 'screenshot' + str(n) + '.png'
    file_pathN = os.path.join(os.getcwd(), file_nameN)
    cmd3 = 'adb shell input swipe {} {} {} {} {}'.format(int(x + width / 2), y + height - scroll_distance, int(x + width / 2),
                                                         y + scroll_distance, int(scroll_duration * 1000))
    print(cmd3)
    output = subprocess.check_output(cmd3).decode("utf-8")
    time.sleep(scroll_duration)

    xmlN = d.dump_hierarchy()
    # print(xmlN)
    if xmlN == xmlTemp:
        print(n)
        break
    n = n + 1
    xmlTemp = xmlN

    cmd1 = 'adb shell screencap -p /sdcard/' + file_nameN
    output = subprocess.check_output(cmd1).decode("utf-8")
    cmd2 = 'adb pull /sdcard/' + file_nameN + ' ' + os.getcwd()
    output = subprocess.check_output(cmd2).decode("utf-8")
    cmd4 = 'adb shell rm /sdcard/' + file_nameN
    output = subprocess.check_output(cmd4).decode("utf-8")
