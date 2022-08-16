import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallsample_flutter/screens/Below_buttons.dart';
import 'package:wallsample_flutter/screens/button_containers.dart';
import 'package:wallsample_flutter/screens/card_container.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: GNav(tabs: [GButton(icon: Icons.home),GButton(icon: Icons.monetization_on_rounded), GButton(icon: Icons.settings)]),
      backgroundColor: Colors.grey[300],
    
   
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        'My',
                        style:
                            TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 26),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add))
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
          // Card area
          Container(
            height: 170,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                First_container(
                  Balance: 7345.00,
                  Cardnumber: 764538,
                  expiarymonth: 11,
                  expiaryyear: 24,
                  Color: Colors.blue,
                ),
                First_container(
                    Balance: 45638.00,
                    Cardnumber: 647633,
                    expiarymonth: 08,
                    expiaryyear: 22,
                    Color: Colors.deepPurple[400]),
                First_container(
                    Balance: 6546.75,
                    Cardnumber: 875425,
                    expiarymonth: 05,
                    expiaryyear: 28,
                    Color: Colors.black45),
                First_container(
                    Balance: 76453.68,
                    Cardnumber: 674536,
                    expiarymonth: 09,
                    expiaryyear: 23,
                    Color: Colors.black87)
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            
            children: [
    Button_containers(buttoniconpath: 'https://cdn-icons.flaticon.com/png/128/2769/premium/2769257.png?token=exp=1660672763~hmac=f5149c761edea7cf6005fbe68cda5a31', buttonname: 'Send'),
    Button_containers(buttoniconpath: 'https://cdn-icons-png.flaticon.com/128/4289/4289322.png', buttonname: 'Pay'),
  Button_containers(buttoniconpath: 'https://cdn-icons-png.flaticon.com/128/3062/3062544.png', buttonname: 'Bills') ,         
            
            ],
          ),
          SizedBox(height: 30,),
          Column(children: [
            //Below Buttons
            Below_buttons(belowiconpath: 'https://cdn-icons.flaticon.com/png/128/548/premium/548133.png?token=exp=1660672688~hmac=5afbf97da6e0aa5893a7897b9c1e505c', headertext: 'Statistics', footertext: 'Payment and income'),
            SizedBox(height: 13,),
            Below_buttons(belowiconpath: 'https://cdn-icons-png.flaticon.com/128/2761/2761064.png', headertext: 'Transactions', footertext: 'Transaction History'),
        
          ],)
       
        ],
      )),
    );
  }
}