import 'package:flutter/material.dart';
import 'package:newsee/presentation/pages/SearchPage/SearchPage.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final int visibilityFlag;

  const Header({
    Key? key,
    this.visibilityFlag = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double appBarHeight = kToolbarHeight;

    return AppBar(
      toolbarHeight: appBarHeight,
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                'assets/logo.png',
                height: appBarHeight * 0.5,
                fit: BoxFit.contain,
              ),
            ),
            if (visibilityFlag != -1)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                child: const Icon(
                  Icons.search,
                  color: Color(0xFF0038FF),
                  size: kToolbarHeight * 0.5,
                ),
              ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: const Color(0xFFD4D4D4),
          height: 1.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
