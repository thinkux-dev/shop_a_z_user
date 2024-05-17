import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shop_a_z_user/auth/auth_service.dart';
import 'package:shop_a_z_user/customwidgets/login_section.dart';
import 'package:shop_a_z_user/customwidgets/registration_section.dart';
import 'package:shop_a_z_user/pages/view_telescope_page.dart';
import 'package:shop_a_z_user/providers/user_provider.dart';
import 'package:shop_a_z_user/utils/colors.dart';
import 'package:shop_a_z_user/utils/helper_functions.dart';

enum AuthChoice { login, register }

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _errMsg = '';
  AuthChoice _authChoice = AuthChoice.login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Welcome, User',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SegmentedButton<AuthChoice>(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if(states.contains(MaterialState.selected)) {
                    return kShrineBrown900;
                  }
                  return null;
                }),
                foregroundColor: MaterialStateColor.resolveWith((states) {
                  if(states.contains(MaterialState.selected)) {
                    return kShrineSurfaceWhite;
                  }
                  return kShrineBrown900;
                }),
                shape: MaterialStateProperty.resolveWith((states) {
                  return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                  );
                })
              ),
              showSelectedIcon: false,
              segments: const [
                ButtonSegment<AuthChoice>(value: AuthChoice.login, label: Text('LOGIN')),
                ButtonSegment<AuthChoice>(value: AuthChoice.register, label: Text('REGISTER')),
              ],
              selected: {_authChoice},
              onSelectionChanged: (choice) {
                setState(() {
                  _authChoice = choice.first;
                });
              },
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: AnimatedCrossFade(
                  duration: const Duration(milliseconds: 500),
                  crossFadeState: _authChoice == AuthChoice.login ?
                  CrossFadeState.showFirst : CrossFadeState.showSecond,
                  firstChild: LoginSection(
                    onSuccess: () {
                      showMsg(context, 'Successfully Logged In');
                      context.goNamed(ViewTelescopePage.routeName);
                    },
                    onFailure: (value) {
                      setState(() {
                        _errMsg = value;
                      });
                    },
                  ),
                  secondChild: RegistrationSection(
                    onSuccess: () {
                      showMsg(context, 'Registration Successful');
                      context.goNamed(ViewTelescopePage.routeName);
                    },
                    onFailure: (value) {
                      setState(() {
                        _errMsg = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            if(_errMsg.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_errMsg, style: const TextStyle(fontSize: 18, color: Colors.red),),
              ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('OR', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: kShrineBrown900,
                foregroundColor: kShrineSurfaceWhite,
              ),
              onPressed: _signinWithGoogle,
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('SIGNIN WITH GOOGLE'),
            )
          ],
        ),
      ),
    );
  }

  void _signinWithGoogle() async {
    final credential = await AuthService.signInWithGoogle();
    final exists = await Provider.of<UserProvider>(context, listen: false)
      .doesUserExist(credential.user!.uid);

    if(!exists) {
      EasyLoading.show(status: 'Please Wait');
      await Provider.of<UserProvider>(context, listen: false).addUser(
        user: credential.user!,
        name: credential.user!.displayName,
        phone: credential.user!.phoneNumber
      );
    }

    if(EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    context.goNamed(ViewTelescopePage.routeName);
  }
}
