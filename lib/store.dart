import 'package:flutter/material.dart';
class Store extends StatefulWidget {
  @override
  Store_body createState() => Store_body();
}

class Store_body extends State<Store> {
  var menu_name_style = TextStyle(color: Colors.white, fontSize: 17);
  var items = [
    {
      "iPhone 1": ["""Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 50.00", "hidden"]
    },
    {
      "iPhone 2": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 70.00", "hidden"]
    },
    {
      "iPhone 3": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 80.00", "hidden"]
    },
    {
      "iPhone 4": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 100.00", "hidden"]
    },
    {
      "iPhone 5": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 140.00", "hidden"]
    },
    {
      "iPhone 6": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 160.00", "hidden"]
    },
    {
      "iPhone 7": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 200.00", "hidden"]
    },
    {
      "iPhone 8": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 250.00", "hidden"]
    },
    {
      "iPhone 9": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 400.00", "hidden"]
    },
    {
      "iPhone 10": ["""
Description:
Processor: ARM 11, 412 Mhz.
RAM: 128 MB.
Storage: 4-16 GB Flash
Core Design: ARM1176 x 1.
OS: Mac OS X 10.4.10.
Display: 3.5-inch display, 320_480
Photo: 2.0 megapixel rear camera.
Photo Support: JPG, GIF, TIFF
Video Support: H.264 video
Dimensions: 4.5 x 2.4 x 0.46.
Average weight: 4.8 oz.
Battery: Lithium ion battery
Color: Aluminum (gray)""", "Price : 500.00", "hidden"]
    }
  ];
  var item_names = ["iPhone 1", "iPhone 2", "iPhone 3", "iPhone 4", "iPhone 5", "iPhone 6", "iPhone 7", "iPhone 8", "iPhone 9", "iPhone 10"];
  var button_color = Colors.red;
  var credit_card = new TextEditingController();
  var phone_number = new TextEditingController();
  var address = new TextEditingController();
  var full_name = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height - 93,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.redAccent)),
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                    item_names[index],
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  margin: EdgeInsets.only(bottom: 20)),
                              InkWell(
                              child: Icon(Icons.arrow_circle_down, color: Colors.redAccent),
                                onTap: (){
                                setState(() {
                                  if (items[index][item_names[index]][2] == "hidden")
                                  items[index][item_names[index]][2] = "show";
                                  else{
                                    items[index][item_names[index]][2] = "hidden";
                                  }

                                });
                                },
                              ),
                            ],
                          ),
                          if (items[index][item_names[index]][2]!="hidden")
                          Container(
                            child: Text(
                              items[index][item_names[index]][0],
                              style: TextStyle(
                                  fontSize: 20, color: Colors.red[600]),
                            ),
                          ),
                          if (items[index][item_names[index]][2]!="hidden")
                          Container(
                            child: Text(
                              items[index][item_names[index]][1],
                              style: TextStyle(
                                  fontSize: 20, color: Colors.red[600]),
                            ),
                          ),
                          if (items[index][item_names[index]][2]!="hidden")
                            Container(
                              child: InkWell(
                                child: //Text("Purchase", style: TextStyle(color: Colors.redAccent, fontSize: 20)),
                                Icon(Icons.account_balance_wallet_rounded, color: Colors.redAccent),
                                onTap: (){
                                  setState(() {
                                  });
                                },
                              ),
                            ),
                        ],
                      )
                  );
                }
                )
        ),
      ],
    )
        )
    );
  }
}
