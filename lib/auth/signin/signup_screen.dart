import 'package:bansosku/utils/sp.dart';
import 'package:bansosku/auth/signin/authservice.dart';
import 'package:bansosku/bottom_bar.dart';
import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/common/custom_textfield4.dart';
import 'package:bansosku/common/custom_textfield6.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/models/user.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SignupScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  final AuthService services = AuthService();

  final DataUserLocaly savedatauserlocaly = DataUserLocaly();
  // var email, password, token;
  late User? user;
  void setDaftarnData() {
    setState(() {
      user = User(
          email: emailcontroller.text,
          password: passwordcontroller.text,
          userType: "penyalur");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2 - 300,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Daftar',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Selamat datang kembali',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 56),
                  Row(
                    children: [
                      CustomButton(
                        width:
                            (MediaQuery.of(context).size.width - 64) / 2 - 10,
                        onTap: () {},
                        child: const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      CustomButton(
                        width:
                            (MediaQuery.of(context).size.width - 64) / 2 - 10,
                        bgColor: Colors.white,
                        onTap: () {},
                        child: const Text(
                          'No. Handphone',
                          style: TextStyle(
                            color: MyColors.primaryGreen,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomTextfield4(
                    textEditingController: emailcontroller,
                    label: "Email",
                    hint: "johndoe@bansosku.co.id",
                  ),
                  const SizedBox(height: 12),
                  CustomTextfield6(
                    textEditingController: passwordcontroller,
                    label: "Password",
                    hint: "********",
                  ),
                  const SizedBox(height: 44),
                  CustomButton(
                    onTap: () {
                      setDaftarnData();
                      services.addUser(user!).then((val) async {
                        debugPrint('ini data userid ${val.data['userid']}');
                        savedatauserlocaly.settoken(val.data['token']);
                        savedatauserlocaly.setuserid(val.data['userid']);

                        debugPrint("selesai ngeset token");
                        //var tes = await savetoken.gettoken();
                        //var tes = await UserSecureStorage.getToken();
                        //print("ini token" + tes!);
                      });
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        BottomBar.routeName,
                        (route) => false,
                      );
                    },
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        "Sudah punya akun?",
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          // Navigator.pushNamed(
                          //   context,
                          //   SigninScreen.routeName,
                          // );
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                            color: MyColors.primaryGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
