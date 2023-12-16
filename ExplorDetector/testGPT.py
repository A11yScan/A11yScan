# import os
# import openai
# import requests
#
# openai.api_key = "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"
#
# # 中文
# # reponse = openai.ChatCompletion.create(
# #   model="gpt-3.5-turbo",
# #   messages=[
# #         {"role": "user", "content": "用python写一个俄罗斯方块"},
# #     ]
# # )
# print("test")
# # proxies = {
# #             'http': 'http://127.0.0.1:7890',
# #             'https': 'http://127.0.0.1:7890'
# #             }
# # response = openai.Completion.create(model="ada", prompt="who are you",max_tokens=10,proxies=proxies)
# response = openai.Completion.create(model="123", prompt="who are you",max_tokens=10)
# print(response)
# # url = "https://openai.com/"
# # r = requests.get(url)
# #
# # r = requests.get(url, proxies=proxies)

import openai
import os
os.environ["http_proxy"] = "http://127.0.0.1:7890"
os.environ["https_proxy"] = "http://127.0.0.1:7890"
openai.api_key = "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"
# mpletion.create(
#   model="gpt-3.5-turbo",
#   messages=[
#         {"role": "user", "content": "where is Bei Jing"},
#     ]
# )
#
# print(reponse)
# 中文
# reponse = openai.ChatCo
prompt="Question: This is a googlequicksearchbox app. On its page, it has an input component. The text on this component is 'Search apps, web, and more…'. The purpose of this input component may be 'search box'. What is the hint text of this input component?"
response=openai.Completion.create(model="ada", prompt=prompt,max_tokens=20)
print(response)