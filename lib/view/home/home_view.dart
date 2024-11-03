import 'package:auddo/common/color_extension.dart';
import 'package:auddo/common_widget/playlist_cell.dart';
import 'package:auddo/common_widget/song_row.dart';
import 'package:auddo/common_widget/recomended_cell.dart';
import 'package:auddo/common_widget/title_section.dart';
import 'package:auddo/common_widget/view_all_section.dart';
import 'package:auddo/view_model/home_view_model.dart';
import 'package:auddo/view_model/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final homeVM = Get.put(HomeViewModel());

  void onPressed(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: const Color(0xff292E48),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: TextField(
                  controller: homeVM.txtsearchControlller.value,
                  decoration:  InputDecoration(
                    prefixIcon: Container(
                      margin:const EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      width: 30,
                      child: Image.asset(
                        "assets/img/search.png",
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: TColor.primaryText28,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 20
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: "Search album song",
                    hintStyle: TextStyle(
                      color: TColor.primaryText28,
                      fontSize: 13
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.find<SplashViewModel>().openDrawer();
          }, 
          icon: Image.asset(
            "assets/img/menu.png",
            width: 25 ,
            height: 25,
            fit: BoxFit.contain,
          )),
      ),
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSection(title: "Hot Recomended"),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.23,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.hostRecomendedArr.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.hostRecomendedArr[index];
                  return RecomendedCell(mObj: mObj);
                }, )
            ),
            Divider(
              color:Colors.white.withOpacity(0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "Playlist", onPressed: onPressed),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.2,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 0),
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.playlistArr.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.playlistArr[index];
                  return PlaylistCell(mObj: mObj);
                }, )
            ),
            Divider(
              color:Colors.white.withOpacity(0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "Recently Played", onPressed: onPressed),
            SizedBox(
              height:252,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 10 ,),
                itemCount: homeVM.recentlyPlayedArr.length,
                itemBuilder: (context, index) {
                  var sObj = homeVM.recentlyPlayedArr[index];
                  return SongRow(
                    sObj: sObj,
                    onPressed: () {},
                    onPressedPlay: () {},
                    );

                }, )
            ),
          ],
        ) ,),
    );
  }
}