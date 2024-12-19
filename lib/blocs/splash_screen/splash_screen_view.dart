import 'package:base_project/base_project.dart';
import 'package:flutter/material.dart';
import 'package:tng_ehr/blocs/splash_screen/splash_screen_state.dart';
import 'splash_screen_bloc.dart';
import 'splash_screen_event.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          SplashScreenBloc()..add(InitSplashScreenEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocListener<SplashScreenBloc, SplashScreenState>(
      listener: (context, state) {
        if (state.redirect == SplashScreenRedirect.home) {
          Navigator.of(context).pushNamedAndRemoveUntil(
              homeRoute, (Route<dynamic> route) => false);
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  TrungNguyenAsset.logo), // Ensure you have the logo in assets
              const SizedBox(height: 20),
              Loader().visible(true),
            ],
          ),
        ),
      ),
    );
  }
}
