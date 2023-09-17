import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_shi_pu/constants.dart';
import 'package:ui_shi_pu/models/RecipeBundel.dart';
import 'package:ui_shi_pu/screens/home/compoents/Categories.dart';
import 'package:ui_shi_pu/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Categories(), RecipeBundelCard()],
    );
  }
}

class RecipeBundelCard extends StatelessWidget {
  RecipeBundelCard({
    super.key,
  });
  SizeConfig sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
            color: recipeBundles[0].color,
            borderRadius: BorderRadius.circular(sizeConfig.defaultSize * 1.8)),
        child: Row(children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(sizeConfig.defaultSize * 2),
            child: Column(
              children: [
                Text(
                  recipeBundles[0].title,
                  style: TextStyle(
                      fontSize: sizeConfig.defaultSize * 2.2,
                      color: Colors.white),
                ),
                SizedBox(
                  height: sizeConfig.defaultSize * 0.5,
                ),
                Text(
                  recipeBundles[0].description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
                buildInfoRow()
              ],
            ),
          )),
          SizedBox(
            width: sizeConfig.defaultSize * 0.5,
          ),
          AspectRatio(
            aspectRatio: 0.71,
            child: Image.asset(
              recipeBundles[0].imageSrc,
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
          )
        ]),
      ),
    );
  }

  Row buildInfoRow() {
    return Row(
                children: [
                  SvgPicture.asset('assets/icons/chef.svg'),
                  SizedBox(
                    width: sizeConfig.defaultSize,
                  ),
                  Text(
                    '95 Chefs',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              );
  }
}
