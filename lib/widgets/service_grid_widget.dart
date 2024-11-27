import 'package:flutter/material.dart';
import '../view_models/home_view_model.dart';
import '../widgets/service_button.dart';
import '../screens/all_services_screen.dart';

class ServiceGridWidget extends StatelessWidget {
  final HomeViewModel viewModel;

  const ServiceGridWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 1.0,
      children: viewModel.services.map((service) {
        return ServiceButton(
          icon: service.icon,
          label: service.label,
          onTap: () {
            if (service.label == 'Tất cả\ndịch vụ') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllServicesScreen()),
              );
            } 
          },
        );
      }).toList(),
    );
  }
}
