import 'package:flutter/material.dart';
import 'itempopular.dart';

class PopularView extends StatefulWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  State<PopularView> createState() => _PopularViewState();
}
final List<ItemPopular> listItemPopular = [
  ItemPopular(
      name: "RAYA và rồng thần cuối cùng",
      urlPhoto: "assets/images/dnp-Raya-the-last-dragon.jpg",
      releaseDate: "05-T3-2021"),
  ItemPopular(
      name: "Tom và Jerry: Quậy tung NewYork",
      urlPhoto: "assets/images/image_2022_04_22T07_33_58_843Z.png",
      releaseDate: "26-T2-2021"),
  ItemPopular(
      name: "Chaos Walking",
      urlPhoto: "assets/images/image_2022_04_22T07_34_22_361Z.png",
      releaseDate: "05-T3-2021"),
  ItemPopular(
      name: "Fear of Rain",
      urlPhoto: "assets/images/image_2022_04_22T07_34_43_340Z.png",
      releaseDate: "12-T2-2021"),
  ItemPopular(
      name: "Shang-chi và huyền thoại thập nhẫn",
      urlPhoto: "assets/images/poster_shangchi.jpg",
      releaseDate: "02-T9-2021"),
  ItemPopular(
      name: "Encanto: Vùng đất thần kỳ",
      urlPhoto: "assets/images/encanto-900x1350.jpg",
      releaseDate: "24-T11-2021")
];

class _PopularViewState extends State<PopularView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 30,
          childAspectRatio: 0.62,
        ),
        itemCount: listItemPopular.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 2, right: 2,),
            child: GestureDetector(
              onTap: (){

              },
              child: Column(
                children: [
                  //image
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[ Text(
                            listItemPopular[index].releaseDate,
                            style: TextStyle(color: Colors.white,),
                            textAlign:TextAlign.end,),
                          ]
                        ),
                      ),
                      height: 190.0,
                      width: MediaQuery.of(context).size.width - 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(
                              image:  AssetImage(listItemPopular[index].urlPhoto),
                              fit: BoxFit.cover
                          )
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      listItemPopular[index].name,
                      style: TextStyle(fontFamily: "Comfortaa",fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          );
            // _itemPopular(
            //   listItemPopular[index]);
        }
    );
  }
}