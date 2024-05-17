import 'package:casting_app_web/core/theme/theme_app.dart';
import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
class SectionDiscovred extends StatelessWidget {
  const SectionDiscovred({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                color: blackColor, // Background color
         
          child: Stack(
            alignment: Alignment.center,
            children: [
               Expanded(child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,                     
                children: [
                  Text('Get Discovred', style: textStyleTitle.copyWith(color: whiteColor),),
                  CommonButton(
                    onPressed: (){},
                    text: 'Sign in ', background: roseColor, colorText: whiteColor)
                ],
                              )),
              Expanded(
                child:
                Align(
                  alignment: Alignment.bottomRight,
child: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/022/484/378/non_2x/cute-and-cheerful-3d-girl-model-transparent-background-free-png.png', // Your image URL
                  width: 300.0,
                  height: 300.0,
                 
                ),
                ),
                 
              ),
             
            ],
          ),
    );
  }
}