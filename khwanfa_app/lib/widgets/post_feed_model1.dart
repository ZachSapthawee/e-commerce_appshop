import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Post_feed extends StatelessWidget {
  final String imagename, productName, textDetail;
  final int cost;

  Post_feed(
      {Key key,
        this.productName,
        this.textDetail,
        this.cost,
        this.imagename,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,left: 10.0,right: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5
          ),
//          boxShadow: [
//            BoxShadow(
//              color: Colors.grey.withOpacity(0.5),
//              spreadRadius: 5,
//              blurRadius: 7,
//              offset: Offset(0, 3), // changes position of shadow
//            ),
//          ],
          borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,left: 20.0,right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://www.rawganiq.com/wp-content/uploads/2017/10/gourmet-market-logo.jpg',),
                        minRadius: 10,
                        maxRadius: 25,
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        children: <Widget>[
                          Text(
                            'Khwanfa Shop',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
//                Icon(Icons.open_in_new)
                ],
              ),
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: NetworkImage(imagename),
              ),
            ),
//          Container(
//            child: CachedNetworkImage(
//              imageUrl: imagename,
//              imageBuilder: (context, imageProvider) =>
//                  Container(
//                    decoration: BoxDecoration(
//                      image: DecorationImage(
//                        image: imageProvider,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//              placeholder: (context, url) =>
//                  Container(
//                    width: 300,
//                    height: 350,
//                    color: Colors.grey[100],
//                  ),
////                                        CircularProgressIndicator(),
//              errorWidget: (context, url, error) =>
//                  Icon(Icons.error),
//            ),
//          ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 0.5, color: Color(0xFFFF000000)),
                  ),
                ),
                child: Text(
                  textDetail,
//                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry is standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(thickness: 0.5,),
            ),
//            SizedBox(height: 15.0,child: Container(color: Colors.grey.shade500,),)
          ],
        ),
      ),
    );
  }
}
