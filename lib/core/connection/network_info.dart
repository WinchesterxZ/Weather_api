import 'package:data_connection_checker_tv/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool>? isConnected;
}

class NetworkInfoImpl extends NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl({required this.connectionChecker});

  @override
  Future<bool>? get isConnected =>  connectionChecker.hasConnection;
  
}
