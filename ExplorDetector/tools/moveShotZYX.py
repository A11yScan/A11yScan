# -*- getshot.shot(coding: utf-8 -*-
import os
import time

access_dir = "/storage/emulated/0/Download/AccessTemp"
output_dir = "/storage/emulated/0/Download/OutputFile"

def move_and_test(pic_dir, device, issue_dir):
    """
    move pic to phone and test
    :param pic_dir: the dir of screenshots
    :param device: the device
    :param issue_dir: the dir of issues
    :return:
    """
    pic_name = pic_dir.split("screenshot/")[1].split(".png")[0]
    csv_dir = output_dir + '/' + pic_name + '.csv'
    anno_image_dir = output_dir + '/' + pic_name + '-anno.png'

    # get layout
    layout = device.dump_hierarchy()
    file_name = pic_name + ".xml"
    xml_dir = pic_dir.split("screenshot/")[0] + "layout/"+file_name
    with open(xml_dir, 'w') as xml_file:
        xml_file.write(layout)


    # don't merge anno_command and csv_command which creates bugs
    pull_anno_command = "adb pull {0} {1}".format(anno_image_dir, issue_dir)
    push_command = "adb push {0} {1}".format(pic_dir, access_dir)
    pull_csv_command = "adb pull {0} {1}".format(csv_dir, issue_dir)
    rm_command = "adb shell rm " + access_dir + "/* " + output_dir + "/*"

    # clean dir
    try:
        os.system(rm_command)
    except:
        pass

    # start detection
    device.uiautomator.stop()
    time.sleep(3)
    os.system(push_command)
    # zyx
    device.uiautomator.stop()
    sleep_time = 10
    time.sleep(sleep_time)
    print("sleeping " + str(sleep_time) + "seconds....")

    # get out this when pull anno or csv successful
    while os.system(pull_anno_command) & os.system(pull_csv_command):
        # restart uiautomator
        device.uiautomator.start()
        time.sleep(3)
        device.uiautomator.stop()
        sleep_time = sleep_time * 2
        print("sleeping " + str(sleep_time) + "seconds....")
        time.sleep(sleep_time)
        # if pull_times >= 320 there may be something wrong with the AccessibilityService
        if sleep_time >= 320:
            print("[-] results miss!!! there may be something wrong with the AccessibilityService")
            break
    os.system(rm_command)

    # if(pic_name=="d41d8cd98f00b204e9800998ecf8427e"):
    #     device(text="Continue").click()
    return layout





# def mvToPhone(pc_dir, phone_dir, devices, cmd):
#     devices.uiautomator.stop()
#     cmd = "adb push {0} {1}".format(pc_dir, phone_dir)
#     out = os.system(cmd)
#     ### zyx
#     time.sleep(10)
#     pic_name = pc_dir.split("/screenshot")[1]
#     cmd = "adb shell rm {0}".format(phone_dir + pic_name)
#     os.system(cmd)
#     devices.uiautomator.start()
#     # error:1
#     return out


# def getOutFiles(devices, phone_out_dir, name, out_dir):
#     csvDir = phone_out_dir + '/' + name + '.csv'
#     annoImageDir = phone_out_dir + '/' + name + '-anno.png'
#     cmd1 = "adb pull {0} {1}".format(csvDir, out_dir)
#     cmd2 = "adb pull {0} {1}".format(annoImageDir, out_dir)
#     cmd3 = "adb shell rm {0}".format(csvDir)
#     cmd4 = "adb shell rm {0}".format(annoImageDir)
#     out1 = os.system(cmd1)
#     out2 = os.system(cmd2)
#     out3 = os.system(cmd3)
#     out4 = os.system(cmd4)
#     return out1, out2, out3, out4