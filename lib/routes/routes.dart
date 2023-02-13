import 'package:flutter/material.dart';
import 'package:whats_app/pages/pages.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'home': (_) => HomePage(),
  'chatDetail': (_) => ChatDetailPage(),
};
