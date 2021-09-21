import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




class InfoCard extends StatelessWidget {
  final String title;
  final Color iconColor;
  final Function press;
  const InfoCard({
    Key? key,
    required this.title,
    required this.iconColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: (){
            press();
          },
          child: Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        // wrapped within an expanded widget to allow for small density device
                        SvgPicture.asset(
                          "assets/icons/blood-drop.svg",
                          height: 20,
                          width: 20,
                           color: Colors.red,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}