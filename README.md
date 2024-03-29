# A11yScan-mobile
## A11yScan: Scenario-Driven and Context-Aware Automated Accessibility Testing for Android Apps
The goal of A11yScan is to automatically explore and detect accessibility issues in Android apps. Compared with the existing tools, A11yScan uses a scenario-driven exploration method for improving the coverage of UI scenarios, thereby detecting accessibility issues within the app, which reduces the hidden danger of false negatives. Additionally, A11yScan introduces a context-aware detection method that provides a more fine-grained detection capability, which effectively reduces false positives. We have made the source code of A11yScan and the corresponding dataset publicly available. We hope this project can help more developers comprehensively and accurately detect accessibility issues. Please feel free to contact us if you have any questions and issues. We will continue to maintain this project. Thanks for your feedback.

## Environment Configuration
* Ubuntu/Macbook
* Python: 3.9
* APKTool: 2.9.3
* Java environment (jdk): jdk1.8.0_45
* Android Emulator (x86_64): Android 9.0

## Usage
The **ExplorDetector** folder is the source code for Scenario-driven Exploration, while the **ResourceAnalysis** folder is for Context-aware Detection, which uses resource trees to assist in decision-making when checking the accessibility of the runtime UI scenarios. Before testing, please install the monitoring app (**SUPERVISOR. apk**) on the virtual machine and grant storage permissions. In addition, it is necessary to create monitoring directories AccessTemp and OutputFile under the "Files/Downloads" folder in the virtual machine.
* Input: the APK(s) file
* Output: detection reports for accessibility issues and other relevant parsing results
* Usage: python ExplorDetector/main.py [apks_folder], python ResourceAnalysis/run_analysis.py [result_folder]

## UI Scenarios in App
* Activity UI scenario: The initial state of different Activity pages in the app.
* Activity-dependent UI scenarios: Each Activity includes various UI scenarios beyond the initially rendered UI page during runtime, such as fragment UI, drawer, menu, and dialog.
* Activity-sensitive UI scenarios: The new UI states of the current Activity when the states of other UI scenarios change due to user interactions.
  As shown in this figure, clicking the menu button in the upper right corner of the first MainActivity can reach an Activity-dependent UI scenario (i.e., the second updated MainActivity), while user interaction flows (Adding a new category in CategoriesActivity) can lead to an activity-sensitive UI scenario (i.e., the last updated MainActivity). Failure to explore activity-dependent or activity-sensitive UI scenarios of apps would result in the inability to detect accessibility issues in them, such as Issue1, Issue2, and Issue3 in this example.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/scenarios.png)

## Cases
* Cases for scenario-driven exploration.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/exploration-example.png)
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20logic-driven%20UI%20exploration%20and%20detection-com.afoollestad.png)
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20logic-driven%20UI%20exploration%20and%20detection-au.com.wall.png)
* Cases for detecting accessibility issues by using resource trees.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20detecting%20false%20positives%20by%20using%20UI%20resource%20trees-UI%20Presentation.png)
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/Cases%20for%20detecting%20false%20positives%20by%20using%20UI%20resource%20trees-Specific%20UI%20Design.png)
