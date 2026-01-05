class AppException implements Exception {
  final dynamic _message;
  final dynamic _profile;
  AppException([
    this._message,
    this._profile,
  ]);
  @override
  String toString() {
    return "$_profile $_message";
  }
}

class InternetException extends AppException {
  InternetException({String? message}) : super(message, 'No internet');
}

class RequestTimeOut extends AppException {
  RequestTimeOut({String? message}) : super(message, "Request Time out");
}
class InvalidUrlException extends AppException {
  InvalidUrlException({String? message}) : super(message, "");
}
class FetchDataException extends AppException {
  FetchDataException({String? message}) : super(message,"");
}
