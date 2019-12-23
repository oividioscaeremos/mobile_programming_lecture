class Coord {
  int _lon;
  int _lat;

  Coord({int lon, int lat}) {
    this._lon = lon;
    this._lat = lat;
  }

  int get lon => _lon;
  set lon(int lon) => _lon = lon;
  int get lat => _lat;
  set lat(int lat) => _lat = lat;

  Coord.fromJson(Map<String, dynamic> json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lon'] = this._lon;
    data['lat'] = this._lat;
    return data;
  }
}
