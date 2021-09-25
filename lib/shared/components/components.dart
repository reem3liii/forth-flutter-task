import 'package:flutter/material.dart';

Widget defaultFormField ({
  required String lable,
  required TextInputType type,
  required TextEditingController controller,
  required Icon prefix,
  required String? Function(String?)? function,
  Icon? suffix,
  bool isPassword = false,
}) => TextFormField(
  keyboardType: type,
  controller: controller ,
  obscureText: isPassword,
  validator: function,
  decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white70,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    prefixIcon: prefix,
    suffixIcon: suffix,
    labelText: lable,
  ),
);

Widget defaultButton ({
  required String lable,
  required void Function()? onPress,
  double width = double.infinity,
  Color background = Colors.blue,
  double radius = 15,
  double lableSize = 16,
  Color lableColor = Colors.white,

}) => Container(
width: width,
height: 40,
decoration: BoxDecoration(
color: background,
borderRadius: BorderRadiusDirectional.all(
Radius.circular(radius),
),
),
child: TextButton(
onPressed: onPress,
child: Text(
lable,
style: TextStyle(
fontSize: lableSize,
color: lableColor,
),
),
),
);