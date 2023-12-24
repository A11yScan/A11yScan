# A11yScan-mobile
## A11yScan: Accurately Detecting Accessibility Issues in Android Apps
The goal of A11yScan is to automatically explore and detect accessibility issues in Android apps. Compared with the existing tools, A11yScan achieves significantly better performance in both UI scenario exploration and issue detection, which reduces the hidden danger of false negatives. Additionally, A11yScan introduces a resource trees-based method to validate the accuracy of detected issues and classify them, which effectively reduces false positives. We have made the source code of A11yScan and the corresponding dataset publicly available. We hope this project can help more developers comprehensively and accurately detect accessibility issues. Please feel free to contact us if you have any questions and issues. We will continue to maintain this project. Thanks for your feedback.

## Environment Configuration
* Ubuntu/Macbook
* Python: 3.9
* APKTool: 2.4.1
* Java environment (jdk): jdk1.8.0_45
* Android Emulator (x86_64): Android 11.0

## Usage
The **ExplorDetector** folder is the source code for logic-driven UI Exploration and Detection, while the **ResourceAnalysis** folder is for Fine-Grained Resource Analysis, which uses resource trees to accurately analyze and report detected issues. Before testing, please install the monitoring app (**SUPERVISOR. apk**) on the virtual machine and grant storage permissions. In addition, it is necessary to create monitoring directories AccessTemp and OutputFile under the "Files/Downloads" folder in the virtual machine.
* Input: the APK(s) file
* Output: detection reports for accessibility issues and other relevant parsing results
* Usage: python ExplorDetector/main.py [apks_folder], python ResourceAnalysis/run_analysis.py [result_folder]

## UI Scenarios in App
* Activity UI scenario: The initial state of different Activity pages in the app.
* Activity-dependent UI scenarios: Each Activity includes various UI scenarios beyond the initially rendered UI page during runtime, such as fragment UI, drawer, menu, and dialog.
* Activity-sensitive UI scenarios: When the states of other UI scenarios change due to interactions, the UI scenario of the current activity also undergoes corresponding changes.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/activity-scenarios.png)

## Cases
* Cases for panoramic UI exploration and detection.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/exploration-example.png)
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20logic-driven%20UI%20exploration%20and%20detection-com.afoollestad.png)
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20logic-driven%20UI%20exploration%20and%20detection-au.com.wall.png)
* Cases for detecting false positives by using resource trees.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20detecting%20false%20positives%20by%20using%20UI%20resource%20trees-UI%20Presentation.png)
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20detecting%20false%20positives%20by%20using%20UI%20resource%20trees-Specific%20UI%20Design.png)
