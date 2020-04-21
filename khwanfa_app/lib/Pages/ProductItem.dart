import 'package:flutter/material.dart';

import 'ShowItem.dart';

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
      return CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 220.0,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.purple[900],
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Products',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.purple[900],
                          offset: Offset(3.0, 2.0),
                        ),
                      ],
                    )),
                background: Image.network(
                  'https://scontent-yyz1-1.cdninstagram.com/v/t51.2885-15/e35/26308762_1895633190766583_5435136789301952512_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=7L06bhcklmIAX-OtqRp&oh=8f7629458a5814acfbd63a26b65dff81&oe=5EC1E88E',
                  fit: BoxFit.cover,
                )
            ),



          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,//10.0 ระยะห้าง
              crossAxisSpacing: 5.0,
              childAspectRatio: 1.0,//4.0
            ),


            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                  child: InkWell(
                    splashColor: Colors.deepPurple.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shoeitem(

                          )
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        ClipRRect(  //<--clipping image
                          borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                          child: Image.network("https://taladchumchon.com/wp-content/uploads/2018/11/IMG_7936.jpg",width: 100,height: 100,),
                        ),
                        SizedBox(height: 8),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(width: 5),
                                Text(
                                  'ข้าวไรเบอร์รี่',
                                ),
                                Text(
                                  '0.00 ฿',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 5),
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
              },
              childCount: 20,
            ),


          ),
        ],
      );

  }
}

