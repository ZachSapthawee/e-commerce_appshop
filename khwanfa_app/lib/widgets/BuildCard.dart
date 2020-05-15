import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khwanfaapp/Pages/function/Part_Tabitem.dart';

class buildCard extends StatelessWidget {
  final String imagename, productName, productDetail;
  final int cost;

  buildCard(
      {Key key,
        this.productName,
        this.productDetail,
        this.cost,
        this.imagename,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.deepPurple.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Part_TabItem(
                      image: imagename,
                      title: productName,
                      subTitle: productDetail,
                      cost: cost,
                    )),
          );
        },
        child: Column(
          children: <Widget>[
            Container(
              width: 110,
              height: 110,
              margin: EdgeInsets.only(
                  top: 10.0,
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0),
              child: CachedNetworkImage(
                imageUrl: imagename,
                imageBuilder: (context, imageProvider) =>
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.deepPurple,
                                BlendMode.colorBurn)),
                      ),
                    ),
                placeholder: (context, url) =>
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.grey[100],
                    ),
//                                        CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    left: 10.0, right: 10.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        productName,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
//                                          margin: EdgeInsets.only(top: 5),
                      alignment: Alignment.topRight,
                      child: Text(
                        productDetail,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Container(
//                                          margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.topRight,
                      child: Text(
                        '\u{0e3f} ' + cost.toString(),
//                                            v.cost.toString(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
