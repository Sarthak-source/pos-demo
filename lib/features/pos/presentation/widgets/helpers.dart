import 'package:flutter/material.dart';
import 'package:pos_demo/core/extensions/responsive_ext.dart';

Row desktopView(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 14,
        child: Column(
          children: [
            // _topMenu(
            //   title: 'Lorem Restourant',
            //   subTitle: '20 October 2022',
            //   action: _search(),
            // ),
            topTab(),
            productGrid(context)
          ],
        ),
      ),
      Expanded(flex: 1, child: Container()),
      orderTotals(),
    ],
  );
}

Column mobileOrTabView(BuildContext context) {
  return Column(
    children: [topTab(), productGrid(context)],
  );
}

Container topTab() {
  return Container(
    height: 100,
    padding: const EdgeInsets.symmetric(vertical: 24),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _itemTab(
          icon: 'icons/icon-burger.png',
          title: 'Burger',
          isActive: true,
        ),
        _itemTab(
          icon: 'icons/icon-noodles.png',
          title: 'Noodles',
          isActive: false,
        ),
        _itemTab(
          icon: 'icons/icon-drinks.png',
          title: 'Drinks',
          isActive: false,
        ),
        _itemTab(
          icon: 'icons/icon-desserts.png',
          title: 'Desserts',
          isActive: false,
        ),
        _itemTab(
          icon: 'icons/icon-desserts.png',
          title: 'Desserts',
          isActive: false,
        ),
        _itemTab(
          icon: 'icons/icon-desserts.png',
          title: 'Desserts',
          isActive: false,
        ),
        _itemTab(
          icon: 'icons/icon-desserts.png',
          title: 'Desserts',
          isActive: false,
        ),
        _itemTab(
          icon: 'icons/icon-desserts.png',
          title: 'Desserts',
          isActive: false,
        ),
      ],
    ),
  );
}

Expanded orderTotals() {
  return Expanded(
    flex: 5,
    child: Column(
      children: [
        // _topMenu(
        //   title: 'Order',
        //   subTitle: 'Table 8',
        //   action: Container(),
        // ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView(
            children: [
              _itemOrder(
                image: 'items/1.png',
                title: 'Orginal Burger',
                qty: '2',
                price: '\$5.99',
              ),
              _itemOrder(
                image: 'items/2.png',
                title: 'Double Burger',
                qty: '3',
                price: '\$10.99',
              ),
              _itemOrder(
                image: 'items/6.png',
                title: 'Special Black Burger',
                qty: '2',
                price: '\$8.00',
              ),
              _itemOrder(
                image: 'items/4.png',
                title: 'Special Cheese Burger',
                qty: '2',
                price: '\$12.99',
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xFFFFFFFF),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF474747)),
                    ),
                    Text(
                      '\$40.32',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF474747)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tax',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF474747)),
                    ),
                    Text(
                      '\$4.32',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF474747)),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 2,
                  width: double.infinity,
                  color: const Color(0xFFFFFFFF),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF474747)),
                    ),
                    Text(
                      '\$44.64',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF474747)),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xFF474747),
                    backgroundColor: const Color(0xFF094F90),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.print, size: 16),
                      SizedBox(width: 6),
                      Text('Print Bills')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Expanded productGrid(BuildContext context) {
  return Expanded(
    child: GridView.count(
      crossAxisCount: context.isDesktop
          ? 4
          : context.isTablet
              ? 2
              : 1, // Adjusts the number of columns based on screen width
      childAspectRatio: context.isDesktop
          ? (1 / 1.2)
          : context.isTablet
              ? (1 / 1.4)
              : (1), // Adjusts the aspect ratio based on screen width
      children: [
        _item(
          image: 'items/1.png',
          title: 'Original Burger',
          price: '\$5.99',
          item: '11 item',
        ),
        _item(
          image: 'items/2.png',
          title: 'Double Burger',
          price: '\$10.99',
          item: '10 item',
        ),
        _item(
          image: 'items/3.png',
          title: 'Cheese Burger',
          price: '\$6.99',
          item: '7 item',
        ),
        _item(
          image: 'items/4.png',
          title: 'Double Cheese Burger',
          price: '\$12.99',
          item: '20 item',
        ),
        _item(
          image: 'items/5.png',
          title: 'Spicy Burger',
          price: '\$7.39',
          item: '12 item',
        ),
        _item(
          image: 'items/6.png',
          title: 'Special Black Burger',
          price: '\$7.39',
          item: '39 item',
        ),
        _item(
          image: 'items/7.png',
          title: 'Special Cheese Burger',
          price: '\$8.00',
          item: '2 item',
        ),
        _item(
          image: 'items/8.png',
          title: 'Jumbo Cheese Burger',
          price: '\$15.99',
          item: '2 item',
        ),
        _item(
          image: 'items/9.png',
          title: 'Spicy Burger',
          price: '\$7.39',
          item: '12 item',
        ),
        _item(
          image: 'items/10.png',
          title: 'Special Black Burger',
          price: '\$7.39',
          item: '39 item',
        ),
        _item(
          image: 'items/11.png',
          title: 'Special Cheese Burger',
          price: '\$8.00',
          item: '2 item',
        ),
        _item(
          image: 'items/12.png',
          title: 'Jumbo Cheese Burger',
          price: '\$15.99',
          item: '2 item',
        ),
      ],
    ),
  );
}

Widget _itemOrder({
  required String image,
  required String title,
  required String qty,
  required String price,
}) {
  return Container(
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: const Color(0xFFFFFFFF),
    ),
    child: Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF474747),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF474747),
                ),
              )
            ],
          ),
        ),
        Text(
          '$qty x',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF474747),
          ),
        ),
      ],
    ),
  );
}

Widget _item({
  required String image,
  required String title,
  required String price,
  required String item,
}) {
  return Container(
    margin: const EdgeInsets.only(right: 20, bottom: 20),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: const Color(0xFFFFFFFF),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF474747),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              price,
              style: const TextStyle(
                color: Color(0xFF094F90),
                fontSize: 20,
              ),
            ),
            Text(
              item,
              style: const TextStyle(
                color: Color(0xFF474747),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _itemTab(
    {required String icon, required String title, required bool isActive}) {
  return Container(
    width: 180,
    margin: const EdgeInsets.only(right: 26),
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xFFFFFFFF),
      border: isActive
          ? Border.all(color: const Color(0xFF094F90), width: 3)
          : Border.all(color: const Color.fromARGB(255, 175, 175, 175), width: 3),
    ),
    child: Row(
      children: [
        const Icon(
          Icons.food_bank,
          color: Color(0xFF094F90),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF474747),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

Widget topMenu({
  required String title,
  required String subTitle,
  required Widget action,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF474747),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subTitle,
            style: const TextStyle(
              color: Color(0xFF474747),
              fontSize: 10,
            ),
          ),
        ],
      ),
      Expanded(flex: 1, child: Container(width: double.infinity)),
      Expanded(flex: 5, child: action),
    ],
  );
}

Widget search() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xFFFFFFFF),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Color(0xFF474747),
          ),
          SizedBox(width: 10),
          Text(
            'Search menu here...',
            style: TextStyle(color: Color(0xFF474747), fontSize: 11),
          )
        ],
      ));
}
