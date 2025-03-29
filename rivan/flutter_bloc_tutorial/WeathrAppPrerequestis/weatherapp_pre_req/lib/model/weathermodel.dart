// // In Dart, when you try to print an object (like weather1), Dart will automatically call the toString() method on that object to convert it into a human-readable string format.
// class WeatherModel {
//   final double currentTemp;
//   final String currentSky;
//   final double currentPressure;
//   final double currentWindSpeed;
//   final double currentHumidity;

//   WeatherModel({
//     required this.currentTemp,
//     required this.currentSky,
//     required this.currentPressure,
//     required this.currentWindSpeed,
//     required this.currentHumidity,
//   });

//   // The copyWith function allows creating a copy of the object with modified properties
//   WeatherModel copyWith({
//     double? currentTemp,
//     String? currentSky,
//     double? currentPressure,
//     double? currentWindSpeed,
//     double? currentHumidity,
//   }) {
//     return WeatherModel(
//       currentTemp: currentTemp ?? this.currentTemp,
//       currentSky: currentSky ?? this.currentSky,
//       currentPressure: currentPressure ?? this.currentPressure,
//       currentWindSpeed: currentWindSpeed ?? this.currentWindSpeed,
//       currentHumidity: currentHumidity ?? this.currentHumidity,
//     );
//   }

//   @override
//   String toString() {
//     // TODO: implement toString
//     return 'WeatherModel(currentTemp: $currentTemp, currentSky: $currentSky, currentPressure: $currentPressure, currentWindSpeed: $currentWindSpeed, currentHumidity: $currentHumidity)';
//   }
// }

// class Weathermodel {
//   final String temp;
//   final String humidity;
//   final String israny;
//   Weathermodel({
//     required this.temp,
//     required this.humidity,
//     required this.israny,
//   });

//   Weathermodel copywith({String? temp, String? humidity, String? israny}) {
//     return Weathermodel(
//       temp: temp ?? this.temp,
//       humidity: humidity ?? this.humidity,
//       israny: israny ?? this.israny,
//     );
//   }

//   @override
//   String toString() {
//     return "temp : $temp humidity : $humidity rainy : $israny";
//   }
// }

// class Weathermodel {
//   final String Weather;
//   final String humidity;
//   Weathermodel({required this.Weather, required this.humidity});

//   Weathermodel copywith({String? Weather, String? humidity}) {
//     return Weathermodel(
//       Weather: Weather ?? this.Weather,
//       humidity: humidity ?? this.humidity,
//     );
//   }
// }

class Weathermodel {
  final String Weather;
  final String humidity;
  Weathermodel({required this.Weather, required this.humidity});

  Weathermodel copywith({String? Weather, String? humidity}) {
    return Weathermodel(
      Weather: Weather ?? this.Weather,
      humidity: humidity ?? this.humidity,
    );
  }

  Map<String, dynamic> tomap() {
    return {'Weather': Weather, 'Humidity': humidity};
  }

  factory Weathermodel.fromjson(Map<String, dynamic> map) {
    return Weathermodel(Weather: map['Weather'], humidity: map['humidity']);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "weather : $Weather humidity : $humidity";
  }
}
