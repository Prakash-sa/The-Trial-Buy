import 'package:flutter/material.dart';
import 'package:flutter_myntra_clone/common_widgets/cached_image.dart';
import 'package:flutter_myntra_clone/common_widgets/link_button.dart';
import 'package:flutter_myntra_clone/common_widgets/primary_button.dart';
import 'package:flutter_myntra_clone/data_provider/product_data.dart';
import 'package:flutter_myntra_clone/data_provider/product_dto.dart';
import 'package:flutter_myntra_clone/screens/body/body.dart';
import 'package:flutter_myntra_clone/screens/body/2d.dart';
import 'package:flutter_myntra_clone/screens/body/3d.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/product-detail';
  final ProductDto productDto;

  ProductDetails({this.productDto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CachedImage(
                      url: productDto.imageUrl,
                      height: (MediaQuery.of(context).size.height -
                              MediaQuery.of(context).padding.top -
                              MediaQuery.of(context).padding.bottom) *
                          0.75,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      productDto.name,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      productDto.description,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Round Neck T-shirt',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      productDto.price,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      productDto.mrpPrice,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      productDto.discountString,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(255, 144, 90, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Inclusive of all taxes',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(3, 166, 133, 1),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 15),
                                child: Text(
                                  'Size Estimator',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                        heroTag: "btn1",
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(Body.routeName);
                                        },
                                        child: Icon(
                                          Icons.height,
                                          color:
                                              Color.fromRGBO(255, 63, 108, 1),
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'User Details',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                        heroTag: "btn2",
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(TwoD.routeName);
                                        },
                                        child: Icon(
                                          Icons.account_circle,
                                          color:
                                              Color.fromRGBO(255, 63, 108, 1),
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '2D try on',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  /*Column(
                                    children: [
                                      FloatingActionButton(
                                        heroTag: "bt3",
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(ThreeD.routeName);
                                        },
                                        child: Icon(
                                          Icons.account_box,
                                          color:
                                              Color.fromRGBO(255, 63, 108, 1),
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Side Image',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),*/
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'You Pay Only: ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '₹701',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(255, 62, 108, 1),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'Save: ₹78',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(3, 166, 133, 1),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Apply the coupon during checkout.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Purchase of 2 or more items. T&C apply.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent.shade100,
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 62, 108, 1),
                                    ),
                                  ),
                                  child: Text(
                                    'MAGIC10',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Tap to copy',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'EMI option available',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'View Plan',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(255, 62, 108, 1),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'EMI starting from Rs. 37/month',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Easy 30 days returns and exchanges',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Choose to return or exchange for a different size (if available) within 30 days.',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).padding.left -
                            MediaQuery.of(context).padding.right) *
                        0.45,
                    child: ButtonTheme(
                      child: PrimaryButton(
                        title: 'ADD TO BAG',
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
