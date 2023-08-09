

import 'package:flutter/material.dart';
import 'package:iti_proj/view/Login.dart';
import 'package:onboarding/onboarding.dart';



class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  late int index;

  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            width: 0.0,
            color: Colors.transparent,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image(image: AssetImage('assets/image/main_logo.png'),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome To Vendo',
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "We're thrilled to have you here. Explore our wide range of products, from the latest gadgets to stylish fashion items and everything in between. With user-friendly navigation and secure payment options, your shopping experience is bound to be seamless and enjoyable. Feel free to browse, add to cart, and indulge in the convenience of online shopping at its finest. Thank you for choosing us, and happy shopping",
                    style: pageInfoStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            width: 0.0,
            color: Colors.transparent,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 40.0,
                ),
                child: Image(image: AssetImage('assets/image/welcome_easy.png'),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Very easy !',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Discover a world of effortless shopping at your fingertips. Our user-friendly interface ensures a seamless and hassle-free experience, making your journey from browsing to checkout a breeze. Explore a diverse range of products, effortlessly add them to your cart, and securely complete your purchase with just a few clicks. Thank you for choosing our platform for your online shopping needs. Enjoy the simplicity and convenience that our store brings to your fingertips. Happy shopping!",
                    style: pageInfoStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            width: 0.0,
            color: Colors.transparent,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 40.0,
                ),
                child: Image(image: AssetImage('assets/image/welcome_secure.png'),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Very secure',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your safety and security are our top priorities. Shop with confidence knowing that our store employs the latest state-of-the-art security measures to protect your personal information and ensure a worry-free shopping experience. From secure payment gateways to robust data encryption, we've got you covered every step of the way. Thank you for trusting us with your online shopping journey. Explore, shop, and relax, knowing that your privacy and security are in capable hands. Happy shopping!",
                    style: pageInfoStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  static const width = 100.0;
  @override
  void initState() {
    super.initState();
    index = 0;
  }

  SizedBox _skipButton({void Function(int)? setIndex}) {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultSkipButtonBorderRadius,
          color: defaultSkipButtonColor,
          child: InkWell(
            borderRadius: defaultSkipButtonBorderRadius,
            onTap: () {
              if (setIndex != null) {
                index = 2;
                setIndex(2);
              }
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
              child: Text(
                'Skip',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox get _signupButton {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultProceedButtonBorderRadius,
          color: defaultProceedButtonColor,
          child: InkWell(
            borderRadius: defaultProceedButtonBorderRadius,
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const LoginScreen()));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Text(
                'Start',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'vendo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF151A7B),
                  Color(0xFFE63B60),
                ],
              ),
            ),
            child: Onboarding(
                pages: onboardingPagesList,
                onPageChange: (int pageIndex) {
                  index = pageIndex;
                },
                footerBuilder: (context, dragDistance, pagesLength, setIndex) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(162, 21, 26, 123),
                          Color.fromARGB(110, 34, 59, 201),
                        ],
                      ),
                      border: Border.all(
                        width: 0.0,
                        color: background,
                      ),
                    ),
                    child: ColoredBox(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            index != pagesLength - 1
                                ? _skipButton(setIndex: setIndex)
                                : _signupButton,
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: CustomIndicator(
                                netDragPercent: dragDistance,
                                pagesLength: pagesLength,
                                indicator: Indicator(
                                  indicatorDesign: IndicatorDesign.polygon(
                                    polygonDesign: PolygonDesign(
                                      polygon: DesignType.polygon_circle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
