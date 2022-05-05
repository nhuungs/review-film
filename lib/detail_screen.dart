import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 15),
          child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
              "assets/images/images (1).jpg",
          fit:BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white.withOpacity(0.8),
          ),
          ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              _header(),
            ],
          )
        ],
      ),
    );
  }
}

 _header() {
  return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
    child: GestureDetector(
      onTap: (){},
      child: Card(
        elevation: 1.0,
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15 ),
                width: 100,
                height: 150,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/dnp-Raya-the-last-dragon.jpg")

                    )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                            height: 60,
                            margin: const EdgeInsets.only(top: 12, bottom: 10),
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Text(
                                "RAYA và rồng thần cuối cùng ",
                                style: TextStyle(
                                    fontFamily: "Comfortaa",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ),
                          )
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text("Xuất bản"),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("05-T3-2021"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text("Thể loại"),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text("Phim Hoạt Hình, Phim Phiêu Lưu, Phim Giả Tượng, Phim Gia Đình, Phim Hành Động"),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

    ),
  );
}

