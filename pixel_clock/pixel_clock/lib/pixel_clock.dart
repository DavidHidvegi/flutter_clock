import 'dart:math';

import 'package:flutter/material.dart';

import 'drawing.dart';

class PixelClock {
  String hour;
  String minute;

  String temperature;
  bool celsius;

  int day;

  int weatherIndex;

  int gridWidthCount = 35;
  int gridHeightCount = 21;
  List<Widget> screenTiles = List<Widget>(735);

  PixelClock(
      {this.hour = "12",
      this.minute = "00",
      this.temperature = "22",
      this.celsius = false,
      this.day = 0,
      weatherIndex = 0});

  Widget get asWidget {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Row(
              children: _getTiles(min(
                  constraints.maxWidth / this.gridWidthCount,
                  constraints.maxHeight / this.gridHeightCount)),
            ),
          );
        },
      ),
      color: Colors.black,
    );
  }

  List<Column> _getTiles(double size) {
    drawClock();
    int offset = drawTemperature();
    drawWeather(offset: offset);
    drawDay(offset: offset);

    List<Column> screenGrid = List<Column>();

    for (int i = 0; i < this.gridWidthCount; i++) {
      List<Widget> widgets = List<Widget>();
      for (int j = 0; j < this.gridHeightCount; j++) {
        widgets.add(
            _tileFrame(size, this.screenTiles[i + j * this.gridWidthCount]));
      }
      Column newColumn = Column(children: widgets);
      screenGrid.add(newColumn);
    }
    return screenGrid;
  }

  void drawClock() {
    var numbers = [
      Drawing.big0,
      Drawing.big1,
      Drawing.big2,
      Drawing.big3,
      Drawing.big4,
      Drawing.big5,
      Drawing.big6,
      Drawing.big7,
      Drawing.big8,
      Drawing.big9
    ];
    _drawAt(73, numbers[int.parse(hour[0])], 5);
    _drawAt(80, numbers[int.parse(hour[1])], 5);
    _drawAt(87, Drawing.middleDots, 1);
    _drawAt(90, numbers[int.parse(minute[0])], 5);
    _drawAt(97, numbers[int.parse(minute[1])], 5);
  }

   int drawTemperature() {
    List<List<Widget>> resultDrawings = List<List<Widget>>();

    String temperature = this.temperature;

    if (int.parse(temperature) < 0) {
      resultDrawings.add(Drawing.smallMinus);
      temperature = temperature.substring(1);
    }

    var numbers = [
      Drawing.small0,
      Drawing.small1,
      Drawing.small2,
      Drawing.small3,
      Drawing.small4,
      Drawing.small5,
      Drawing.small6,
      Drawing.small7,
      Drawing.small8,
      Drawing.small9
    ];

    for (int i = 0; i < temperature.length; i++) {
      resultDrawings.add(numbers[int.parse(temperature[i])]);
    }

    resultDrawings.add(celsius ? Drawing.smallc : Drawing.smallf);

    _drawAt(499, Drawing.cleanTemperature, 11);

    if (resultDrawings.length < 3) {
      _drawAt(501, resultDrawings[0], 3);
      _drawAt(505, resultDrawings[1], 3);
      return 1;
    } else {
      _drawAt(499, resultDrawings[0], 3);
      _drawAt(503, resultDrawings[1], 3);
      _drawAt(507, resultDrawings[2], 3);
      return 0;
    }
  }

  void drawWeather({int offset = 0}) {
    _drawAt(492, Drawing.cleanWeather, 6);
    var weather = [
      Drawing.cloudy,
      Drawing.foggy,
      Drawing.rainy,
      Drawing.snowy,
      Drawing.sunny,
      Drawing.thunderstorm,
      Drawing.windy
    ];
    _drawAt(492+ offset, weather[this.weatherIndex], 5);
  }

  void drawDay({int offset = 0}) {
    _drawAt(511, Drawing.cleanDay, 12);
    var days = [
      Drawing.monday,
      Drawing.tuesday,
      Drawing.wednesday,
      Drawing.thursday,
      Drawing.friday,
      Drawing.saturday,
      Drawing.sunday
    ];
    _drawAt(512 - offset, days[this.day - 1], 11);
  }

  void _drawAt(int startTile, List<Widget> tiles, int width) {
    for (var i = 0; i < tiles.length; i++) {
      this.screenTiles[
          startTile + i % width + i ~/ width * this.gridWidthCount] = tiles[i];
    }
  }

  static Widget _tileFrame(double size, Widget child) {
    return Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(0),
      height: size,
      width: size,
      child: child,
    );
  }
}
