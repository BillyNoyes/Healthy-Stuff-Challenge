import 'package:http/http.dart';
import 'dart:convert';

class ApiCall {

  final String postsUrl = "http://www.healthystuff.com/junior-app-challenge.php";
  String allergyName; // Name of the item being tested for
  int reactionPercentage; // The reaction percentage
  String infoText; // Text description of food

  ApiCall();

  Future<void> getData() async {
    try{
      // Make request to API
      Response response = await get(postsUrl);
      Map<String, dynamic> data = jsonDecode(response.body);
      data = data['allergy_results'];
      for (var allergy in data.keys) {
        allergyName = allergy;
        reactionPercentage = data[allergy]['reaction_percentage'];
        infoText = data[allergy]['info_text'];
      }
    }
    catch (e) {
      print(e);
      allergyName = "Could not retrieve data";
      reactionPercentage = 0;
      infoText = "Could not retrieve data";
    }

  }

}
