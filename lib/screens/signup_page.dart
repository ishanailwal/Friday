import 'package:flutter/material.dart';

///Project Local Imports
import 'package:friday/widgets/signup_form_essential_details.dart';
import 'package:friday/widgets/onboarding_canvas_design.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<ScaffoldState> _scaffoldKey;
  @override
  void initState() {
    _scaffoldKey = new GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      key: _scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            CustomPaint(
              child: Container(),
              painter: CanvasDesign(context: context),
            ),
            SignUpFormEssentialDetails(),
          ],
        ),
      ),
    );
  }
}
