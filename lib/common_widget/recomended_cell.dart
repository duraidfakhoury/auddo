import 'package:auddo/common/color_extension.dart';
import 'package:flutter/material.dart';

class RecomendedCell extends StatelessWidget {
  final Map mObj ; 
  const RecomendedCell({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(
                      mObj["image"],
                      width:double.maxFinite,
                      height: MediaQuery.sizeOf(context).height*0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    mObj['name'],
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.primaryText60,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    mObj['artists'],
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),  
              ],
            ),
    );
  }
}