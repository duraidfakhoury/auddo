import 'package:auddo/common/color_extension.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> 
with SingleTickerProviderStateMixin {

  TabController? controller ; 
  int selectTab =0 ;

  @override
  void initState() {
    super.initState();
    controller = TabController(length:3, vsync: this);

    controller?.addListener((){
      selectTab = controller?.index ?? 0 ;
      setState(() {
        
      }); 
    });
  } 

  @override
  void dispose() {
    super.dispose();
    controller?.dispose(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: TabBarView(
        controller: controller,
        children:[
          Center(child: Container(child: Text("Home"),)),
          Center(child: Container(child: Text("songs"),)),
          Center(child: Container(child: Text("settings"),)),
        ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: TColor.bg,
          boxShadow: const [BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: Offset(0, -3)
          )]
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: TColor.primary,
            labelStyle: const TextStyle(
              fontSize: 10
            ),
            unselectedLabelColor: TColor.primaryText28,
            unselectedLabelStyle: const TextStyle(
              fontSize: 10
            ),
        
            tabs: [
              Tab(
                icon: Image.asset(selectTab == 0 ? "assets/img/home_tab.png" : "assets/img/home_tab_un.png" ,
                  height: 25,
                  width: 25,
                  ),
                text: "Home",
                ),
              Tab(
                icon: Image.asset(selectTab == 1 ? "assets/img/songs_tab.png" : "assets/img/songs_tab_un.png" ,
                  height: 25,
                  width: 25,
                  ),
                text: "Songs",
                ),
              Tab(
                icon: Image.asset(selectTab == 2 ? "assets/img/setting_tab.png" : "assets/img/setting_tab_un.png" ,
                  height: 25,
                  width: 25,
                  ),
                text: "Settings",
                ),  
            ]),
        ),
      ),
    );
  }
}