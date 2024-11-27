import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/home_view_model.dart';
import '../widgets/user_info_widget.dart';
import '../widgets/money_info_widget.dart';
import '../widgets/banner_widget.dart';
import '../widgets/service_grid_widget.dart';
import '../widgets/progress_widget.dart';
import '../widgets/construction_oder_widget.dart'; // Thêm dòng import này

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
        ),
        body: SafeArea( // Add SafeArea widget here
          child: SingleChildScrollView(
            child: Consumer<HomeViewModel>(
              builder: (context, viewModel, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserInfoWidget(),
                    SizedBox(height: 10),
                    MoneyInfoWidget(viewModel: viewModel),
                    SizedBox(height: 10),
                    BannerWidget(viewModel: viewModel),
                    SizedBox(height: 10),
                    ServiceGridWidget(viewModel: viewModel),
                    _buildBottomLine(),
                    ProgressWidget(),
                    SizedBox(height: 15),
                    ConstructionOrderWidget(),
                  ],
                );
              },
            ),
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