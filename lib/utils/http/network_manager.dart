import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../loaders/loaders.dart';



class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;


  /// initiaze the  netowrk manager and set up a stream to continually check the connection status. 
  /// 
  @override 
  void onInit() {
    super.onInit(); 
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus); 
    }

    ///Update the connection status used on changes in connectivity and show a reelevant popup for an internet connection. 
    
    Future<void> _updateConnectionStatus(ConnectivityResult result) async {
      _connectionStatus.value = result;
      if(_connectionStatus.value == ConnectivityResult.none) {
        Loaders.warningSnackBar(title: 'No Internet Connection'); 
      }
    }

    ///Get the current connection status
    ///Return true if conntected , false'  otherwise. 
    ///
    Future<bool> isConnected() async {
      try {
        final result = await _connectivity.checkConnectivity();
        if (result == ConnectivityResult.none) { 
          return false; 
          
        } else {
          return true;
        }
      } on PlatformException catch (_) {
        return false; 
        
      }
    }

    ///dispose or closse the active conntectivity stream
  @override 
  void onClose() {
    super.onClose(); 
    _connectivitySubscription.cancel(); 
  }
}