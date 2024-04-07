import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowPageView extends StatelessWidget {
  final PageController _pageController = PageController();
  ShowPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;

    return SizedBox(
      width: widthSize,
      height: 300,
      child: PageView(
        controller: _pageController,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl:
                'https://wzmdhsigrbbmiiaudjst.supabase.co/storage/v1/object/sign/store_app_images/store_application/afshar_store.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJzdG9yZV9hcHBfaW1hZ2VzL3N0b3JlX2FwcGxpY2F0aW9uL2Fmc2hhcl9zdG9yZS5wbmciLCJpYXQiOjE3MTI0MDM4NjMsImV4cCI6MTgwNzAxMTg2M30.E_yT0pbbkZ6aUwy-X_rvImpo_10HeepZcRGLglink6U&t=2024-04-06T11%3A44%3A15.566Z',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          CachedNetworkImage(
            imageUrl:
                'https://wzmdhsigrbbmiiaudjst.supabase.co/storage/v1/object/sign/store_app_images/store_application/swimming.jpg?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJzdG9yZV9hcHBfaW1hZ2VzL3N0b3JlX2FwcGxpY2F0aW9uL3N3aW1taW5nLmpwZyIsImlhdCI6MTcxMjQwMzg3NiwiZXhwIjoxODA3MDExODc2fQ.BWijGB13FTW0t580oAejjsZfE1ES0pDkkSwrO4PyK2k&t=2024-04-06T11%3A44%3A27.414Z',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          CachedNetworkImage(
            imageUrl:
                'https://wzmdhsigrbbmiiaudjst.supabase.co/storage/v1/object/sign/store_app_images/store_application/swimming_things.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJzdG9yZV9hcHBfaW1hZ2VzL3N0b3JlX2FwcGxpY2F0aW9uL3N3aW1taW5nX3RoaW5ncy5wbmciLCJpYXQiOjE3MTI0MDM4OTMsImV4cCI6MTgwNzAxMTg5M30.0WjnuLrXnWyKWa3M4TuMWlOVwNEVIFe3WhgZw-XSRKc&t=2024-04-06T11%3A44%3A45.172Z',
            placeholder: (context, url) => const CircularProgressIndicator(
              value: 1,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
