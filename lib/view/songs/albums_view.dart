import 'package:auddo/common_widget/album_cell.dart';
import 'package:auddo/view/songs/album_detail_view.dart';
import 'package:auddo/view_model/album_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});
  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {

  final albumVM = Get.put(AlbumViewModel());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    var cellWidth = (media.width - 40.0 - 20.0 ) * 0.5 ;
    return Scaffold(
      body: Obx(
        () => GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2 ,
                childAspectRatio:  cellWidth / (cellWidth + 70) ,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20
                ), 
          itemCount: albumVM.allList.length,
          itemBuilder: (context, index) {
            var aObj = albumVM.allList[index];
            return AlbumCell(
              aObj: aObj, 
              onPressed: (){
                Get.to(()=> const  AlbumDetailsView());
              },
              onPressedMenu: (selectIndex) {
                if (kDebugMode) {
                  print(index);
                }
              },);
          },),
      ),
    );
  }
}