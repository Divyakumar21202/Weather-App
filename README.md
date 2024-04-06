# Weather App :

This is a simple weather app created in Flutter that allows you to check the current weather. The app fetches weather data from a provided API and displays it in a user-friendly interface.

## ScreenShots :
<img src="https://github.com/Divyakumar21202/Weather-App/assets/124331485/ea4331e4-9d92-4176-b021-95a8052de1de" width="200" height="500">
<img src="https://github.com/Divyakumar21202/Weather-App/assets/124331485/d8dea1a0-b87b-4601-9633-ebb625206dac" width="200" height="500">
<img src="https://github.com/Divyakumar21202/Weather-App/assets/124331485/669b0783-5a23-46ba-8e72-729dc2d65fd3" width="200" height="500">

## Getting Started

To use this weather app, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/Divyakumar21202/Weather-App
   ```

2. Open the project in your preferred Flutter development environment.

3. Make sure to set up your API key:
   - Replace `'ht'` with your own API key in the `getCurrentWeather()` function within the `HomePage` class.

4. Install the required dependencies using:

   ```bash
   flutter pub get
   ```

5. Run the app on an emulator or physical device:

   ```bash
   flutter run
   ```
   

## Features

- **Current Weather:** The app displays the current temperature, weather condition, and a cloud icon.

- **Additional Information:** The app also provides additional weather information such as humidity, wind speed, and pressure.

## App Structure

- **HomePage:** This is the main page of the app, displaying the current weather. It fetches weather data from the API and uses a `FutureBuilder` to display the data once it's loaded.

- **AdditionalInfoData:** Additional information like humidity, wind speed, and pressure is displayed using `AdditionalWidgetData` widgets.

## Note

- Ensure that you have an internet connection to fetch weather data from the API.

- This code is just a starting point and may require customization for your specific use case, including choosing a suitable weather API and handling the retrieved data.

- Don't forget to replace the placeholder API key for the weather service with your own valid key.

Feel free to modify and expand upon this weather app according to your requirements and preferences. Happy coding!🧑‍💻🧑‍💻🧑‍💻

<div align="center">
    <img src="https://github.com/Divyakumar21202/Weather-App/assets/124331485/91a92674-762c-46fc-9178-31f964b09b61" alt="ThisCodeWillOneHundredPercentHelpYouJustinMitchelGIF" style="max-width: 100%; height: auto;">
</div>
