import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget createDetailsItemWidget(data) {
  final String price = data.price.toString();
  final List<String> productBase = data.baseIngredients;
  return ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 10.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.attach_money),
            Text(
              price,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      ListTile(
        title: Text(
          data.name + ' - ' + data.ingredients,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            data.description,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
      ListTile(
        title: Text(
          'Contiene:',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: createTextWidget(productBase),
        ),
      ),
      ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.timer),
                  ),
                ),
                Text(
                  data.timer,
                  style: TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.people),
                  ),
                ),
                Text(
                  data.portion,
                  style: TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.trending_up),
                  ),
                ),
                Text(
                  data.calories,
                  style: TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 30.0,
      ),
      ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.info,
              size: 24.0,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 300.0,
              child: Text(
                data.note,
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
            ),
          ],
        ),
      ),
      ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.info,
              size: 24.0,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 300.0,
              child: Text(
                data.warning,
                style: TextStyle(
                    fontSize: 14.0
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: RaisedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.phone,
                color: Colors.white,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'LLAMAR PARA HACER PEDIDO',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'Roboto'),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24.0))),
          color: Colors.teal,
          elevation: 1,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
          onPressed: () {
          },
        ),
      )
    ],
  );
}

Widget createTextWidget(List<String> strings) {
  return Column(
      children: strings
          .map(
            (item) => Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item,
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10.0,
                      child: Divider(
                        color: Colors.black12,
                      ),
                    ),
                  ],
                )),
          )
          .toList());
}
