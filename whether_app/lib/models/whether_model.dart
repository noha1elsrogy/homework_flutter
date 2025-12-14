class WhetherModel {
  final String maxTemp;
  final String minTemp;
  final String avgTemp;
  final String wheherStatus;
  final String icon;

  WhetherModel(
      {required this.maxTemp,
      required this.minTemp,
      required this.avgTemp,
      required this.wheherStatus,
      required this.icon});
}

class WhetherManger {
  String addNameCountry(String country) {
    String nameCountry = country;
    return nameCountry;
  }

  getWhetherMaxtTemp(String countryName) {}
}
