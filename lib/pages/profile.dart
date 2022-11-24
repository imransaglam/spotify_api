import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(69),
                bottomRight: Radius.circular(69),
              )),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Color(0xff545454),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Color(0xff383838),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          color: Color(0xffA68C8C),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:60,left: 110),
                    child: Column(
                      children: [
                        Container(
                          width: 93,
                          height: 93,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/Rectangle29.png"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(56),
                            bottomRight: Radius.circular(56),
                          )
                          ),
                        ),
                        Text("soroushnorozyui@gmai.com")
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
