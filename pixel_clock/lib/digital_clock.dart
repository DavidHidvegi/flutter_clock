// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:analog_clock/pixel_clock.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock(this.model);

  final ClockModel model;

  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime _dateTime = DateTime.now();
  PixelClock pixelClock = PixelClock();
  Timer _timer;

  @override
  void initState() {
    super.initState();
    widget.model.addListener(_updateModel);
    _updateTime();
    _updateModel();
  }

  @override
  void didUpdateWidget(DigitalClock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      oldWidget.model.removeListener(_updateModel);
      widget.model.addListener(_updateModel);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    widget.model.removeListener(_updateModel);
    widget.model.dispose();
    super.dispose();
  }

  void _updateModel() {
    setState(() {});
  }

  void _updateTime() {
    setState(() {
      _dateTime = DateTime.now();
      _timer = Timer(
        Duration(minutes: 1) -
            Duration(seconds: _dateTime.second) -
            Duration(milliseconds: _dateTime.millisecond),
        _updateTime,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    pixelClock.hour =
        DateFormat(widget.model.is24HourFormat ? 'HH' : 'hh').format(_dateTime);
    pixelClock.minute = DateFormat('mm').format(_dateTime);
    pixelClock.day = DateTime.now().weekday;
    pixelClock.temperature = widget.model.temperature.toInt().toString();
    pixelClock.celsius = widget.model.temperatureString.contains('C');
    pixelClock.weatherIndex = widget.model.weatherCondition.index;
    return pixelClock.asWidget;
  }
}
