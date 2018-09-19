# Flutter + Firebase

Read Flutter more articles at my blog [Here](http://zhipengmei.github.io/site/).

# Connect Flutter App to Firebase

## Step 1: Firebase Setup

1. Visit Firebase's official site [Here](https://firebase.google.com).
2. Click on **GO TO CONSOLE**
3. Create a new project by clicking on **Add project**

## Step 2: Add App to Project
![](https://raw.githubusercontent.com/CatalystCode/react-native-azurenotificationhub/HEAD/img/AddFirebaseToAndroid.png)

### Step 2.1: Integrate Firebase into iOS

Open your **Flutter** project. 


1. open ios/Runner.xcworkspace in XCode
   
```
iOS
|--Flutter
|--Runner
|   .
|   .
|--Runner.xcworkspace
```

1. Copy the value of ```Bundle identifier```.

![](https://codelabs.developers.google.com/codelabs/flutter-firebase/img/a5ba4ef17c29d5a7.png)

3. Navigate back to the **Firebase Console** and add a new **iOS** app by clicking the **iOS** icon.
4. Paste the ```Bundle identifier``` into the ```iOS bundle ID``` field. Click next.
5. Download the **config file** and click next to exit the tutorial.
6. Navigate back to Xcode. Drag the ```GoogleService-Info.plist ``` file you just downloaded into that Runner subfolder.
   
```
iOS
|--Flutter
|--Runner
|   |--Assets.xcassets
|   .
|   .
|   |--Info.plist
|   |--GoogleService-Info.plist
```

7. Go to [FlutterFire](https://github.com/flutter/plugins/blob/master/FlutterFire.md).
   - Add the firebase packages that's needed for your project such as ```firebase_core firebase_auth firebase_database``` etc.
   - How to add packages?
        - Click on ```firebase_core``` which opens a new webpage.
        - Navigate to the **Installing** tab.
        - Copy the dependencies ```firebase_core: ^0.x.x```
        - Navigate to ```pubspec.yaml``` file in your Flutter project.
        - Patse it underneath dependencies and it should looks something like the following.

```
dependencies:
    flutter:
        sdk: flutter

    cupertino_icons: ^0.1.2
    firebase_core: ^0.2.5
    firebase_database: ^1.0.4
    firebase_auth: ^0.5.20
```

8. Save everything & run the Flutter app on simulator or iPhone.

### Step 2.2: Integrate Firebase into Android

The easiest way to get the Android App Id is navigate to the **build.gradle** file.
```
android
|--app
|   |--src
|   |--build.gradle
|
```
```
defaultConfig {        
    applicationId "com.example.flutterfirebase"
    .
    .
}
```

2. Copy the value of ```applicationId```.
3. Navigate back to the **Firebase Console** and add a new **Android** app.
4. Paste the ```applicationId``` into the ```Android package name``` field. Click next.
5. Download the **config file**.
6. Navigate back to the Flutter project. Drag the ```GoogleService-Info.plist ``` file you just downloaded into that android/app subfolder.
![](https://www.gstatic.com/mobilesdk/160426_mobilesdk/images/android_studio_project_panel.png)
   
```
android
|--app
|   |
|   |--src
|   |--build.gradle
|   |--GoogleService-Info.plist
```

7. Add Google Services Part 1
- Paste the classpath below to the android/build.grade
```
classpath 'com.google.gms:google-services:x.x.x'
```

```
android
|--app
|--gradle
|--.gitignore
|--build.gradle
```   


- After you pasted it. It should look something like this.

```
buildscript {
    repositories {
        google()
        jcenter()
    }

    dependencies {
        classpath 'com.android.tools.build:gradle:3.1.2'
        classpath 'com.google.gms:google-services:4.0.1'
    }
}
```

8. Add Google Services Part 2
  - Paste the classpath below to the android/app/build.grade
  
  ```
  apply plugin: 'com.google.gms.google-services'
  ```
```
android
|--app
|  |--build.gradle <--- YES, this one
|--gradle
|--.gitignore
|--build.gradle <--- NO, not this one
```  

- After you pasted it to the bottom of the file. It should look something like this.

```
flutter {
    source '../..'
}

dependencies {
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.2'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.2'
}

apply plugin: 'com.google.gms.google-services'
```


9.  Go to [FlutterFire](https://github.com/flutter/plugins/blob/master/FlutterFire.md).
   - Add the firebase packages that's needed for your project such as ```firebase_core firebase_auth firebase_database``` etc.
   - How to add packages?
        - Click on ```firebase_core``` which opens a new webpage.
        - Navigate to the **Installing** tab.
        - Copy the dependencies ```firebase_core: ^0.x.x```
        - Navigate to ```pubspec.yaml``` file in your Flutter project.
        - Patse it underneath dependencies

```
dependencies:
    flutter:
        sdk: flutter

    cupertino_icons: ^0.1.2
    firebase_core: ^0.2.5
```
10. Save everything & run the Flutter app on emulator or android phone.

## That's it

You have successfully integrated firebase into both iOS and Android. Great job ^ :) ^

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
