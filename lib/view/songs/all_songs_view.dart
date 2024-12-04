import 'package:auddo/common_widget/all_song_row.dart';
import 'package:auddo/view_model/all_songs_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllSongsView extends StatefulWidget {
  const AllSongsView({super.key});

  @override
  State<AllSongsView> createState() => _AllSongsViewState();
}

class _AllSongsViewState extends State<AllSongsView> {

  final allSongsVM = Get.put(AllSongsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: allSongsVM.allList.length,
        itemBuilder: (context, index) {
          var sObj = allSongsVM.allList[index];
          return AllSongRow(sObj: sObj, onPressedPlay: () { }, onPressed: () {},);
        },),),
    );
  }
}