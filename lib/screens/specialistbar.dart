import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SpecialistAppbar extends StatelessWidget {
  const SpecialistAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,


      leading: Container(
        padding: const EdgeInsets.all(10),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 25,
          color: const Color(0xff288BEE),
          onPressed: () {},
        ),

      ),


      title: Container(
        padding: const EdgeInsets.all(15),
        child:
        Text(
          "Primary Care Provider",
          style: TextStyle(
            fontSize: 21.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),),

      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          child:
          IconButton(
            icon: const Icon(Icons.home_outlined),
            iconSize: 25,
            color: const Color(0xff288BEE),
            onPressed: () {},),

        ),],



    );
  }
}
