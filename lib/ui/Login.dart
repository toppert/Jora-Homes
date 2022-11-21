import 'package:flutter/material.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
bool loading = true;
class _LoginState extends State<Login> {
  @override
  void initState(){
    super.initState();
    loading = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          SafeArea(

            child: WebView(
                javascriptMode: JavascriptMode.unrestricted,
              initialUrl: "https://app.jora.com.ng/",
        onPageFinished: (finish){
      setState((){
        loading = false;
       });
        },
            ),
          ),
          loading == true
           ? const Center(child: CircularProgressIndicator(),
            ):
          const SizedBox(

               ),
        ],
      ),
    );
  }
}
