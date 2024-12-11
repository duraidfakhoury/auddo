import 'package:auddo/common/color_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SongRow extends StatelessWidget {
  final Map sObj ; 
  final VoidCallback onPressedPlay ; 
  final VoidCallback onPressed ; 
  const SongRow({super.key, required this.sObj, required this.onPressedPlay, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onPressedPlay, 
              icon: Image.asset(
                "assets/img/play_btn.png",
                width: 25,
                height: 25,
              )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    sObj['name'],
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.primaryText60,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    sObj['artists'],
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 10,
                    ),
                  ),
                  ],
                )
              ),
              Column(
                  children: [
                    Image.asset(
                      "assets/img/fav.png",
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(height: 4,),
                  IgnorePointer(
                    ignoring: true,
                    child: RatingBar.builder(
                      initialRating: sObj['rate'],
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 12,
                      itemPadding: EdgeInsets.zero,
                      updateOnDrag: false,
                      unratedColor: TColor.org.withOpacity(0.3),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: TColor.org,
                      ),
                      onRatingUpdate: (rating) {
                        if (kDebugMode) {
                          print(rating);
                        }
                      },
                    ),
                  ),
                  ],
                )
                
          ],
        ),
        Divider(
          color: Colors.white.withOpacity(0.07),
          indent: 50,
        )
      ],
    );

  }
}