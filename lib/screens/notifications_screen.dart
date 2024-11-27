import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import './details_noti.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<bool> isReadList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Thông báo",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF11192E),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset("assets/tick.png"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: isReadList.length,
              itemBuilder: (context, index) {
                return Slidable(
                  key: ValueKey(index),
                  endActionPane: ActionPane(
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          setState(() {
                            isReadList[index] = true;
                          });
                        },
                        backgroundColor: Color(0xFFF3F4F7), // Màu nền nút "Tắt"
                        foregroundColor: Color(0xFF666D7C), // Màu icon "Tắt"
                        icon: Icons.notifications_off,
                        // Để kiểm soát kích thước icon, sử dụng BoxIcon
                        // Tuy nhiên, bạn không thể điều chỉnh kích thước ở đây
                      ),
                      SlidableAction(
                        onPressed: (context) {
                          setState(() {
                            isReadList.removeAt(index);
                          });
                        },
                        backgroundColor: const Color.fromARGB(255, 238, 35, 21), // Màu nền nút "Xóa"
                        foregroundColor: Colors.white, // Màu icon "Xóa"
                        icon: Icons.delete,
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsNotificationScreen(),
                        ),
                      );
                      setState(() {
                        isReadList[index] = true;
                      });
                    },
                    child: Container(
                      width: 450,
                      constraints: BoxConstraints(
                        minHeight: 88,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      decoration: BoxDecoration(
                        color: isReadList[index] ? Colors.white : Color(0xFFECF4FF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: _buildNotificationRow(index),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationRow(int index) {
    if (index == 0) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xfffdda23), Color(0xffffac00)],
              ),
            ),
            child: Image.asset("assets/news.png"),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FTEL cho toàn bộ nhân viên WFH",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: isReadList[index] ? FontWeight.w500 : FontWeight.w700,
                    color: Color(0xFF262B35),
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the....",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF707581),
                  ),
                ),
                Text(
                  "08.07.2021   15:35",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A4AF),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else if (index == 1) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff61abf8), Color(0xff408df7)],
              ),
            ),
            child: Image.asset("assets/customer-noti.png"),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "HD998975",
                        style: TextStyle(
                          color: Color(0xFF3477F5),
                          fontSize: 14,
                          fontWeight: isReadList[index] ? FontWeight.w500 : FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: " là khách hàng tiềm năng",
                        style: TextStyle(
                          color: Color(0xFF262B35),
                          fontSize: 14,
                          fontWeight: isReadList[index] ? FontWeight.w500 : FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the....",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF707581),
                  ),
                ),
                Text(
                  "08.07.2021   15:35",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A4AF),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff32ea97), Color(0xff00b965)],
              ),
            ),
            child: Image.asset("assets/payment.png"),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "HNH838475",
                        style: TextStyle(
                          color: Color(0xFF00D172),
                          fontSize: 14,
                          fontWeight: isReadList[index] ? FontWeight.w500 : FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: " đã thanh toán",
                        style: TextStyle(
                          color: Color(0xFF262B35),
                          fontSize: 14,
                          fontWeight: isReadList[index] ? FontWeight.w500 : FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the....",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF707581),
                  ),
                ),
                Text(
                  "08.07.2021   15:35",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A4AF),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
