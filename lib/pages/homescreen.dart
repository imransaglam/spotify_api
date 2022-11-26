import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotifyapi/provider/spotify_provider.dart';



class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
     SpotifyProvider ?cateProvider;
  void initState(){
     
  
    cateProvider=Provider.of<SpotifyProvider>(context,listen:false);
      cateProvider!.getCategoryData(context);

    
      super.initState();
      

    }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15,left: 15,top:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ara",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                 SizedBox(
                  height: 50,
                   child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.black),
                        
                      ),
                      hintText: "Ne dinlemek istiyorsun?",
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.black
                    ),
                               ),
                 ),
                SizedBox(height: 10,),
                 Center(child: Text("Hepsine göz at",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                SizedBox(height: 10,),



                 Consumer(
                  builder: (context, SpotifyProvider categoryProvider, child) =>categoryProvider.isLoading==true?CircularProgressIndicator(): 
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
                     itemCount: categoryProvider.categoryResponse.categories!.items!.length,
                     itemBuilder: (context, index) {
                       return Container(
                                   height: 80,
                                   width: 80,
                                  decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  NetworkImage(categoryProvider.categoryResponse.categories!.items![index].icons![0].url.toString()),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                                   child: Container(alignment: Alignment.bottomCenter,
                                    child: Text(categoryProvider.categoryResponse.categories!.items![index].name.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                       );
                     },),
                   ),
                 ),
                 
             




                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}