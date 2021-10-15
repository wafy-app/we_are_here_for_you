import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);
  static const aboutUsPage = '/AboutUsPage';

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('عن الجمعية'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.indigoAccent.shade200]),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.indigoAccent,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: appHeight * 0.4,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 10,
                        blurRadius: 30,
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: AssetImage('we_are_here.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: appHeight * 0.05),
                mytext(
                    'مجموعة من الشباب اجتمعوا على حب الخير و الاعمال التطوعية الخيرية من مختلف محافظات المملكة حيث تم تأسيس هذه المجموعة تحت اسم "مبادرة نحن من أجلكم " في نهاية عام 2011',
                    FontWeight.w900),
                SizedBox(height: appHeight * 0.05),
                mytext(
                    'ثم تم تسجيل مبادرة نحن من اجلكم في وزارة التنمية الاجتماعية تحت اسم "جمعية نحن من أجلكم الخيرية" وتم تحديد اهدافها و تطلعاتها بالتنسيق مع وزارة التنمية الاجتماعية و تم عقد اجتماع الهيئة التأسيسية في بداية عام 2013 ليتم تعيين الهيئة الادارية حيث تم تنصيب المهندس عادل غنيم مؤسس نحن من اجلكم رئيسا للجمعية',
                    FontWeight.normal),
                SizedBox(height: appHeight * 0.05),
                Container(
                  alignment: Alignment.centerRight,
                  child: mytext('الاهداف :', FontWeight.w900),
                ),
                SizedBox(height: appHeight * 0.05),
                mytext(
                    'اولا : تقديم المساعدات العينية و النقدية و النفسية لكافة الاسر المحتاجة و الايتام منهم \n\nثانيا: اقامة الانشطة الترفيهية و التعليمية و الرياضيه والتوعوية و الثقافيه لجميع فئات المجتمع \n\n ثالثا: تنظيم الحملات و الفعاليات التطوعية \n\n رابعا: تأهيل و تدريب شرائح المجتمع المختلفة \n\n خامسا: الاهتمام بفئة الشباب وتحفيزها على العمل التطوعي ',
                    FontWeight.normal),
                SizedBox(height: appHeight * 0.05),
                Container(
                  alignment: Alignment.centerRight,
                  child: mytext('الفئات المستهدفة :', FontWeight.w900),
                ),
                SizedBox(height: appHeight * 0.05),
                Container(
                  alignment: Alignment.centerRight,
                  child: mytext('1. الايتام', FontWeight.normal),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child:
                      mytext('2. الاسر الفقيرة و المحتاجه', FontWeight.normal),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: mytext('3. المسنين', FontWeight.normal),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: mytext('4. حملات التبرع بالدم', FontWeight.normal),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: mytext('5. ذوي الاحتياجات الخاصة', FontWeight.normal),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: mytext('6. الشباب الجامعي', FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 1. الايتام
// 2. الاسر الفقيرة و المحتاجه
// 3. المسنين
// 4. حملات التبرع بالدم
// 5. ذوي الاحتياجات الخاصة
// 6. الشباب الجامعي

Widget mytext(String title, FontWeight myWeight) {
  return Text(
    title,
    textDirection: TextDirection.rtl,
    style: TextStyle(color: Colors.white, fontWeight: myWeight),
    textAlign: TextAlign.right,
  );
}
