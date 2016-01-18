# React-Native-Flurry

React Native wrapper for [Flurry](http://flurry.com)

## Installation

[![NPM](https://nodei.co/npm/react-native-flurry.png)](https://nodei.co/npm/react-native-flurry/)

### 1. Install

npm install react-native-flurry --save


### 2. Add it to your project

In Xcode project navigator, right click on Libraries, click on Add Files to "Project Name" and add node_modules/react-native-flurry/RNFlurry.xcodeproj.

### 3. Integrate Flurry 

Download Flurry iOS SDK and follow the instructions but instead of adding it to the app, add it to RNFlurry.xcodeproj under libraries.

* Right click on RNFlurry.xcodeproj under libraries, click on Add Files to "RNFlurry.xcodeproj" and select Flurry library folder.
* Add Security.framework and SystemConfiguration.framework to your app.


## Usage

```
//Require the module
var RNFlurry = require('NativeModules').RNFlurry;

//Start Session
RNFlurry.startSession("<FLURRY_API_KEY>");

//Set UserID
RNFlurry.setUserID("USER_ID");

//Log event 
RNFlurry.logEvent("EVENT NAME");

//Log event with parameters
RNFlurry.logEventWithParameters("EVENT NAME", {param1:'value1', param2:'value2'});

//Log error with title and message
RNFlurry.logError("ERROR TITLE","ERROR MESSAGE");

```

### TODO

* Add Android support
* Expose other functions supported by Flurry SDK
* Add tests

### Thanks to 
[cosmith](https://github.com/cosmith/) for [sample code](https://gist.github.com/cosmith/5fd26d0125767d88f288)


### Licence
Licensed under the [MIT License](http://opensource.org/licenses/MIT)
