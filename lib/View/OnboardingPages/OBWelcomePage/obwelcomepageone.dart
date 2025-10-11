import 'package:coachsync/View/WIdgets/inputfield.dart';
import 'package:flutter/material.dart';

class OBWelcomePageOne extends StatefulWidget {
  const OBWelcomePageOne({super.key});

  @override
  State<OBWelcomePageOne> createState() => _OBWelcomePageOneState();
}

class _OBWelcomePageOneState extends State<OBWelcomePageOne> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final PageController imageController = PageController();
  final PageController inputfieldController = PageController();


  void handleChange() {

    if(passwordController.text.isNotEmpty) {

      print("LOGIN");

    }

    if (emailController.text.isNotEmpty) {
      inputfieldController.animateToPage(1, duration: Duration(milliseconds: 1000), curve: Curves.ease);
      imageController.animateToPage(1, duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          leadingWidth: 40,
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          title: Text('CoachSync', style: TextStyle(color: Colors.white, fontSize: 16),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(flex: 1, child: Container()),
            Flexible(
              flex: 4, 
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    Text('WELCOME BACK!!!', style: TextStyle(fontSize: 35, color: Colors.white),),
                  
                    const SizedBox(height: 10,),

                    Flexible(
                      child: PageView(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        controller: imageController,
                        children: [
                          Image.asset('assets/OnboardingImages/welcomeback.png', alignment: Alignment.center, fit: BoxFit.contain, color: Colors.white, colorBlendMode: BlendMode.difference,),
                          Image.asset('assets/OnboardingImages/sus.png', alignment: Alignment.center, fit: BoxFit.contain, color: Colors.white, colorBlendMode: BlendMode.difference,)
                        ]
                      ),
                    ),
                  ],
                ),
              )
            ),
            Flexible(
              flex: 2, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Flexible(
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: inputfieldController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                          InputField(title: 'Email', controller: emailController, helperText: 'johndeo@something.com', obsureText: false,),
                          InputField(title: 'Password', controller: passwordController, helperText: '******', obsureText: true,),
                      ],
                    ),
                  ),


                  const SizedBox(height: 16,),

                  GestureDetector(
                    onTap: handleChange,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * .89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF1E1E1E),
                      ),
                      child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 16),),  
                    ),
                  ),
                  const SizedBox(height: 20,)
                ],
              )
            ),
          ],
        ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    inputfieldController.dispose();
    imageController.dispose();
  }
}