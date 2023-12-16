str1 = "com.example.mynav/com.example.mynav.MainActivity"
print(str1.split("com.example.mynav"))
# import os
# import subprocess

# import uiautomator2 as u2
# d = u2.connect()
# print(d.screenshot())
# print(d.dump_hierarchy())
# res = d.dump_hierarchy()
# print(u2)
# print(res)

# d.app_start("com.github.uiautomator")
# print(d.dump_hierarchy())
# d(text="停止UIAUTOMATOR").click()

# cmd = 'timeout 20s adb -s emulator-5554 shell am start -S -n a2dp.Vol/a2dp.Vol.AppChooser -a zxy -c zxy -W'
# result = subprocess.check_output(cmd, shell=True)

# d.app_start("com.example.accessibilityserver")
# d(text="暗黑魔心的无障碍服务").click()
# d(text="Use service").click()
# d(text="OK").click()
# text="暗黑魔心的无障碍服务"
# with open("/home/yuxin/code/rebuild1/test.xml", "w") as file:
#     print(d.dump_hierarchy())
#     layout = d.dump_hierarchy()





#     file.write(layout)

import time

# d.uiautomator.__init__("uiautomator", d)
# d.uiautomator.start()
# d.uiautomator.stop()
# d.screenshot("/home/yuxin/code/rebuild1/test.png")
# cmd = "adb push /home/yuxin/code/rebuild1/test.png /home/yuxin/code/rebuild1/123.png /storage/emulated/0/Download/OutputFile"
# cmd = "adb pull /storage/emulated/0/Download/OutputFile/test.png /storage/emulated/0/Download/OutputFile/123.png /home/yuxin/code/rebuild1"
# cmd = "adb shell rm /storage/emulated/0/Download/OutputFile/*"
# out = os.system(cmd)
# print(out)
# while (os.system(cmd)):
#     print("good")

# if "This app was built for an older version" in d.dump_hierarchy():
#     d(text="OK").click()
#     # time.sleep(2)

# d(text="Allow").click()

import os
# import uiautomator2 as u2

# d = u2.connect()

# # capture_cmd = 'adb shell screencap -p /sdcard/screenshot.png'
# scoll_cmd = 'adb shell input swipe 540 1440 540 480 1000'
#
# # os.system(capture_cmd)
# os.system(scoll_cmd)
# # d.screenshot("/home/yuxin/code/rebuild1/test11.png")
# print(d.dump_hierarchy())
# print(d)
# for w in d():
#     print(w.info)

import time

start_time = time.time()
time.sleep(2)
end_time = time.time()
consume_time = end_time - start_time
with open("time.txt", 'w') as f:
    f.write(str(consume_time))
print(consume_time)