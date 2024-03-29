import os
def getScenes(resultPath, apk):
    clickAct = os.path.join(resultPath, apk, "1clickAct.txt")
    directAct = os.path.join(resultPath, apk, "1directAct.txt")
    indirectAct = os.path.join(resultPath, apk, "1indirectAct.txt")
    act_scene = {}

    with open(directAct, 'r') as f:
        content = f.read()
        acts = content.split('\n')
        for act in acts:
            if act == '':
                continue
            actName = act.split(" : ")[0]
            scene = act.split(" : ")[1]
            if scene not in act_scene:
                act_scene[scene] = actName
    with open(indirectAct, 'r') as f:
        content = f.read()
        acts = content.split('\n')
        for act in acts:
            if act == '':
                continue
            actName = act.split(" : ")[0]
            scene = act.split(" : ")[1]
            if scene not in act_scene:
                act_scene[scene] = actName

    with open(clickAct, 'r') as f:
        content = f.read()
        acts = content.split('\n')
        for act in acts:
            if act == '':
                continue
            actName = act.split(" : ")[0]
            scene = act.split(" : ")[1]
            if scene not in act_scene:
                act_scene[scene] = actName
    print(act_scene)
    return act_scene
# resultPath = "/home/yuxin/code/rebuild1/result_230428"
# apk = "a2dp.Vol-133"
# getScenes(resultPath, apk)