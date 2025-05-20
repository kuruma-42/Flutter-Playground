import 'error.dart';

enum NetworkError implements Error {
  noInternetConnection,
  serverError,
  timeout,
  unknown,
  invalidRequest,
  invalidResponse,
}
