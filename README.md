# a2sinternship-project
Internship
# a2sinternshipp
<br>
Application structure<br>
<br>
├── android - It contains files required to run the application on an Android platform.<br>
├── assets - It contains all images and fonts of my application.<br>
├── ios - It contains files required to run the application on an iOS platform.<br>
├── lib - Most important folder in the application, used to write most of the Dart code.<br>
├── main.dart - Starting point of my application<br>
├── core<br>
│ ├── app_export.dart - It contains commonly used file imports<br>
│ ├── constants - It contains static constant class file<br>
│ └── utils - It contains common files and utilities of the application<br>
├── presentation - It contains widgets of the screens<br>
├── routes - It contains all the routes of the application<br>
└── theme - It contains app theme and decoration classes<br>
└── widgets - It contains all custom widget classes<br>
<br>
Bloc Architecture<br>
This app follows the Bloc (Business Logic Component) architecture pattern for managing state and data flow. The Bloc pattern helps in separating<br> business logic from the UI layer, making the code more modular, testable, and maintainable.<br>
<br>
Within the presentation folder, each screen or component has its own directory, which includes the UI code and a corresponding Bloc class.<br> This separation allows for clear separation of concerns and easier testing of the individual components<br>
<br>
The final output screens developed are as follows:<br>

<table>
<tr>
<td ><img src="pic1.jpg" width=250>Screen1</td>
<td ><img src="pic2.jpg" width=250>Details</td>
<td ><img src="pic3.jpg" width=250>Frame3</td>
</tr>
  </table>
<br>
A new Flutter project.<br>
<br>
## Getting Started<br>
<br>
This project is a starting point for a Flutter application.<br>
<br>
A few resources to get you started if this is your first Flutter project:<br>
<br>
-   [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)<br>
-   [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)<br>
<br>
For help getting started with Flutter development, view the<br>
[online documentation](https://docs.flutter.dev/), which offers tutorials,<br>
samples, guidance on mobile development, and a full API reference.<br>
