import "package:flutter/material.dart";

class BrandCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    final ismobile = sizeW < 780;

    return Padding(
      padding: const EdgeInsets.all(25),
      child:
      ismobile 
      ?
Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          crossAxisCount:2, // Number of columns in the grid
          mainAxisSpacing: 25, // Spacing between rows
          crossAxisSpacing: 25,
          shrinkWrap: true,
 // Spacing between columns
         children:  [
 BrandItems(),
          BrandItems(),
          BrandItems(),
          BrandItems(),
          BrandItems(),
         ]
          
        ),
      )
      :
       Padding(
         padding: const EdgeInsets.all(30),
         child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 25,
          spacing: 25,
          children: [
            BrandItems(),
            BrandItems(),
            BrandItems(),
            BrandItems(),
            BrandItems(),
          ],
               ),
       ),
    );
  }
}

class BrandItems extends StatelessWidget {
  const BrandItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40Ik_wBLtarhD6Pk43H3_BGCDEPfNnX2A08OImE2HcQ&s',
      ),
    );
  }
}
