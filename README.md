# A11yScan-mobile
## A11yScan: Scenario-Driven and Context-Aware Automated Accessibility Testing for Android Apps
The goal of A11yScan is to automatically explore and detect accessibility issues in Android apps. Compared with the existing tools, A11yScan uses a scenario-driven UI exploration method for improving the coverage of UI scenarios, thereby detecting accessibility issues within the app, which reduces the hidden danger of false negatives. Additionally, A11yScan introduces a context-aware detection method that provides a more fine-grained detection capability, which effectively reduces false positives. We have made the source code of A11yScan and the corresponding dataset publicly available. We hope this project can help more developers comprehensively and accurately detect accessibility issues. Please feel free to contact us if you have any questions and issues. We will continue to maintain this project. Thanks for your feedback.

## Environment Configuration
* Ubuntu/Macbook
* Python: 3.9
* APKTool: 2.9.3
* Java environment (jdk): jdk1.8.0_45
* Android Emulator (x86_64): Android 9.0

## Usage
The **ExplorDetector** folder is the source code for Scenario-driven UI Exploration, while the **ResourceAnalysis** folder is for Context-aware Detection, which uses resource trees to assist in decision-making when checking the accessibility of the runtime UI scenarios. Before testing, please install the monitoring app (**SUPERVISOR. apk**) on the virtual machine and grant storage permissions. In addition, it is necessary to create monitoring directories AccessTemp and OutputFile under the "Files/Downloads" folder in the virtual machine.
* Input: the APK(s) file
* Output: detection reports for accessibility issues and other relevant parsing results
* Usage: python ExplorDetector/main.py [apks_folder], python ResourceAnalysis/run_analysis.py [result_folder]

## UI Scenarios in App
* Activity: The initial state of different Activity pages in the app.
* Activity-dependent UI scenarios: Each Activity includes various UI scenarios beyond the initially rendered UI page during runtime, such as fragment UI, drawer, menu, and dialog.
* Activity-sensitive UI scenarios: The new UI states of the current Activity when the states of other UI scenarios change due to user interactions.

As shown in this figure, clicking the menu button in the upper right corner of the first MainActivity can reach an Activity-dependent UI scenario (i.e., the second updated _MainActivity_), while user interaction flows (Adding a new category in _CategoriesActivity_) can lead to an activity-sensitive UI scenario (i.e., the last updated _MainActivity_). Failure to explore activity-dependent or activity-sensitive UI scenarios of apps would result in the inability to detect accessibility issues in them, such as Issue1, Issue2, and Issue3 in this example.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/scenarios.png)

## Cases
* Examples for scenario-driven UI exploration.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/exploration-example.png)
* A real example of using resource trees to obtain the contextual information of the detected UI component for accessibility detection.

A11yScan integrates a runtime context-aware analysis module that constructs two types of resource trees to provide runtime contextual information for detecting app accessibility issues. The pre-defined rules of ATF and the contextual information gained from constructing resource trees together constitute the newly-defined checking rules.
  ![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/context-aware-analysis.png)
  
## The advantages of UI exploration compared to the state-of-the-art UI exploration tool
Compared with the leading UI exploration tool SceneDroid, A11yScan can explore more UI scenarios, which is attributed to the novel scenario-driven UI exploration by explorating both activity-dependent and activity-sensitive UI scenarios.
![Image text](https://github.com/A11yScan/A11yScan/blob/main/Cases/compareWithSceneDroid.png)
