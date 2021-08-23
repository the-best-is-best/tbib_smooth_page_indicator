import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tbib_smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16),
                SizedBox(
                  height: 300,
                  child: PageView(
                    controller: controller,
                    children: List.generate(
                        6,
                        (_) => Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              child: Container(height: 280),
                            )),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Worm'),
                ),
                Container(
                  child: TBIBSmoothPageIndicator(
                    controller: controller,
                    count: 6,
                    effect: WormEffect(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Expanding Dots '),
                ),
                Container(
                  child: TBIBSmoothPageIndicator(
                    controller: controller,
                    count: 6,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 4,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text('Jumping Dot '),
                ),
                TBIBSmoothPageIndicator(
                  controller: controller,
                  count: 6,
                  effect: JumpingDotEffect(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text('slide Dots '),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Scrolling Dots '),
                ),
                TBIBSmoothPageIndicator(
                    controller: controller,
                    count: 6,
                    effect: ScrollingDotsEffect(
                      activeStrokeWidth: 2.6,
                      activeDotScale: .4,
                      radius: 8,
                      spacing: 10,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Scale'),
                ),
                Container(
                  child: TBIBSmoothPageIndicator(
                    controller: controller,
                    count: 6,
                    effect: ScaleEffect(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Slide'),
                ),
                Container(
                  child: TBIBSmoothPageIndicator(
                    controller: controller,
                    count: 6,
                    effect: SlideEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 24.0,
                        dotHeight: 16.0,
                        dotColor: Colors.grey,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 2,
                        activeDotColor: Colors.indigo),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
