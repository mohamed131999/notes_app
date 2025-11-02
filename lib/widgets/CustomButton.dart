import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap});
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(
          context,
        ).size.width, // دى علشان ياخد عرض شاشة المتاح ليه
        decoration: BoxDecoration(
          color: kprimarycolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
