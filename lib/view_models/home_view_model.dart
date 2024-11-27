import 'dart:async';
import 'package:flutter/material.dart';
import 'package:saleclub/screens/all_services_screen.dart';
import '../models/service_model.dart';

class HomeViewModel extends ChangeNotifier {
  bool _isMoneyVisible = true;
  int _currentPage = 0;
  late PageController _pageController;
  Timer? _timer;

  // Dữ liệu danh sách dịch vụ
  List<ServiceModel> services = [
    ServiceModel(icon: 'assets/donhang.png', label: 'Đơn hàng'),
    ServiceModel(icon: 'assets/nhanvattu.png', label: 'Nhận vật tư'),
    ServiceModel(icon: 'assets/trienkhai.png', label: 'Triển khai'),
    ServiceModel(icon: 'assets/tapdiem.png', label: 'Tập điểm'),
    ServiceModel(icon: 'assets/foxhelp.png', label: 'FOXHelpi'),
    ServiceModel(icon: 'assets/quanlyDTKD.png', label: 'Quản lý\nĐTKD'),
    ServiceModel(icon: 'assets/baocao.png', label: 'Báo cáo'),
    ServiceModel(icon: 'assets/tatcadichvu.png', label: 'Tất cả dịch vụ'),
  ];

  HomeViewModel() {
    _pageController = PageController();
    _startBannerTimer();
  }

  bool get isMoneyVisible => _isMoneyVisible;
  int get currentPage => _currentPage;
  PageController get pageController => _pageController;

  void toggleMoneyVisibility() {
    _isMoneyVisible = !_isMoneyVisible;
    notifyListeners();
  }

  void navigateToAllServices(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AllServicesScreen()),
  );
}


  void _startBannerTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }
}
