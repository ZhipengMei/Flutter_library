# Flutter + Google Map

Read Flutter more articles at my blog [Here](http://zhipengmei.github.io/site/).

# Integrate Google Map ![](https://png.icons8.com/color/google-maps.png) into Flutter App 

## Step 1: Map API Setup 
- Go to: https://console.developers.google.com/
    - Create a new project
    - Enable Maps SDK for iOS
    - Enable Maps SDK for Android
    - Enable Maps Static API
    - Under **Credentials**, choose **Create Credential** to create an **API Key**
- Application restrictions
    - Restrict iOS
        - open **ios/Runner.xcworkspace** in **XCode**
            - Copy the value of ```Bundle identifier```.
        - Choose iOS app under Application restrictions
        - Paste in the ```Bundle identifier``` in the textfield.
        - Save
    - Restrict Android
        - You'll need the Android **package name** of the Flutter project and **SHA-1 certificate fingerprint**
        - Google it, it isn't hard to find.

## Step 2: Package Setup
- Install the [map_view](https://pub.dartlang.org/packages/map_view#-installing-tab-) package in your Flutter project.
- Paste ```map_view: ^0.x.x``` under ```dependencies``` in **pubspec.yaml** file.
- Run ```flutter packages get``` to install packages from the command line.

## Step 3: iOS Setup
1. Set the `NSLocationWhenInUseUsageDescription` (code below) in ios/Runner/Info.plist

```
    <key>NSLocationWhenInUseUsageDescription</key>
    <string>Using location to display on a map</string>
```
It should look something like this.    
```
        ...
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationPortraitUpsideDown</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>UIViewControllerBasedStatusBarAppearance</key>
	<false/>
	<key>NSLocationWhenInUseUsageDescription</key>
        <string>Using location to display on a map</string>
</dict>
</plist>
```

2. Run the sample code.
    - Replace your **main.dart** with [these code](https://github.com/ZhipengMei/Flutter_library/blob/master/googlemap/lib/main.dart).
    - Add [staticmap.dart](https://github.com/ZhipengMei/Flutter_library/blob/master/googlemap/lib/staticmap.dart) to **lib** folder.
        - I had written **staticmap.dart** extends a file from [map_view/static_map_provider.dart](https://github.com/apptreesoftware/flutter_google_map_view/blob/master/lib/static_map_provider.dart) to provide a stable static map request.
        - Ignore it if you don't need a static map feature in your app.
3. Save everything & run the Flutter app on simulator or iPhone. 

# Step 4: Android Setup

1. Navigate to the `AndroidManifest.xml` in `android/app/src/main`.
   - Paste the following uses-permission in the .xml file.
```
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```                
It should look something like this:
```
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.googlemap">

    <!-- The INTERNET permission is required for development. Specifically,
         flutter needs it to communicate with the running application
         to allow setting breakpoints, to provide hot reload, etc.
    -->
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```

2. In your `AndroidManifest.xml`, add the following lines inside of the application tag. Also replace `your_api_key` with the one you generated in `step 1`.
```
<meta-data android:name="com.google.android.maps.v2.API_KEY" android:value="your_api_key"/>
<meta-data android:name="com.google.android.gms.version" android:value="@integer/google_play_services_version"/>
```
It should look something like this:
```
    <application
        android:name="io.flutter.app.FlutterApplication"
        android:label="googlemap"
        android:icon="@mipmap/ic_launcher">
        <meta-data android:name="com.google.android.maps.v2.API_KEY" android:value="your_api_key"/>
        <meta-data android:name="com.google.android.gms.version" android:value="@integer/google_play_services_version"/>
        <activity
```       

3. Add the MapActivity to your AndroidManifest.xml
```
<activity android:name="com.apptreesoftware.mapview.MapActivity" android:theme="@style/Theme.AppCompat.Light.DarkActionBar"/>
```

It should look something like this:

```
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <activity android:name="com.apptreesoftware.mapview.MapActivity" android:theme="@style/Theme.AppCompat.Light.DarkActionBar"/>
    </application>
</manifest>
```

4. In your android/build.gradle file. Under buildScript dependencies add:
```
classpath 'org.jetbrains.kotlin:kotlin-gradle-plugin:1.1.2-4'
```

It should look something like this:
```
buildscript {
    repositories {
        google()
        jcenter()
    }

    dependencies {
        classpath 'com.android.tools.build:gradle:3.1.2'
        classpath 'org.jetbrains.kotlin:kotlin-gradle-plugin:1.1.2-4'
    }
}
```
5. Save everything & run the Flutter app on emulator or android phone.

## That's it

You have successfully integrated Google Map into your Flutter App. Great job !!! 🍢 🍡 🥚 🍞 🍩 🍮 🍦 🍨 🍧 🎂 

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
