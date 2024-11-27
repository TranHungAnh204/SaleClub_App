import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saleclub/widgets/construction_oder_widget2.dart';
import '../view_models/home_view_model.dart';
import '../widgets/user_info_widget.dart';
import '../widgets/banner_widget.dart';
import '../widgets/service_grid_widget.dart';
import '../widgets/progress_widget2.dart'; 


class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
        ),
        body: SingleChildScrollView(
          child: Consumer<HomeViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserInfoWidget(),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  BannerWidget(viewModel: viewModel),
                  SizedBox(height: 10),
                  ServiceGridWidget(viewModel: viewModel),
                  _buildBottomLine(),
                   ProgressWidget2(), 
                  SizedBox(height: 15),
                  ConstructionOrderWidget2(),  
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBottomLine() {
    return Container(
      width: double.infinity,
      height: 6,
      decoration: BoxDecoration(
        color: Color(0xfff1f1f1),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}
