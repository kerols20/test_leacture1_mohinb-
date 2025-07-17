import 'package:flutter/material.dart';
import 'package:test_laecture1_monib/di.dart';

import 'Home_ViweModel.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   Home_viweModel home_viweModel = getIt.get<Home_viweModel>();
  @override
  Widget build(BuildContext context) {
    home_viweModel.gatCategory();
    return Scaffold(

    );
  }
}
