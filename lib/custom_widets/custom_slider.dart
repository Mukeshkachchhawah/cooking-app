import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class Custom_Slider extends StatelessWidget {
  const Custom_Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(children: [
      Image.network("https://whatsgabycooking.com/wp-content/uploads/2021/03/Land-o-Lakes-Cheddar-Chive-Biscuits-3-copy-2.jpg", fit: BoxFit.cover,),
         Image.network("https://static.toiimg.com/photo/92836913.cms", fit: BoxFit.cover,),
      Image.network("https://www.verywellhealth.com/thmb/xLzpj8utxpiCsL3BUw1HzRtbc18=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/best-breakfast-choices-and-diabetes-1087468-primary-recirc-603a39fe3b10439eaa9a0cf80a09eec2.jpg", fit: BoxFit.cover,),
 ],
  indicatorColor: Colors.red,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,);
  }
}
