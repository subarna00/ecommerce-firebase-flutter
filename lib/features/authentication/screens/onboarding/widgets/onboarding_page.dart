import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {

 final String image;
  final String title;
  final String subtitle;
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
    child: Column(
      children: [
        Image(
          width: THelperFunctions.screenWidth(context) * 0.8,
          height: THelperFunctions.screenHeight(context) * 0.6,
          image:  AssetImage(image),
          ),
          Text(title, 
          style: Theme.of(context).textTheme.headlineMedium, 
          textAlign: TextAlign.center,),
    
           SizedBox(height: TSizes.spaceBtwItems),
    
          Text(subtitle, 
          style: Theme.of(context).textTheme.bodyMedium, 
          textAlign: TextAlign.center
          )
      ],
    ),
    );
  }
}