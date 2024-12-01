import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  final List<String> tabs;

  const Tabs({super.key, required this.tabs});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  selectedTabIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: index == selectedTabIndex
                        ? const Color(0xff5EDFFF)
                        : const Color(0xff263238),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    widget.tabs[index],
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: index == selectedTabIndex
                            ? const Color(0xff263238)
                            : Colors.white,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 12);
        },
        itemCount: widget.tabs.length);
  }
}
