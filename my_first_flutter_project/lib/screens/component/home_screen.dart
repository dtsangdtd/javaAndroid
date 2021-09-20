import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_project/utilities/constants.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: public_member_api_docs

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildHeaderSearchBox() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Text("Hi Sang! Make sure you are safe covid 19 ",
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        color: Colors.black45, fontWeight: FontWeight.bold)),
                Spacer(),
                Icon(
                  Icons.add_moderator,
                  color: kPrimaryColor,
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: kPrimaryColor.withOpacity(0.23))
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search for your Yacht...",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                          fontFamily: GoogleFonts.allura().fontFamily,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: kPrimaryColor,
                        )),
                  ),
                ))
          ],
        ));
  }

  Widget _buildNearByYou() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Near by ",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        WidgetSpan(
                          child:
                              Icon(Icons.person_pin_circle_outlined, size: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: kDefaultPadding / 5),
                    height: 8.0,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(right: kDefaultPadding),
          child: RaisedButton(
              onPressed: () => {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    );
  }

  Widget _buildHeadingPopulate() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Container(
            height: 20,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Tour Populate",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(right: kDefaultPadding / 5),
                    height: 8.0,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNearByCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NearByYouCard(
              image: "assets/yachts/yacht1.jpg",
              title: "Classic",
              address: "Hòn Tiên",
              price: 1000,
              press: () => {}),
          NearByYouCard(
              image: "assets/yachts/yacht2.jpg",
              title: "Business",
              address: "Phú Quốc",
              price: 1000,
              press: () => {}),
          NearByYouCard(
              image: "assets/yachts/yacht3.jpg",
              title: "Business",
              address: "Hà Tiên",
              price: 1000,
              press: () => {}),
          NearByYouCard(
              image: "assets/yachts/yacht4.jpg",
              title: "Luxury",
              address: "Resort Vin",
              price: 1000,
              press: () => {})
        ],
      ),
    );
  }

  Widget _buildTourPopulate() {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 12, bottom: 30),
              children: [
                InspirationCard(
                  image: "assets/yachts/yacht1.jpg",
                  description:
                      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                  title: "Top 10 Yacht Luxury ",
                ),
                SizedBox(
                  height: 20.0,
                ),
                InspirationCard(
                  image: "assets/yachts/yacht2.jpg",
                  description:
                      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit,",
                  title: "Top 5 Yacht Rent a lot ",
                ),
                SizedBox(
                  height: 20.0,
                ),
                InspirationCard(
                  image: "assets/yachts/yacht3.jpg",
                  description:
                      "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit,",
                  title: "Top 5 Popular place ",
                ),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          _buildHeaderSearchBox(),
          _buildNearByYou(),
          _buildNearByCard(),
          _buildHeadingPopulate(),
          _buildTourPopulate()
        ],
      ),
    );
  }
}

class InspirationCard extends StatelessWidget {
  final String image, title, description;

  const InspirationCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _indTitleTextStyle = Theme.of(context)
        .textTheme
        .headline6
        ?.copyWith(color: kPrimaryColor, fontWeight: FontWeight.w500);
    final _indSubTextStyle =
        Theme.of(context).textTheme.subtitle2?.copyWith(color: kPrimaryColor);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 140,
        padding: EdgeInsets.only(left: 20),
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white12, boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 20,
              color: kPrimaryColor.withOpacity(0.20))
        ]),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
                SizedBox(height: 14),
                Row(
                  children: [
                    Icon(Icons.beach_access, size: 20, color: kPrimaryColor),
                    SizedBox(height: 10),
                    Text(description, style: TextStyle(color: Colors.black87))
                  ],
                )
              ],
            ),
            Positioned(
              right: -60,
              top: -6,
              child: Container(
                height: 186,
                width: 190,
                child: CircleAvatar(
                  backgroundImage:
                      ResizeImage(AssetImage(image), width: 190, height: 186),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NearByYouCard extends StatelessWidget {
  final String image, title, address;
  final double price;
  final Function() press;
  const NearByYouCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.address,
      required this.price,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _ratingValue;
    return Container(
      margin: EdgeInsets.all(10.0),
      width: size.width * 0.7,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              GestureDetector(
                onTap: press,
                child: Card(
                  child: Image.asset(image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.pink.shade400,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 7),
                      blurRadius: 10.0,
                      color: kPrimaryColor.withOpacity(0.20))
                ]),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$address".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                      WidgetSpan(
                          child: Padding(
                        padding: EdgeInsets.all(0.1),
                        child: Icon(
                          Icons.location_pin,
                          color: kPrimaryColor,
                        ),
                      ))
                    ]),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Column(
                      children: [
                        RatingBar(
                            itemSize: 20,
                            initialRating: 4.5,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ratingWidget: RatingWidget(
                                full: Icon(Icons.star, color: Colors.orange),
                                half: Icon(
                                  Icons.star_half,
                                  color: Colors.orange,
                                ),
                                empty: Icon(
                                  Icons.star_outline,
                                  color: Colors.orange,
                                )),
                            onRatingUpdate: (value) {}),
                        Text(
                          "$price\$",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(color: kPrimaryColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
