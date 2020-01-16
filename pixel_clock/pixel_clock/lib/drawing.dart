import 'package:flutter/material.dart';

class Drawing {
  static Color clockColor = Color(0xFFFFFFFF);
  static Color temperatureColor = Color(0xFF90CAFF);
  static Color temperatureScaleColor = Color(0xFF06569F);
  static Color dayColor = Color(0xFF9F9F9F);

  static Color blueCloudColor = Color(0xFF0092D0);
  static Color fogColor = Color(0xFFBCBCBC);
  static Color fogShadowColor = Color(0xFF565656);
  static Color rainDropColor = Color(0xFF7DD8FF);
  static Color snowColor = Color(0xFFFFFFFF);
  static Color yellowColor = Color(0xFFE4B50E);
  static Color lightningColor = Color(0xFFFFE600);

  static Widget _tile (Color tileColor) {
    return Container(
      child: Image(
        image: AssetImage('assets/tile.png'),
      ),
      color: tileColor,
    );
  }

  // Big Numbers  - width: 5

  static List<Widget> get big0 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, tile, tile, tile, tile,
    ];
  }

  static List<Widget> get big1 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
    ];
  }

  static List<Widget> get big2 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      tile, tile, tile, tile, tile,
      tile, null, null, null, null,
      tile, null, null, null, null,
      tile, null, null, null, null,
      tile, tile, tile, tile, tile,
    ];
  }

  static List<Widget> get big3 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      tile, tile, tile, tile, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      tile, tile, tile, tile, tile,
    ];
  }

  static List<Widget> get big4 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, tile, tile, tile, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
    ];
  }

  static List<Widget> get big5 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      tile, null, null, null, null,
      tile, null, null, null, null,
      tile, null, null, null, null,
      tile, tile, tile, tile, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      tile, tile, tile, tile, tile,
    ];
  }

  static List<Widget> get big6 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      tile, null, null, null, null,
      tile, null, null, null, null,
      tile, null, null, null, null,
      tile, tile, tile, tile, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, tile, tile, tile, tile,
    ];
  }

  static List<Widget> get big7 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
    ];
  }

  static List<Widget> get big8 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, tile, tile, tile, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, tile, tile, tile, tile,
    ];
  }

  static List<Widget> get big9 {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      tile, tile, tile, tile, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, null, null, null, tile,
      tile, tile, tile, tile, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      null, null, null, null, tile,
      tile, tile, tile, tile, tile,
    ];
  }

  // Weather Icons  - width: 5

  static List<Widget> get cloudy {
    var blue = Drawing._tile(Drawing.blueCloudColor);
    return [
      null, blue, blue, blue, null,
      blue, blue, blue, blue, blue,
      null, blue, blue, blue, null,
      null, null, null, null, null,
      null, null, null, null, null,
    ];
  }

  static List<Widget> get foggy {
    var fogc = Drawing._tile(Drawing.fogColor);
    var shad = Drawing._tile(Drawing.fogShadowColor);
    return [
      null, fogc, fogc, fogc, null,
      fogc, fogc, fogc, fogc, fogc,
      shad, fogc, fogc, fogc, shad,
      shad, shad, shad, shad, shad,
      null, shad, shad, shad, null,
    ];
  }

  static List<Widget> get rainy {
    var blue = Drawing._tile(Drawing.blueCloudColor);
    var rain = Drawing._tile(Drawing.rainDropColor);
    return [
      null, blue, blue, blue, null,
      blue, blue, blue, blue, blue,
      null, blue, blue, blue, null,
      rain, null, rain, null, rain,
      null, rain, null, rain, null,
    ];
  }

  static List<Widget> get snowy {
    var blue = Drawing._tile(Drawing.blueCloudColor);
    var snow = Drawing._tile(Drawing.snowColor);
    return [
      null, blue, blue, blue, null,
      blue, blue, blue, blue, blue,
      null, blue, blue, blue, null,
      snow, null, snow, null, snow,
      null, snow, null, snow, null,
    ];
  }

  static List<Widget> get sunny {
    var ytle = Drawing._tile(Drawing.yellowColor);
    return [
      null, ytle, ytle, ytle, null,
      ytle, ytle, ytle, ytle, ytle,
      ytle, ytle, ytle, ytle, ytle,
      ytle, ytle, ytle, ytle, ytle,
      null, ytle, ytle, ytle, null,
    ];
  }

  static List<Widget> get thunderstorm {
    var blue = Drawing._tile(Drawing.blueCloudColor);
    var rain = Drawing._tile(Drawing.rainDropColor);
    var ligh = Drawing._tile(Drawing.lightningColor);
    return [
      null, blue, blue, blue, null,
      blue, blue, blue, blue, blue,
      null, blue, ligh, blue, null,
      rain, null, ligh, ligh, rain,
      null, rain, null, ligh, null,
    ];
  }

  static List<Widget> get windy {
    var blue = Drawing._tile(Drawing.blueCloudColor);
    var wind = Drawing._tile(Drawing.fogColor);
    return [
      null, null, blue, blue, null,
      null, blue, blue, blue, blue,
      null, null, blue, blue, blue,
      wind, wind, null, null, blue,
      null, null, wind, wind, null,
    ];
  }

  // Small Numbers  - width: 3

  static List<Widget> get smallc {
    var tile = Drawing._tile(Drawing.temperatureScaleColor);
    return [
      null, tile, tile,
      tile, null, null,
      tile, null, null,
      tile, null, null,
      null, tile, tile
    ];
  }

  static List<Widget> get smallf {
    var tile = Drawing._tile(Drawing.temperatureScaleColor);
    return [
      tile, tile, tile,
      tile, null, null,
      tile, tile, tile,
      tile, null, null,
      tile, null, null
    ];
  }

  static List<Widget> get smallMinus {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      null, null, null,
      null, null, null,
      tile, tile, tile,
      null, null, null,
      null, null, null
    ];
  }

  static List<Widget> get small0 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      tile, null, tile,
      tile, null, tile,
      tile, null, tile,
      tile, tile, tile
    ];
  }

  static List<Widget> get small1 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      null, tile, null,
      tile, tile, null,
      null, tile, null,
      null, tile, null,
      tile, tile, tile
    ];
  }

  static List<Widget> get small2 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      null, null, tile,
      tile, tile, tile,
      tile, null, null,
      tile, tile, tile
    ];
  }

  static List<Widget> get small3 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      null, null, tile,
      tile, tile, tile,
      null, null, tile,
      tile, tile, tile
    ];
  }

  static List<Widget> get small4 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, null, tile,
      tile, null, tile,
      tile, tile, tile,
      null, null, tile,
      null, null, tile
    ];
  }

  static List<Widget> get small5 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      tile, null, null,
      tile, tile, tile,
      null, null, tile,
      tile, tile, tile
    ];
  }

  static List<Widget> get small6 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      tile, null, null,
      tile, tile, tile,
      tile, null, tile,
      tile, tile, tile
    ];
  }

  static List<Widget> get small7 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      null, null, tile,
      null, null, tile,
      null, null, tile,
      null, null, tile
    ];
  }

  static List<Widget> get small8 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      tile, null, tile,
      tile, tile, tile,
      tile, null, tile,
      tile, tile, tile
    ];
  }

  static List<Widget> get small9 {
    var tile = Drawing._tile(Drawing.temperatureColor);
    return [
      tile, tile, tile,
      tile, null, tile,
      tile, tile, tile,
      null, null, tile,
      tile, tile, tile
    ];
  }

  // Days - width: 11

  static List<Widget> get monday {
    var tile = Drawing._tile(Drawing.dayColor);
    return [
      tile, null, tile, null, tile, tile, tile, null, tile, tile, null,
      tile, tile, tile, null, tile, null, tile, null, tile, null, tile,
      tile, null, tile, null, tile, null, tile, null, tile, null, tile,
      tile, null, tile, null, tile, null, tile, null, tile, null, tile,
      tile, null, tile, null, tile, tile, tile, null, tile, null, tile,
    ];
  }

  static List<Widget> get tuesday {
    var tile = Drawing._tile(Drawing.dayColor);
    return [
      tile, tile, tile, null, tile, null, tile, null, tile, tile, tile,
      null, tile, null, null, tile, null, tile, null, tile, null, null,
      null, tile, null, null, tile, null, tile, null, tile, tile, tile,
      null, tile, null, null, tile, null, tile, null, tile, null, null,
      null, tile, null, null, tile, tile, tile, null, tile, tile, tile,
    ];
  }

  static List<Widget> get wednesday {
    var tile = Drawing._tile(Drawing.dayColor);
    return [
      tile, null, tile, null, tile, tile, tile, null, tile, tile, null,
      tile, null, tile, null, tile, null, null, null, tile, null, tile,
      tile, null, tile, null, tile, tile, tile, null, tile, null, tile,
      tile, tile, tile, null, tile, null, null, null, tile, null, tile,
      tile, null, tile, null, tile, tile, tile, null, tile, tile, null,
    ];
  }

  static List<Widget> get thursday {
    var tile = Drawing._tile(Drawing.dayColor);
    return [
      tile, tile, tile, null, tile, null, tile, null, tile, null, tile,
      null, tile, null, null, tile, null, tile, null, tile, null, tile,
      null, tile, null, null, tile, tile, tile, null, tile, null, tile,
      null, tile, null, null, tile, null, tile, null, tile, null, tile,
      null, tile, null, null, tile, null, tile, null, tile, tile, tile,
    ];
  }

  static List<Widget> get friday {
    var tile = Drawing._tile(Drawing.dayColor);
    return [
      tile, tile, tile, null, tile, tile, null, null, tile, tile, tile,
      tile, null, null, null, tile, null, tile, null, null, tile, null,
      tile, tile, tile, null, tile, tile, tile, null, null, tile, null,
      tile, null, null, null, tile, tile, null, null, null, tile, null,
      tile, null, null, null, tile, null, tile, null, tile, tile, tile,
    ];
  }

  static List<Widget> get saturday {
    var tile = Drawing._tile(Drawing.dayColor);
    return [
      tile, tile, tile, null, null, tile, null, null, tile, tile, tile,
      tile, null, null, null, tile, null, tile, null, null, tile, null,
      tile, tile, tile, null, tile, tile, tile, null, null, tile, null,
      null, null, tile, null, tile, null, tile, null, null, tile, null,
      tile, tile, tile, null, tile, null, tile, null, null, tile, null,
    ];
  }

  static List<Widget> get sunday {
    var tile = Drawing._tile(Drawing.dayColor);
    return [
      tile, tile, tile, null, tile, null, tile, null, tile, tile, null,
      tile, null, null, null, tile, null, tile, null, tile, null, tile,
      tile, tile, tile, null, tile, null, tile, null, tile, null, tile,
      null, null, tile, null, tile, null, tile, null, tile, null, tile,
      tile, tile, tile, null, tile, tile, tile, null, tile, null, tile,
    ];
  }

  // Extras

  static List<Widget> get cleanTemperature {
    return List<Widget>(55);
  }

  static List<Widget> get cleanWeather {
    return List<Widget>(30);
  }

   static List<Widget> get cleanDay {
    return List<Widget>(60);
  }

  static List<Widget> get middleDots {
    var tile = Drawing._tile(Drawing.clockColor);
    return [
      null, 
      null, 
      tile, 
      null, 
      null, 
      null,
      tile,
      null,
      null,
    ];
  }

}