from tools import findres
from fuzz import intype
import time

def fillInBlank(device, project):
    GptTextSet = {}
    all_widget = device.uiauto()
    print(all_widget)
    for widget in all_widget:
        widgetu2 = widget
        if widgetu2.info['className'] == 'android.widget.EditText':
            print("Find Input Widget: ", widgetu2.info)
            # 检查输入文本框
            res = findres.find(project, widgetu2.info, project.tmptxt)
            print(res)
            if res:
                inputType = res[0]
            else:
                inputType = 'none'
            fuzz_str = intype.create(inputType)
            print("[+] Screen fuzz_str: ", fuzz_str)
            try:
                # widgetu2.click()
                widgetu2.set_text(fuzz_str)
                time.sleep(1)

                # zyx
                GptTextSet[widgetu2] = fuzz_str
            except:
                continue