import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton ({
    double width = double.infinity,
   Color background =Colors.blue,
  required VoidCallback function,
  required String text,
})=>Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: function,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),)
    ,),
);


/***********************************/

Widget defaultFormField({
  bool isPassword=false,
 required TextEditingController controller,
  required TextInputType type,
  Function? onChange,
  required FormFieldValidator validate,
  required String label,
  required Widget prefix,
   Widget? suffix,

})=>
    TextFormField(
      validator: validate,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText:label,
        prefixIcon: prefix,
        suffixIcon: suffix,
        border: OutlineInputBorder(),
      ),

    );
