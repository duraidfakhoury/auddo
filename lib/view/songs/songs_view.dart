import 'package:auddo/common/color_extension.dart';
import 'package:auddo/view/songs/albums_view.dart';
import 'package:auddo/view/songs/all_songs_view.dart';
import 'package:auddo/view/songs/playlist_view.dart';
import 'package:auddo/view_model/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});
  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView> with SingleTickerProviderStateMixin {

  TabController? controller ; 

  int selectedTab = 0 ; 

  @override
  void initState() {
    super.initState();

    controller = TabController(
      length: 5 , 
      vsync: this);

    controller?.addListener( () {
      selectedTab=controller?.index ?? 0; 
      setState(() {
        
      });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          "Songs" ,
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
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight-15,
            child: TabBar(
              isScrollable: true,
              controller: controller,
              indicatorColor: TColor.focus,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              labelStyle: TextStyle(
                color: TColor.focus,
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),
              unselectedLabelStyle:TextStyle(
                color: TColor.primaryText80,
                fontSize: 15,
                fontWeight: FontWeight.w600
              ), 
              tabs: const [
                Tab(
                  text: "All songs",
                ),
                Tab(
                  text: "Playlists",
                ),
                Tab(
                  text: "Albums",
                ),
                Tab(
                  text: "Artists",
                ),
                Tab(
                  text: "Geners",
                ),
              ]),
          ),
          Expanded(
            child: TabBarView( 
              controller: controller,
              children: const [
                AllSongsView(),
                PlaylistView(),
                AlbumView(),
                Center(child: Text("artists"),),
                Center(child: Text("geners"),),

              ]),
          )
        ],
      ),
    );
  }
}