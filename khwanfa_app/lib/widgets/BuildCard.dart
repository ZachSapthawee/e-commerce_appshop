import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khwanfaapp/Pages/ShowItem.dart';
import 'package:khwanfaapp/models/Products.dart';

class buildCard extends StatelessWidget {
  final String image, title, subTitle, url;
  final int price;
  final int index;
  final ValueChanged<int> onAdd;

  buildCard(
      {Key key,
        this.image,
        this.title,
        this.subTitle,
        this.url,
        this.price,
        this.index,
        this.onAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Products>(
//      future: futureProducts,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 0.8,
            children: List.generate(snapshot.data.length, (index) {
              var v = snapshot.data[index];
              return Card(
                child: InkWell(
                  splashColor: Colors.deepPurple.withAlpha(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Shoeitem()),
                    );
                  },
//                  https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 110,
                        height: 110,
                        margin: EdgeInsets.only(
                            top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
                        child: CachedNetworkImage(
                          imageUrl:
                          "https://cf.shopee.co.th/file/c2645f4945e67be6a4736f7c8bd1e016",
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.deepPurple, BlendMode.colorBurn)),
                            ),
                          ),
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin:
                          EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(width: 5),
                              Container(
                                alignment: Alignment.topLeft,
//                              color: Colors.red,
                                child: Text(
                                  v.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                alignment: Alignment.topRight,
                                child: Text(
                                  '0.00 \฿',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),

//                          child: CardContent( //<--replace the Container with CardContent
//
//                          ),
                        ), //<-- will be replaced soon :)
                      ),
                    ],
                  ),
                ),
              );
            }),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // By default, show a loading spinner.
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
