class DeviceModel {
  static const ID = 'id'; 
  static const NAME = 'name'; 
  static const TOKEN = 'token'; 
  static const LOCATION = 'location'; 


  final String id; 
  final String name; 
  final String os; 
  final String token; 
  final Map location;

  DeviceModel({required this.id, required this.name, required this.os, required this.token, required this.location}); 
  
  }