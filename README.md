## Get Started
1. Get [flutter](https://flutter.dev/docs/get-started/install/macos) set up
2. Run flutter doctor and ensure that you have all the dependencies installed for android and ios
  - xcode
  - java & gradle

## Setup
### Populate the values in the fields of the following files:
1.  `flutter/android/key.properties`:
```
// TODO: Fill out location for keys
  storeFile=
```
2. `flutter/lib/utils/constants.dart`:
```
// TODO: Fill out these fields
static const String appName = "";

// leapos api endpoint
static const String API_HOST = "";

// leap.consumer_key
static const String CONSUMER_KEY = "";

//leap.bank_id
static const String BANK_ID = "";
```

3. `flutter/lib/ui/page/login/login_card.dart`:
```
// TODO: fill out these fields

// leap.username
username = "";

//leap.password
pass = "";
```

## Run
```
flutter run
```

## Connect flutter application to a running local instance
### Mac
1. Get ip address of computer
```
ifconfig | grep inet
```
2. Your IP address is on the last line of the results
```
  // Example result
	inet **192.168.8.100** netmask 0xffffff00 broadcast 192.168.8.255
```
3. Add it to the `API_HOST` field in `flutter/lib/utils/constants.dart`:
```
  static const String API_HOST = "http://192.168.8.100:8080/";
```
