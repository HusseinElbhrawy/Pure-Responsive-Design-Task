import 'package:flutter/material.dart';
import 'package:pur_response_design/widgets/custom_body_item_widget.dart';
import 'package:pur_response_design/widgets/custom_image_slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'assets/images/landing1.jpg',
    'assets/images/landing2.jpg',
    'assets/images/landing3.jpg',
  ];
  final items = [
    ItemDataClass(icon: Icons.person, title: 'ولي الأمر'),
    ItemDataClass(
      icon: Icons.contact_page_outlined,
      title: 'طلب مقابلة',
    ),
    ItemDataClass(
      icon: Icons.content_paste_search_sharp,
      title: 'طلب توظيف',
    ),
    ItemDataClass(
      icon: Icons.insert_drive_file_outlined,
      title: 'نماذج',
    ),
    ItemDataClass(
      icon: Icons.link_sharp,
      title: 'روابط عامة',
    ),
    ItemDataClass(
      icon: Icons.calendar_month,
      title: 'رزنامة العام',
    ),
    ItemDataClass(
      icon: Icons.contacts_outlined,
      title: 'تواصل معنا',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الرئيسية'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.translate),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CustomImageSliderWidget(images: images),
          Wrap(
            alignment: WrapAlignment.center,
            children: List.generate(
              items.length,
              (index) {
                return CustomBodyItemWidget(
                  icon: items[index].icon,
                  title: items[index].title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ItemDataClass {
  final IconData icon;
  final String title;

  ItemDataClass({required this.icon, required this.title});
}
