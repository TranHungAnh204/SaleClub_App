import 'package:flutter/material.dart';
import '../view_models/home_view_model.dart';

class BannerWidget extends StatelessWidget {
  final HomeViewModel viewModel;

  const BannerWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 343,
          height: 128.625,
          child: PageView(
            controller: viewModel.pageController,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/banner.png', fit: BoxFit.cover),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/banner.png', fit: BoxFit.cover),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 25,
            height: 5,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: 25,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Positioned(
                  left: viewModel.currentPage * 12.5,
                  child: Container(
                    width: 12.5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
