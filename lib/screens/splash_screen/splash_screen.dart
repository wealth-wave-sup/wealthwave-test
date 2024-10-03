import 'package:flutter/material.dart';
import 'package:wealthwave/responsive_builder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg-3.jpg'), fit: BoxFit.fill),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (ResponsiveBuilder.isWeb(context))
            const Expanded(child: SizedBox()),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.amberAccent,
                ),
              ],
            ),
          ),
          if (ResponsiveBuilder.isWeb(context))
            const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
