import 'package:connectivity/connectivity.dart';

Future<ConnectivityResult> getConnectionStatus() async {
  var result = await (Connectivity().checkConnectivity());
  return result;
}

/*var wifiBSSID = await (Connectivity().getWifiBSSID());
var wifiIP = await (Connectivity().getWifiIP());
var wifiName = await (Connectivity().getWifiName());*/
