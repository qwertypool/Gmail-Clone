import 'package:flutter/material.dart';

class GeneratedMailCouponScreen extends StatelessWidget {
  final String couponImage;

      GeneratedMailCouponScreen({Key key, @required this.couponImage})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.white,
  body: SafeArea(
    child: Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [Icon(Icons.arrow_back)],
              ),
              Row(
                children: [
                  Icon(Icons.archive),
                  SizedBox(width: 5.0),
                  Icon(Icons.delete),
                  SizedBox(width: 5.0),
                  Icon(Icons.mail),
                  SizedBox(width: 5.0),
                  Icon(Icons.more_vert)
                ],
              )
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Voucher',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  SizedBox(width: 8.0),
                  Container(
                    color: Colors.grey[200],
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                      child: Text(
                        'Odebrane',
                        style:
                            TextStyle(color: Colors.black, fontSize: 12.0),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [Icon(Icons.star_border)],
              )
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 45.0,
                width: 45.0,
                decoration: BoxDecoration(
                    color: Colors.blue[100], shape: BoxShape.circle),
                child: Center(
                  child: Text(
                    'M',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'McDonalds Poland',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Wczoraj',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text('do mnie',
                          style: TextStyle(color: Colors.grey)),
                      Icon(Icons.expand_more)
                    ],
                  )
                ],
              ),
              Spacer(flex: 1,),
              Row(
                children: [Icon(Icons.reply), Icon(Icons.more_vert)],
              )
            ],
          )
        ],
      ),
        ),
      ),
    );
  }
}