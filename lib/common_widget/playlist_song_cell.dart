import 'package:auddo/common/color_extension.dart';
import 'package:flutter/material.dart';

class PlaylistSongCell extends StatelessWidget {
  final Map pObj ; 
  final VoidCallback onPressed ; 
  final VoidCallback onPressedPlay;
  const PlaylistSongCell({
    super.key, 
    required this.pObj, 
    required this.onPressed, 
    required this.onPressedPlay});

  @override
  Widget build(BuildContext context) {
    return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      pObj['image'],
                      width: double.maxFinite ,
                      height: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                pObj['name'],
                                maxLines: 1,
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4,),
                              Text(
                                pObj['songs'],
                                maxLines: 1,
                                style: TextStyle(
                                  color: TColor.primaryText28,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )),
                          IconButton(
                            onPressed: onPressedPlay, 
                            icon: Image.asset(
                              "assets/img/play.png",
                              width: 22,
                              height: 22,
                            )
                          ),
                      ],
                    ),
                  )
                ],
              );

  }
}