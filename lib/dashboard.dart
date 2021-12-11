
import 'package:ecommerce/ecommerce/models/productlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyDashboard extends StatefulWidget {

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  int _selectnavigationbar=1;
  final imagelist=[
    'images/offer1.png',
    'images/offer2.png',
    'images/offer3.png',
    'images/offer4.png'
  ];

  final List<Productlistmodel> ProductlistModel=[
    Productlistmodel('101', 'TOMATO', 'বাদাম খান আর গান গান', 99, 10, 2, 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYVU-GFStOSmXTIp1pnOnNvR2ykxp-DY1a4w&usqp=CAU'),
    Productlistmodel('101', 'LEMON', 'বাদাম খান আর গান গান', 99, 10, 2, 10, 'https://thekitchencommunity.org/wp-content/uploads/2020/12/Are-limes-unripe-lemons-1200x900.jpg'),
    Productlistmodel('101', 'COCONUT', 'বাদাম খান আর গান গান', 99, 10, 2, 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzNQjt5gQlreMSY5YB17XlsKHOl6yigzhROA&usqp=CAU'),
    Productlistmodel('101', 'BRINGEL', 'বাদাম খান আর গান গান', 99, 10, 2, 10, 'https://gravitybazar.com/wp-content/uploads/2020/11/brinjal.jpg'),
    Productlistmodel('101', 'LADIES FINGER', 'বাদাম খান আর গান গান', 99, 10, 2, 10, 'https://www.jugantor.com/assets/news_photos/2021/06/18/image-433128-1624036590.jpg'),
    Productlistmodel('101', 'CARROT', 'বাদাম খান আর গান গান', 99, 10, 2, 10, 'https://dmpnews.org/wp-content/uploads/2018/03/1-93.jpg'),
    Productlistmodel(107, 'BANANA', 'KOLA KHABA', 20, 4, 2, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRebg3U11aagmBwzOqkvuyGKFOYFz8mnUM2SWONTEB6A7TltXDMTk2yrQ2XtKGuNrI00AE&usqp=CAU')

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ShopTown'),
        backgroundColor: Color(0XFFff781f),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 180,
                child: CarouselSlider.builder(
                  slideBuilder:(index){
                    return Container(
                      child: Image.asset(imagelist[index],fit: BoxFit.cover,),
                    );
                  },
                  slideTransform: CubeTransform(),
                  slideIndicator: CircularSlideIndicator(
                    padding: EdgeInsets.only(bottom: 10)
                  ),
                  autoSliderDelay: Duration(seconds: 5),
                  enableAutoSlider: true,
                  unlimitedMode: true,
                    itemCount: imagelist.length,

                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: ProductlistModel.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:  2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context,index) {
                    return Card(
                      elevation: 20,
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            child: Image.network(ProductlistModel[index].imageurl,fit: BoxFit.cover,),
                          ),
                          Text(ProductlistModel[index].title)
                        ],
                      )

                    );
                    }
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.account_box)),
          BottomNavigationBarItem(label: 'setting', icon: Icon(Icons.settings)),
        ],
        backgroundColor:Color(0XFFff781f),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        elevation: 20,
        currentIndex: _selectnavigationbar,
        onTap: (int index){
          setState(() {
            _selectnavigationbar=index;
          });
          Fluttertoast.showToast(msg: index.toString(),toastLength: Toast.LENGTH_LONG);

        },
      ),
    );
  }
}
