class Weather{
  final String cityName;
  final double tempearature;
  final String mainCondition;

  Weather({
    required this.cityName, 
    required this.tempearature, 
    required this.mainCondition
    });

  factory Weather.fromJson(Map<String, dynamic> json)
  {
    return Weather(
      cityName: json['name'], 
      tempearature: json['name']['temp'].double(), 
      mainCondition: json['weather'][0]['main'],
      );
  }
}