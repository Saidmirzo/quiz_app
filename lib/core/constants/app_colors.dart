import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const Color black = Color(0xFF000000);
  static const Color accentColor = Colors.white;
  static const Color primaryColor = Color(0xff6A5AE0);
  static const Color secondaryColor = Color(0xff9087E5);
  static const Color pinkColor = Color(0xffFF8FA2);
  static const Color accent1Color = Color(0xffFFD6DD);
  static const Color accent2Color = Color(0xffC4D0FB);
  static const Color accent3Color = Color(0xffC9F2E9);
  static const Color blackColor = Color(0xff0C092A);
  static const Color grey1Color = Color(0xff49465F);
  static const Color grey2Color = Color(0xff858494);
  static const Color grey3Color = Color(0xffCCCCCC);
  static const Color grey4Color = Color(0xffE6E6E6);
  static const Color grey5Color = Color(0xffEFEEFC);
  static const Color avatarBgColor = Color(0xffBF83FF);
  

  
  

  



  static PrimaryColor primaryLight =  PrimaryColor(
    0xFF00845A,
    <int, Color>{
      100: const Color(0xFF14C1FA),
      80: const Color(0xFF14C1FA).withOpacity(.8),
      60: const Color(0xFF14C1FA).withOpacity(.6),
      40: const Color(0xFF14C1FA).withOpacity(.4),
      20: const Color(0xFF14C1FA).withOpacity(.2),
      10: const Color(0xFF14C1FA).withOpacity(.1),
    },
  );

  static PrimaryColor darkColor = PrimaryColor(
    0xFF16A249,
    <int, Color>{
     100: const Color(0xFF323438),
      80: const Color(0xFF323438).withOpacity(.8),
      60: const Color(0xFF323438).withOpacity(.6),
      40: const Color(0xFF323438).withOpacity(.4),
      20: const Color(0xFF323438).withOpacity(.2),
      10: const Color(0xFF323438).withOpacity(.1),
    },
  );
  static PrimaryColor greyColor = PrimaryColor(
    0xFF16A249,
    <int, Color>{
     100: const Color(0xFFA9A9A9),
      80: const Color(0xFFA9A9A9).withOpacity(.8),
      60: const Color(0xFFA9A9A9).withOpacity(.6),
      40: const Color(0xFFA9A9A9).withOpacity(.4),
      20: const Color(0xFFA9A9A9).withOpacity(.2),
      10: const Color(0xFFA9A9A9).withOpacity(.1),
    },
  );
  static PrimaryColor successColor = PrimaryColor(
    0xFF16A249,
    <int, Color>{
     100: const Color(0xFF16D76F),
      80: const Color(0xFF16D76F).withOpacity(.8),
      60: const Color(0xFF16D76F).withOpacity(.6),
      40: const Color(0xFF16D76F).withOpacity(.4),
      20: const Color(0xFF16D76F).withOpacity(.2),
      10: const Color(0xFF16D76F).withOpacity(.1),
    },
  );
  static PrimaryColor errorColor = PrimaryColor(
    0xFF16A249,
    <int, Color>{
     100: const Color(0xFFF31629),
      80: const Color(0xFFF31629).withOpacity(.8),
      60: const Color(0xFFF31629).withOpacity(.6),
      40: const Color(0xFFF31629).withOpacity(.4),
      20: const Color(0xFFF31629).withOpacity(.2),
      10: const Color(0xFFF31629).withOpacity(.1),
    },
  );
  static PrimaryColor whiteColor = PrimaryColor(
    0xFF16A249,
    <int, Color>{
     100: const Color(0xFFFFFFFF),
      80: const Color(0xFFFFFFFF).withOpacity(.8),
      60: const Color(0xFFFFFFFF).withOpacity(.6),
      40: const Color(0xFFFFFFFF).withOpacity(.4),
      20: const Color(0xFFFFFFFF).withOpacity(.2),
      10: const Color(0xFFFFFFFF).withOpacity(.1),
    },
  );
   static PrimaryColor screenColor = PrimaryColor(
    0xFF16A249,
    <int, Color>{
     100: const Color(0xFFFAFAFA),
      80: const Color(0xFFFAFAFA).withOpacity(.8),
      60: const Color(0xFFFAFAFA).withOpacity(.6),
      40: const Color(0xFFFAFAFA).withOpacity(.4),
      20: const Color(0xFFFAFAFA).withOpacity(.2),
      10: const Color(0xFFFAFAFA).withOpacity(.1),
    },
  );
  static PrimaryColor yellowColor = PrimaryColor(
    0xFF16A249,
    <int, Color>{
     100: const Color(0xFFFFB72B),
      80: const Color(0xFFFFB72B).withOpacity(.8),
      60: const Color(0xFFFFB72B).withOpacity(.6),
      40: const Color(0xFFFFB72B).withOpacity(.4),
      20: const Color(0xFFFFB72B).withOpacity(.2),
      10: const Color(0xFFFFB72B).withOpacity(.1),
    },
  );



  static TextColor textColor = TextColor();
}
class PrimaryColor extends ColorSwatch<int> {
  const PrimaryColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade80 => this[80]!;

  Color get shade60 => this[60]!;

  Color get shade40 => this[40]!;
  
  Color get shade20 => this[20]!;

  Color get shade10 => this[10]!;
}





class TextColor extends ColorSwatch<int> {
  TextColor()
      : super(
          0xFF332f2e,
          <int, Color>{
            1: const Color(0xFFFFFFFF),
            2: const Color(0xFF4C4C4F),
            3: const Color(0xffe8e8e8),
            4: const Color(0xffCAF99C),
            26: Colors.black26,
            5: const Color(0xffF58965),
            6: const Color(0xff9D9898),
            7: const Color(0xff1D1D1D).withOpacity(.6),
          },
        );

  Color get shade1 => this[1]!;
  Color get shade2 => this[2]!;
  Color get shade3 => this[3]!;
  Color get shade4 => this[4]!;
  Color get shade26 => this[26]!;
  Color get shade5 => this[5]!;
  Color get shade6 => this[6]!;
  Color get shade7 => this[7]!;
}


