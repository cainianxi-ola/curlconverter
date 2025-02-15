import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse('http://localhost:28139/house-sitting/?page=1&available=&available=1&location=0&city%5Bid%5D=0&city%5Blocality%5D=&city%5Blocality_text%5D=&city%5Badministrative_area_level_2%5D=&city%5Badministrative_area_level_2_text%5D=&city%5Badministrative_area_level_1%5D=&city%5Badministrative_area_level_1_text%5D=&city%5Bcountry%5D=&city%5Bcountry_text%5D=&city%5Blatitude%5D=&city%5Blongitude%5D=&city%5Bzoom%5D=&city%5Bname%5D=&region%5Bid%5D=0&region%5Blocality%5D=&region%5Blocality_text%5D=&region%5Badministrative_area_level_2%5D=&region%5Badministrative_area_level_2_text%5D=&region%5Badministrative_area_level_1%5D=&region%5Badministrative_area_level_1_text%5D=&region%5Bcountry%5D=&region%5Bcountry_text%5D=&region%5Blatitude%5D=&region%5Blongitude%5D=&region%5Bzoom%5D=&region%5Bname%5D=&country=&environment=&population=&period=0&date=2017-03-03&datestart=2017-03-03&dateend=2017-06-24&season=&duration=&isfd=&stopover=');
  var res = await http.get(url);
  if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  print(res.body);
}
