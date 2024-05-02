import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class Sareedetailpage extends StatelessWidget {
  const Sareedetailpage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: height * 0.6,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: height * 0.6,
                    child: InstaImageViewer(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('asset/saree/${index + 1}.jpeg'),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Product Description",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, _) => Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onRatingUpdate: (index) {},
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Similar Product",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("asset/saree/1.jpeg"),
                  backgroundColor: Colors.grey.shade200,
                  radius: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/saree/1.jpeg"),
                  backgroundColor: Colors.grey.shade200,
                  radius: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/saree/1.jpeg"),
                  backgroundColor: Colors.grey.shade200,
                  radius: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/saree/1.jpeg"),
                  backgroundColor: Colors.grey.shade200,
                  radius: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Fancy Banarasi Silk  Women's Saree",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "\$2000",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Free Delivery",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     ElevatedButton.icon(
          //         onPressed: () {},
          //         icon: Icon(Icons.shopping_cart),
          //         label: Text('Add To Cart')),
          //     ElevatedButton.icon(
          //         style: ButtonStyle(
          //             foregroundColor: MaterialStatePropertyAll(Colors.amber)),
          //         onPressed: () {},
          //         icon: Icon(Icons.shopping_cart),
          //         label: Text('Buy Now'))
          //   ],
          // )

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CartButton(
                label: 'Add To Cart',
              ),
              CartButton(label: 'Buy Now')
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class CartButton extends StatelessWidget {
  final String label;

  const CartButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.amber.shade400,
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 10),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.aBeeZee(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}


//  Row(
//             children: [
//               Container(
//                 height: 62,
//                 width: 210,
//                 padding: EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(
//                     color: Colors.black,
//                     width: 2,
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Icon(
//                       Icons.shopping_cart,
//                       color: Colors.black,
//                       size: 30,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       'Add to Cart',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

