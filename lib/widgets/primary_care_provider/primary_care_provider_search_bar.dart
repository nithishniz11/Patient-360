import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../utils/routes/routes_strings.dart';
import '../../utils/text_style.dart';

class PrimaryCareProviderSearchBar extends StatelessWidget {
  const PrimaryCareProviderSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return SizedBox(
      // height: 40.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child:
        TextField(
          controller: search,
          onSubmitted: (value) {

            Get.toNamed(RoutesConstants.primaryCareProviderSearch,
                arguments: [search.text]);
          },
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 20.sp,
            ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(20.sp),
            // ),
            border: InputBorder.none,
            filled: true,
            hintText: "Search for doctors, departments",
            hintStyle: size12Regular(),
          ),
        ),
      ),
    );
  }
}
