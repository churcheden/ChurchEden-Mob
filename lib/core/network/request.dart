abstract class Request{
  final String baseUrl;
  final String endPoint;
  final HttpMethod method;
  final dynamic Function(dynamic)decoder;

 Request({

required this.baseUrl, required this.endPoint, required this.method, required this.decoder});


}

enum HttpMethod { get, post, put, delete }
