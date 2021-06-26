import 'package:flutter/material.dart';
import 'package:freshFoodShopbyFlutter/models/FreshFood.dart';
import 'package:freshFoodShopbyFlutter/screens/shop_screen.dart';

class FreshFoodScreen extends StatefulWidget {
  @override
  _FreshFoodScreenState createState() => _FreshFoodScreenState();
}

class _FreshFoodScreenState extends State<FreshFoodScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  int _selectedPage = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          size: 30,
          color: Colors.grey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              'Top Picks',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.withOpacity(0.6),
            // labelPadding: EdgeInsets.symmetric(horizontal: 35.0),
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'Top',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Vegetables',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Fruits',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Nuts',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Mushroom',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: 500.0,
            width: double.infinity,
            child: PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  _selectedPage = index;
                });
              },
              controller: _pageController,
              itemCount: freshFood.length,
              itemBuilder: (BuildContext context, int index) {
                return _freshFoodSelector(index);
              },
            ),
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    freshFood[_selectedPage].description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _freshFoodSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 500.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ShopScreen(
                freshfood: freshFood[index],
              ),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
              child: Stack(
                children: [
                  Hero(
                    tag: freshFood[index].imageUrl,
                    child: Center(
                      child: Image(
                        height: 280.0,
                        width: 280.0,
                        fit: BoxFit.contain,
                        image: AssetImage(freshFood[index].imageUrl),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'From',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF005524),
                              fontSize: 15),
                        ),
                        Text(
                          '\$' + freshFood[index].price.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF005524),
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 26,
                    bottom: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          freshFood[index].category.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF005524),
                              fontSize: 15),
                        ),
                        Text(
                          freshFood[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF005524),
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 4,
              child: RawMaterialButton(
                shape: CircleBorder(),
                onPressed: () => print('Add to cart'),
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                fillColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
