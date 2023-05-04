import os
import subprocess
import time
from tools import moveShotZYX
from tools import sameOrNotZYX

def shot(devices, project, name, cmd):
    """
    :param devices: uiautomator2操作对象
    :param project: 这轮APK的项目对象
    :param name: 将要保存的图片名字
    :return:
    """
    #
    # subprocess.check_output(cmd, shell=True)
    time.sleep(3)
    scroll_cmd = "adb shell input swipe 540 1400 540 480 1000"
    i = 0
    flag = True
    tempXML = ''
    while flag:
        if i == 0:
            pic_dir = os.path.join(project.screenshot_dir, name+".png")
            tempXML = devices.dump_hierarchy()
        elif i <= 10:
            pic_dir = os.path.join(project.screenshot_dir, name+"_"+str(i)+".png")
        else:
            break

        if not os.path.exists(project.screenshot_dir):
            os.mkdir(project.screenshot_dir)

        devices.screenshot(pic_dir)
        out_dir = os.path.join(project.screenshot_dir.split("/screenshot")[0], "issues", name)
        if not os.path.exists(out_dir):
            os.makedirs(out_dir)
        #move and test
        moveShotZYX.move_and_test(pic_dir, devices, out_dir)
        devices.uiautomator.start()
        time.sleep(3)
        print("scroll")
        subprocess.check_output(scroll_cmd, shell=True)
        time.sleep(5)
        newXml = devices.dump_hierarchy()
        # print(newXml)
        # if tempXML == newXml:
        if sameOrNotZYX.ifSame(tempXML, newXml):
            print("reach scroll end")
            flag = False
        tempXML = newXml
        i = i+1


    # pc_dir = os.path.join(project.screenshot_dir, name + ".png")
    # if not os.path.exists(project.screenshot_dir):
    #     os.mkdir(project.screenshot_dir)
    # # start act
    # subprocess.check_output(cmd, shell=True)
    # time.sleep(3)
    # # shot
    # devices.screenshot(pc_dir)
    # # time.sleep(3)
    # screen_dir = project.screenshot_dir
    # out_dir = os.path.join(screen_dir.split("/screenshot")[0], "issues", name)
    # if not os.path.exists(out_dir):
    #     os.makedirs(out_dir)
    #     # print(out_dir)
    # moveShotZYX.move_and_test(pc_dir, devices, out_dir)




    # out = moveShotZYX.mvToPhone(pc_dir, moveShotZYX.phone_dir, devices, cmd)
    # time.sleep(5)

    # out1 = moveShotZYX.getOutFiles(devices, moveShotZYX.phone_out_dir, name, out_dir)
    # 检查PC中是否已经存在该文件
    while True:
        flag = 0
        for file in os.listdir(project.screenshot_dir):
            if name in file:
                flag = 1
        if flag == 1:
            print("[+] PC get shoot: ", name + ".png")
            break
    return pic_dir

