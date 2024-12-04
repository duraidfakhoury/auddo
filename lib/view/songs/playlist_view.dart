import 'package:auddo/common/color_extension.dart';
import 'package:auddo/common_widget/my_playlist_cell.dart';
import 'package:auddo/common_widget/playlist_song_cell.dart';
import 'package:auddo/common_widget/view_all_section.dart';
import 'package:auddo/view_model/playlists_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class PlaylistView extends StatefulWidget {
  const PlaylistView({super.key});

  @override
  State<PlaylistView> createState() => _PlaylistViewState();
}

class _PlaylistViewState extends State<PlaylistView> {
  @override
  Widget build(BuildContext context) {
    final playlistVM = Get.put(PlaylistsViewModel());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColor.lightBg,
        onPressed: (){},
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Image.asset(
            "assets/img/add.png",
          ),
        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemCount: playlistVM.playlistArr.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2 ,
                childAspectRatio: 1.4,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0
                ), 
              itemBuilder: (context, index) {
                var pObj = playlistVM.playlistArr[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  child: PlaylistSongCell(pObj: pObj, onPressed: (){},onPressedPlay: (){},),
                );
              },),),
            ViewAllSection(title: "My Playlists", onPressed: () {},),
            SizedBox(
              height: 150,
              child: Obx(() => ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: playlistVM.myPlaylistArr.length,
                itemBuilder: (context, index) {
                  var pObj = playlistVM.myPlaylistArr[index];
                  return MyPlaylistCell(pObj: pObj, onPressed: (){});
                  },),),
            ),
          ],
        ),
      ),
    );
  }
}