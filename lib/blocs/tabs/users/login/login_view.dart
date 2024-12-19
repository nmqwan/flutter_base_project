import 'package:base_project/base_project.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      globalKey: key,
      resizeToAvoidBottomInset: true,
      appBar: BaseAppBarWidget(
          title: "LOGIN", isDev: RunConfig.isDev, context: context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(TrungNguyenAsset.logo),
              ),
              SizedBox(
                height: 200,
              ),
              TextField(
                decoration: InputDecoration(label: Text("Email")),
              ),
              TextField(
                decoration: InputDecoration(label: Text("Password")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
