# Get Started
1. Install [flutter]https://flutter.dev/docs/get-started/install/macos
2. Run flutter doctor and ensure that you have all the dependencies installed:
  - xcode
  - java
3. `cd flutter`
4. `flutter run`

# Setup
## Populate the values in the fields of the following files:
1.  `flutter/android/key.properties`:
```
//TODO: Fill out location for keys
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
