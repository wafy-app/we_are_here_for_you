import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.red,
              height: appHeight * 0.2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerBars(() {}, Icons.work_outline_sharp, 'الصفحة الرئيسية'),
                DrawerBars(() {}, Icons.work_outline_sharp, 'عن الجمعية'),
                DrawerBars(() {}, Icons.work_outline_sharp, 'مبادراتنا'),
                DrawerBars(() {}, Icons.work_outline_sharp, 'تواصل معنا'),
                DrawerBars(() {}, Icons.work_outline_sharp, 'اضافة مبادرة'),
                DrawerBars(
                    () {}, Icons.work_outline_sharp, 'المشاركين في المبادرة'),
              ],
            ),
            SizedBox(
              height: appHeight * 0.2,
            ),
            DrawerBars(() {}, Icons.logout, 'تسجيل الخروج'),
          ],
        ),
      ),
    );
  }
}

Widget DrawerBars(myOnTap, IconData myIcon, String title) {
  return ListTile(
    onTap: myOnTap,
    leading: Icon(
      myIcon,
      size: 25,
    ),
    title: Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    ),
  );
}
