import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40,left: 20,right: 20), // to provide margin space specifically we use EdgeInsets.only
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 40,
                  spreadRadius: 0.0
                )
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
              ),
              
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(
            10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)), // we use EdgeInsets in leading to manipulate size
        child: SvgPicture.asset(
          'assets/icons/Arrow - Left 2.svg',
          height: 20,
          width: 20,
        ),
      ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
          alignment: Alignment.center,
          width: 37,
          margin: const EdgeInsets.all(
              10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)), // we use EdgeInsets in leading to manipulate size
          child: SvgPicture.asset(
            'assets/icons/dots.svg',
            height: 5,
            width: 5,
          ),
        ),
        )
        
      ],
    );
  }
}
