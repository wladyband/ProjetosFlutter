import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvvmflutter/presentation/resources/resources.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderObject();
  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;

  List<SliderObject> _getSliderObject() => [
    SliderObject.name(AppStrings.onBoardingTitle1,
        AppStrings.onBoardingSubTitle1, ImageAssets.onboardingLogo1),
    SliderObject.name(AppStrings.onBoardingTitle2,
        AppStrings.onBoardingSubTitle2, ImageAssets.onboardingLogo2),
    SliderObject.name(AppStrings.onBoardingTitle3,
        AppStrings.onBoardingSubTitle3, ImageAssets.onboardingLogo3),
    SliderObject.name(AppStrings.onBoardingTitle4,
        AppStrings.onBoardingSubTitle4, ImageAssets.onboardingLogo4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s1_5,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(_list[index]);
          }),
      bottomSheet: Container(
        color: ColorManager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {},
                child: Text(
                  AppStrings.skip,
                textAlign: TextAlign.end,
                ),
              ),
            ),
            _getBottomSheetWidget()
          ],
        ),
      ),
    );
  }


  Widget _getBottomSheetWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: SvgPicture.asset(ImageAssets.leftArrowIc),
            ),
            onTap: () {

            },
          ),
        ),
        Row(
          children: [
            for(int  i = 0; i < _list.length; i++)
                Padding(padding: EdgeInsets.all(AppPadding.p8),
                  child: _getProperCircle(i),
                ),
          ],
        ),
        Padding(padding: EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: SvgPicture.asset(ImageAssets.leftArrowIc),
            ),
            onTap: () {

            },
          ),
        ),
      ],
    );
  }
  Widget _getProperCircle(int index) {
      if(index == _currentIndex) {
        return SvgPicture.asset(ImageAssets.hollowCirlceIc);
      } else {
        return SvgPicture.asset(ImageAssets.solidCircleIc);
      }
  }
}
class OnBoardingPage extends StatelessWidget {
  SliderObject _sliderObject;
  OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: AppSize.s40,),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(_sliderObject.image),
      ],
    );
  }
}


class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject.name(this.title, this.subTitle, this.image);
}
