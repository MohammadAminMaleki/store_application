import 'package:store_application/widgets/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowPageView extends StatefulWidget {
  const ShowPageView({super.key});

  @override
  State<ShowPageView> createState() => _ShowPageViewState();
}

class _ShowPageViewState extends State<ShowPageView> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 1);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      color: Colors.red,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100)
        ),
       // width: 1000,
       // height: 800,
        child: PageView(
          controller: _pageController,
          children: const <Widget>[
            Placeholder(
              child: CachedNetworkImageWidget(
                imageUrl:
                    'https://wzmdhsigrbbmiiaudjst.supabase.co/storage/v1/object/sign/store_app_images/store_application/smaller.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJzdG9yZV9hcHBfaW1hZ2VzL3N0b3JlX2FwcGxpY2F0aW9uL3NtYWxsZXIucG5nIiwiaWF0IjoxNzEyODIyMTY0LCJleHAiOjE4MDc0MzAxNjR9.WXhhLR791yXoR9LE8uPvF_S6uR9p3Qp1GYhZJKTLK_w&t=2024-04-11T07%3A56%3A01.312Z',
              ),
            ),
            Placeholder(
              child: CachedNetworkImageWidget(
                imageUrl:
                    'https://wzmdhsigrbbmiiaudjst.supabase.co/storage/v1/object/sign/store_app_images/store_application/smaller1.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJzdG9yZV9hcHBfaW1hZ2VzL3N0b3JlX2FwcGxpY2F0aW9uL3NtYWxsZXIxLnBuZyIsImlhdCI6MTcxMjgyMjE5MCwiZXhwIjoxODA3NDMwMTkwfQ.yyGx217DHs_m_-UyjV1f77Opvk_DNbSVxXmaTPE4Puo&t=2024-04-11T07%3A56%3A26.725Z',
              ),
            ),
            // CachedNetworkImageWidget(
            //   imageUrl:
            //       'https://wzmdhsigrbbmiiaudjst.supabase.co/storage/v1/object/sign/store_app_images/store_application/swimming_things.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJzdG9yZV9hcHBfaW1hZ2VzL3N0b3JlX2FwcGxpY2F0aW9uL3N3aW1taW5nX3RoaW5ncy5wbmciLCJpYXQiOjE3MTI0MDM4OTMsImV4cCI6MTgwNzAxMTg5M30.0WjnuLrXnWyKWa3M4TuMWlOVwNEVIFe3WhgZw-XSRKc&t=2024-04-06T11%3A44%3A45.172Z',
            // ),
          ],
        ),
      ),
    );
  }
}
