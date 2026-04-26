import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutterflow_ui/flutterflow_ui.dart';

import 'parentenfant.dart' show Parentenfant;
import 'package:carousel_slider/carousel_slider.dart';


class ParentenfantModel extends FlutterFlowModel<Parentenfant> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
