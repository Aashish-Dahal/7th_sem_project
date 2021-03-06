import 'package:flutter/material.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';

import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BNBProvider(),
      child: Consumer<BNBProvider>(builder: (context, value, child) {
        return Scaffold(
          body: value.tabs[value.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            currentIndex: value.currentIndex,
            onTap: (index) {
              value.currentIndex = index;
            },
            items: value.bars
                .map((eachTab) => BottomNavigationBarItem(
                      icon: eachTab.icon,
                      label: eachTab.label,
                      backgroundColor: eachTab.color,
                    ))
                .toList(),
          ),
        );
      }),
    );
  }
}
