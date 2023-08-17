import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:get/get.dart';
import '../utils/strings.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'my_claim_myclaim_page.dart';
import 'my_plan_claim_health_card.dart';
import 'my_plan_claim_myplan.dart';

class MyClaimDetailScreen extends StatefulWidget {
  MyClaimDetailScreen({Key? key}) : super(key: key);

  @override
  State<MyClaimDetailScreen> createState() => _MyClaimDetailScreenState();
}

class _MyClaimDetailScreenState extends State<MyClaimDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.sp),
            child: const CommonAppBar(screenName: Strings.myPlans, showBackButton: true,showHomeIcon: true,)),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.sp),
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.sp),
                          child: TabBar(
                            controller: tabController,
                            labelColor: whiteColor,
                            unselectedLabelColor: secondaryTextColor,
                            indicatorColor: secondaryTextColor,
                            indicator: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            tabs: [
                              Tab(
                                child: Text(
                                  "HEALTH CARD",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Avenir-Medium'),
                                ),
                              ),
                              Tab(
                                child: Text("MY PLAN",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: 'Avenir-Medium')),
                              ),
                              Tab(
                                child: Text("MY CLAIM",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: 'Avenir-Medium')),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: TabBarView(
                    controller: tabController,
                    children: [
                      MyPlanHealthCard(controller: controller,),
                      const MyPlanClaimMyPlan(),
                      MyPlanClaimMyClaimPage(controller: controller,)
                    ],
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
