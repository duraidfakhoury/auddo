import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {

  final txtsearchControlller = TextEditingController().obs;

  final hostRecomendedArr = [
    {
      "image" : "assets/img/img_1.png",
      "name" : "Sound of sky" , 
      "artists" : "Dilon Bruce"
    },
    {
      "image" : "assets/img/img_2.png",
      "name" : "Girl On Fire" , 
      "artists" : "Alecia Keys"
    },
  ].obs;

  
  final playlistArr = [
    {
      "image" : "assets/img/img_3.png",
      "name" : "Classic  Playlist " , 
      "artists" : "Piano Guys"
    },
    {
      "image" : "assets/img/img_4.png",
      "name" : "Summer Playlist" , 
      "artists" : "Dilon Bruce"
    },
    {
      "image" : "assets/img/img_5.png",
      "name" : "Pop Music" , 
      "artists" : "Micheal Jackson"
    },
  ];

  final recentlyPlayedArr = [
    {
      "rate" : 4.0,
      "name" : "Billie Jean" , 
      "artists" : "Micheal Jackson"
    },
    {
      "rate" : 3.5,
      "name" : "Earth Song" , 
      "artists" : "Micheal Jackson"
    },
    {
      "rate" : 2.0,
      "name" : "Mirror" , 
      "artists" : "Justin TimberLake"
    },
    {
      "rate" : 4.7,
      "name" : "Remember The Time" , 
      "artists" : "Micheal Jackson"
    },
  ].obs;
  
}