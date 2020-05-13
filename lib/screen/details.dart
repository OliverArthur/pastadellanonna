import 'package:flutter/material.dart';
import 'package:pastadellanonna/models/products.dart';
import 'package:pastadellanonna/widget/detailsItem.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductModel product = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.teal,
              expandedHeight: 250.0,
              floating: true,
              pinned: true,
              snap: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(product.name),
                centerTitle: true,
                background: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: AssetImage(product.image),
                          foregroundColor: Colors.white,
                          radius: 80.0,
                        ),
                        width: 150.0,
                        height: 150.0,
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF), // border color
                          shape: BoxShape.circle,
                        ))
                  ],
                ),
                collapseMode: CollapseMode.parallax,
              ),
            ),
          ];
        },
        body: createDetailsItemWidget(product),
      ),
    );
  }
}
