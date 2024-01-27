class PaymentsModel{
  static const ID = 'id'; 
   static const PAYMENT_ID = 'paymentId'; 
    static const CART = 'cart'; 
     static const AMOUNT = 'amount';  
     static const STATUS = 'status'; 
      static const CREATED_AT = 'createdAt';  


      late String id; 
      late String paymentId; 
     late String status; 
      late String amount; 
      late String createdAt; 
      late List cart; 
      PaymentsModel({required this.id, required this.paymentId, required this.status, required this.amount, required this.createdAt, required this.cart});

      PaymentsModel.fromMap(Map data){
        id = data[ID];
        paymentId = data[PAYMENT_ID];
        status = data[STATUS];
        amount = data[AMOUNT];
        createdAt = data[CREATED_AT];
        cart = data[CART];
      }
     
}