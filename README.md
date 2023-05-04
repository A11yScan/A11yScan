# A11yScan-mobile
## A11yScan: Automated Dynamic and Fine-Grained Accessibility Testing for Android Apps
The goal of Iris is to automatically repair the color-based accessibility issues in Android apps while maintaining the original UI design style of the repaired app as much as possible. We have made the source code of Iris and the corresponding dataset publicly available. We hope this project can help more developers solve the problem of color-based accessibility issues. Please feel free to contact us if you have any questions and issues. We will continue to maintain this project. Thanks for your feedback.

## Environment Configuration
* Ubuntu/Macbook
* Python: 3.9
* APKTool: 2.4.1
* Java environment (jdk): jdk1.8.0_45
* Android Emulator (x86_64): Android 11.0

## Usage
The **ExplorDetector** folder is the source code for _Panoramic UI Exploration and Detection_, while the **ResourceAnalysis** folder is for _Fine-Grained Resource Analysis_, which uses resource trees to accurately analyze and report detected issues. Before testing, please install the monitoring app (**SUPERVISOR. apk**) on the virtual machine and grant storage permissions. In addition, it is necessary to create monitoring directories _AccessTemp_ and _OutputFile_ under the ``Files/Downloads'' folder in the virtual machine.
* Input: the apk file
* Output: a new apk file repaired by Iris
* Usage: python main.py [results_folder], python repair_repack_class.py [apk(s)_folder]

## Website
* Dataset of Iris: 
https://sites.google.com/view/iris-mobile/home
* Dataset of 100 apps and the constructed reference DB: 
https://drive.google.com/drive/folders/1MOEnN1j54HkRvTsigTodIpUo0IEWcOIJ?usp=sharing
* Website of Xbot (used as a detection tool): 
https://github.com/tjusenchen/Xbot
