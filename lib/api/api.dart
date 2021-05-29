import 'dart:convert';

import 'package:my_app/model/treeModel.dart';
import 'package:my_app/tree_response.dart';
import 'package:http/http.dart' as http;

class ApiProvider{

     final String _endpoint = "/graphql";
final baseUrl = 'http://localhost:4000';

 
  Future<TreeResponse> createTree(Tree tree) async {
   var test = jsonEncode({
                       "name" : tree.name, 
                       "category" : tree.category, 
                       "plant_url" : tree.plant_url, 
                       "is_indoor" : tree.is_indoor, 
                       "lifespan" : tree.lifespan, 
                       "max_height" : tree.max_height
                      
                     });


     try {
      http.Response  response = await http.post(Uri.https(baseUrl, _endpoint),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
       // 'Authorization': token
      }, 
      body: test
    );
    print("here req");
      print(response.body);
       if (response.statusCode == 200 || response.statusCode == 400) {
         print(response.body.toString());
          return TreeResponse.tree(tree) ;
       }
     
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return TreeResponse.withError("$error");
    }  
  }
}