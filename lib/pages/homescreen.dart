import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15,left: 15,top:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ara",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                Divider(),
                 SizedBox(
                  height: 50,
                   child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none
                      ),
                      hintText: "Ne dinlemek istiyorsun?",
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.black
                    ),
                               ),
                 ),
                 Divider(),
                 Center(child: Text("Hepsine göz at",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                 Divider(),
                 Container(
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height,
                   child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3/2,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                   ), 
                   physics: NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemCount: 25,
                   itemBuilder: (context, index) {
                     return Container(
                                 height: 80,
                                 width: 80,
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green
                                 ),
                     );
                   },),
                 )
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}