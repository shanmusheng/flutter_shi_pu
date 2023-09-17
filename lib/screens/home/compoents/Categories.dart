import 'package:flutter/material.dart';
import 'package:ui_shi_pu/constants.dart';
import 'package:ui_shi_pu/size_config.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  SizeConfig sizeConfig = SizeConfig();

  List<String> categories = ['All', 'Indian', 'Italian', 'Mexican', 'Chinese'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizeConfig.defaultSize * 2),
      child: SizedBox(
        height: sizeConfig.defaultSize * 3.5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return BuildCategoriItem(index);
          },
        ),
      ),
    );
  }

  Widget BuildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: sizeConfig.defaultSize * 2),
        decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0xffeff3ee) : Colors.transparent,
            borderRadius: BorderRadius.circular(sizeConfig.defaultSize * 1.6)),
        padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.defaultSize * 2,
            vertical: sizeConfig.defaultSize * 0.5),
        child: Text(
          categories[index],
          style: TextStyle(
              color: selectedIndex == index ? KprimaryColor : Color(0xffc2c2b5),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
