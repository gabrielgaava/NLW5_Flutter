//CurrentPage
import 'package:flutter/foundation.dart';

class ChallangePageController {

  final currentPageNotifier = ValueNotifier<int>(0);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  final alreadyAwnsered = ValueNotifier<List<int>>([]);

}