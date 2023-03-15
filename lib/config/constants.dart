import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String kAppTitle = 'Albums APP';
const String kBaseUrl = 'https://jsonplaceholder.typicode.com/';

const String kRouteHome = '/home';
const String kRouteSearch = '/search';
const String kRouteAlbum = '/album';

const Color kBackground = Colors.black;
Color kListCardColor = Colors.grey.shade900;

InputDecoration kTextFieldStyle = InputDecoration(
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.brown, width: 0.0),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.brown, width: 0.0),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.brown, width: 0.0),
  ),
  hintText: "Search for album",
  hintStyle: GoogleFonts.comfortaa(color: Colors.white),
);
