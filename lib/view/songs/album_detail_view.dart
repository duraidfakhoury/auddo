import 'dart:ui';

import 'package:auddo/common/color_extension.dart';
import 'package:auddo/common_widget/album_song_row.dart';
import 'package:auddo/view_model/album_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumDetailsView extends StatefulWidget {
  const AlbumDetailsView({super.key});
  @override
  State<AlbumDetailsView> createState() => _AlbumDetailsViewState();
}

class _AlbumDetailsViewState extends State<AlbumDetailsView> 
  with SingleTickerProviderStateMixin {

  final albumVM = Get.put(AlbumViewModel());

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.sizeOf(context) ; 

    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          }, 
          icon: Image.asset(
            "assets/img/back.png",
            width: 25 ,
            height: 20,
            fit: BoxFit.contain,
          )),
        title: Text(
          "Album Details" ,
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize:17,
            fontWeight: FontWeight.w600 
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
          onPressed: () {
          }, 
          icon: Image.asset(
            "assets/img/search.png",
            width: 20 ,
            height: 20,
            fit: BoxFit.contain,
            color: TColor.primaryText35,
          )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRect(
                    child: ImageFiltered(
                      imageFilter:ImageFilter.blur(sigmaX: 5 , sigmaY: 5),
                      child: Image.asset(
                        "assets/img/alb_1.png",
                        width: double.maxFinite,
                        height: media.width * 0.5,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: media.width*0.5,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/img/alb_1.png",
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "History",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(0.9),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8,),
                                  Text(
                                    "By Micheal Jackson",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(0.74),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8,),
                                  Text(
                                    "1996  .  18 Songs  .  64 min",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(0.74),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ))
                          ],
                        ),

                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:() {
                                
                              },
                              borderRadius: BorderRadius.circular(17.5),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  gradient: LinearGradient(
                                    colors: TColor.primaryG , 
                                    begin: Alignment.topCenter,
                                    end: Alignment.center
                                     )
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/img/play_n.png",
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(width: 8,),
                                    Text(
                                    "Play",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(0.74),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  ],
                                ),
                              ),
                            ),

                            InkWell(
                              onTap:() {
                                
                              },
                              borderRadius: BorderRadius.circular(17.5),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  border: Border.all(
                                    color: TColor.primaryText,
                                    width: 1,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/img/share.png",
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(width: 8,),
                                    Text(
                                    "Share",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(0.74),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:() {
                                
                              },
                              borderRadius: BorderRadius.circular(17.5),
                              child: Container(
                                height: 30,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  border: Border.all(
                                    color: TColor.primaryText,
                                    width: 1,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/img/fav.png",
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.contain,
                                      color: TColor.primaryText,
                                    ),
                                    const SizedBox(width: 8,),
                                    Text(
                                    "Add To Favorites",
                                    style: TextStyle(
                                      color: TColor.primaryText.withOpacity(0.74),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric( vertical: 10),
                itemCount: albumVM.playedArr.length,
                itemBuilder: (context, index) {
                  var sObj = albumVM.playedArr[index];
                  return AlbumSongRow(
                    sObj: sObj,
                    onPressed: () {},
                    onPressedPlay: () {},
                    isPlay: index == 0,
                    );
                }, ),
            ],
          ),
        ),
      ),
    );
  }
}