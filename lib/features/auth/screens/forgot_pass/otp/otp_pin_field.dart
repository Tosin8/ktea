import 'package:flutter/material.dart';




class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode; 
  late FocusNode pin3FocusNode; 
  late FocusNode pin4FocusNode; 

  @override
  void initState() {
    
    super.initState();

    pin2FocusNode = FocusNode(); 
    pin3FocusNode = FocusNode(); 
    pin4FocusNode = FocusNode(); 
  }


@override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose(); 
    pin4FocusNode.dispose(); 
    
    super.dispose();
  }

void nextField({required String value, required FocusNode focusNode}) {
  if (value.length == 1) {
    focusNode.requestFocus();
  }
}

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding( 
        padding: const EdgeInsets.only(left: 20, right: 20), 
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60, 
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24), 
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), 
                        borderSide: const BorderSide(
                          color: Colors.orange)),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black))
                      ),
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin2FocusNode);
                      },
                      ),
                ), 
                SizedBox(
                  width: 60, 
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    keyboardType: TextInputType.number,
                     textInputAction: TextInputAction.next,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24), 
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), 
                        borderSide: const BorderSide(
                          color: Colors.orange)),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black))
                      ),
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin3FocusNode);
                      },
                      ),
                ), 
                SizedBox(
                  width: 60, 
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    keyboardType: TextInputType.number,
                     textInputAction: TextInputAction.next,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24), 
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), 
                        borderSide: const BorderSide(
                          color: Colors.orange)),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black))
                      ),
                      onChanged: (value) {
                        nextField(value: value, focusNode: pin4FocusNode);
                      },
                      ),
                ), 
                SizedBox(
                  width: 60, 
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    keyboardType: TextInputType.number,
                     textInputAction: TextInputAction.done, 
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24), 
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), 
                        borderSide: const BorderSide(
                          color: Colors.orange)),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black))
                      ),
                      onChanged: (value) {
                        pin4FocusNode.unfocus();
                      },
                      ),
                )
              ],
            ),
          
          ],
        ),
      ),
    );
  }
}