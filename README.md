
# Notification App

This is a Flutter app that integrates Firebase for notifaction services. The app is designed to handle notifications and showcase different functionalities related to Firebase services.

## Features

- **Firebase Integration**: Uses Firebase services for notifications and real-time data management.
- **Notifications**: Users can receive and view notification.
  
## Project Structure

- **`firebase_service.dart`**: Manages Firebase services for notifications.
- **`home_page.dart`**: The main landing page of the application.
- **`notif_page.dart`**: Displays the notifications fetched from Firebase.

## Setup Instructions

1. **Prerequisites**:
   - Install Flutter SDK: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
   - Set up Firebase for your Flutter project: [Firebase Flutter Setup](https://firebase.flutter.dev/docs/overview)
   - Ensure Dart is installed and set up properly.

2. **Cloning the Repository**:

   ```bash
   git clone https://github.com/damooola/notification-app.git
   cd notification-app
   ```

3. **Install Dependencies**:
   Navigate to the project directory and install all necessary dependencies:

   ```bash
   flutter pub get
   ```

4. **Run the App**:

   ```bash
   flutter run
   ```

## Usage

- After successful setup, the app will allow users to interact with the notification.
- Use the notification page (`notif_page.dart`) to view notifications pushed via Firebase.

## Dependencies

- `firebase_core`: Core library for Firebase services.
- `firebase_messaging`: Handles Firebase Cloud Messaging (FCM) for notifications.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for bug reports and feature requests.
