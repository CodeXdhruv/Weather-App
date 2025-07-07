# Weather App

A comprehensive Flutter weather application that provides real-time weather information with location-based services and global city search functionality.

**Created by: Dhruv**

## Features

### 🌤️ Core Weather Features
- **Current Location Weather**: Automatically fetches weather data based on user's GPS location
- **Global City Search**: Search and view weather information for any city worldwide
- **Detailed Weather Analysis**: Comprehensive 1-day weather breakdown including:
  - Current temperature with "feels like" temperature
  - Weather conditions with descriptive icons
  - Humidity levels
  - Wind speed and direction
  - Atmospheric pressure
  - Visibility range
  - UV Index information
  - Sunrise and sunset times

### 🔐 Authentication
- **Login Screen**: Secure login functionality using dummy API (ReqRes.in)
- **Success/Failure States**: Proper handling of authentication states
- **Form Validation**: Input validation for email and password fields

### 🎨 User Experience
- **Loading States**: Beautiful loading animations while fetching data
- **Error Handling**: Comprehensive error states with retry functionality
- **Responsive Design**: Clean, modern UI that works across different screen sizes
- **Real-time Updates**: Fresh weather data with manual refresh capability

## API Integration

### Weather Data
- **API Provider**: [OpenWeatherMap API](https://openweathermap.org/api)
- **Endpoint**: Current Weather Data API
- **Features Used**:
  - Current weather conditions
  - Geographic coordinates lookup
  - City name search
  - Detailed weather parameters

### Authentication
- **API Provider**: [ReqRes.in](https://reqres.in)
- **Endpoint**: Login API for demonstration purposes
- **Purpose**: Showcasing proper API integration with success/failure handling

## Technical Implementation

### Dependencies
- `http`: For API requests and network operations
- `geolocator`: For GPS location services and permissions
- `permission_handler`: For handling location permissions
- `flutter/material.dart`: For UI components and Material Design

### Architecture
- **Service Layer**: Separate services for weather data and location handling
- **Model Classes**: Structured data models for weather information
- **State Management**: Efficient state handling with StatefulWidget
- **Error Boundaries**: Proper error handling and user feedback

### Permissions
- **Location Access**: Required for automatic location-based weather
- **Network Access**: For API calls and data fetching

## Getting Started

### Prerequisites
- Flutter SDK (Latest stable version)
- Android Studio / VS Code with Flutter extensions
- OpenWeatherMap API key (free registration required)

### Installation
1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Get your free API key from [OpenWeatherMap](https://openweathermap.org/api)
4. Replace the API key in `lib/services/weather_service.dart`
5. Run the app using `flutter run`

### API Key Setup
```dart
// In lib/services/weather_service.dart
static const String _apiKey = 'YOUR_API_KEY_HERE';
```

## App Screens

### 1. Login Screen
- Email and password input fields
- Login button with loading state
- Success/failure message handling
- Navigation to weather screen on successful login

### 2. Weather Home Screen
- Current location weather display
- Search bar for global city lookup
- Detailed weather information cards
- Refresh functionality
- Error states with retry options

## Development Notes

This project demonstrates:
- Modern Flutter development practices
- RESTful API integration
- Location services implementation
- State management patterns
- Error handling strategies
- Responsive UI design
- Cross-platform compatibility

## Future Enhancements
- 7-day weather forecast
- Weather alerts and notifications
- Multiple location bookmarks
- Weather history and trends
- Dark/Light theme support
- Weather map integration

---

**Created by Dhruv** | Weather data provided by OpenWeatherMap API
