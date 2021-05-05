import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
class PasswordTextField extends StatefulWidget {
  final con;
  PasswordTextField(this.con);
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _passwordVisible=false;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        
        keyboardType: TextInputType.text,
        controller: widget.con,
        obscureText: !_passwordVisible,//This will obscure text dynamically
        decoration: InputDecoration(

          // Here is key idea
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );;
  }
}
