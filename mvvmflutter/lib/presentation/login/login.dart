import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/presentation/login/login_viewmodel.dart';
import '/presentation/resources/resources.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginViewModel _viewModel =
  LoginViewModel(null); // todo pass here login useCase

  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  _bind() {
    _viewModel.start();
    _userNameController
        .addListener(() => _viewModel.setUserName(_userNameController.text));
    _passwordController
        .addListener(() => _viewModel.setPassword(_passwordController.text));
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget _getContentWidget() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: AppPadding.p100),
        color: ColorManager.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SvgPicture.asset(ImageAssets.loginIc),
                SizedBox(height: AppSize.s28),
                Padding(padding: EdgeInsets.only(
                    left: AppPadding.p28, right: AppPadding.p28),
                  child: StreamBuilder<bool>(
                    stream: _viewModel.outputIsUserNameValid,
                    builder: (context, snapshot) {
                      return TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _userNameController,
                      );
                    },
                  ),)
              ],
            ),
          ),
        ),
      ),
    )
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}