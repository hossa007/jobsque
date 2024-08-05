import 'package:dio/dio.dart';

class DioHelper{
  static final _dio = Dio(
    BaseOptions(
      baseUrl: "https://project2.amit-learning.com/api",
      // headers: {
      //   "Accept":"application/json"
      // }
    )
  );
 static Future<CustomResponse>get(String path)async{
try{
   final response = await _dio.get(path);
  return CustomResponse(isSuccess: true,data: response.data);

}on DioException catch(ex){
return CustomResponse(isSuccess: false,message: ex.type.name);
}
  }
 static Future <CustomResponse> send(String path, {Map<String, dynamic>?data})async{
   try{
     final response = await _dio.post(path,data: data);
     print(response.data);
     return CustomResponse(isSuccess: true,data: response.data);

   }on DioException catch(ex){
     print(ex.response);
     final msg = ex.response?.data["massege"]as Map;
     msg.forEach((dynamic, element) {
       print("*****");
       print(element);

     });
     print(msg);
     return CustomResponse(isSuccess: false,message:msg?.toString() ?? ex.type.name);
   }
 }

}
class CustomResponse{
  final bool isSuccess;
  final data;
  final String? message;
  CustomResponse({required this.isSuccess, this.data, this.message,});
}