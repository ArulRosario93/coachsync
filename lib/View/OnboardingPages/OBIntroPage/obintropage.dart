import 'package:coachsync/View/OnboardingPages/OBNewFaceLessgooPage/obnewfacelessgoopage.dart';
import 'package:coachsync/View/OnboardingPages/OBWelcomePage/obwelcomepageone.dart';
import 'package:flutter/material.dart';

class OBIntroPage extends StatefulWidget {
  const OBIntroPage({super.key});

  @override
  State<OBIntroPage> createState() => OBIntroPageState();
}

class OBIntroPageState extends State<OBIntroPage> {

  final PageController controller = PageController(
    initialPage: 0
  );
  bool introChange = false;

  void handleChange() async {

    await Future.delayed(const Duration(seconds: 4));

    if (!mounted) {
      return;
    }
    controller.animateToPage(1, duration: Durations.extralong1, curve: Curves.easeInCubic);

    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        introChange = true;
      });
    });

  }

  void handleSignIn() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const OBWelcomePageOne(),),);
  }

  void handleSignUp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const OBNewFaceLessGooPage(),),);
  }

  @override
  void initState() {
    super.initState();
    handleChange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Hero(tag: "appname", child: Material(color: Colors.transparent, child: Text("CoachSync", style: TextStyle(color: Colors.white, fontSize: 16),))),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                
                Container(
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 41, 41, 41),
                    backgroundBlendMode: BlendMode.multiply,
                    image: DecorationImage(image: AssetImage('assets/OnboardingImages/run.png'), alignment: Alignment.center, invertColors: true, fit: BoxFit.contain)
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color(0xFF343434),
                    backgroundBlendMode: BlendMode.multiply,
                    image: DecorationImage(image: AssetImage('assets/OnboardingImages/hurray.png'), invertColors: true, alignment: Alignment.center, fit: BoxFit.contain)
                  ),
                )
              ],
            ),
          ),
      
          AnimatedContainer(
            alignment: Alignment.center,
            duration: Durations.extralong3, 
            height: !introChange? 0 : MediaQuery.of(context).size.width * .4,
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: GestureDetector(
                    onTap: handleSignIn,
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Text("Sign In", style: TextStyle(fontSize: 16),),
                    
                    ),
                  ),
                ),
                Expanded(flex: 2, child: const SizedBox(),),
                Expanded(
                  flex: 7,
                  child: GestureDetector(
                    onTap: handleSignUp,
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF1E1E1E),
                      ),
                      child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16),),  
                    ),
                  ),
                ),
                Expanded(flex: 2, child: const SizedBox(),),
              ],
            ),  
          )
        ],
      ),
    );
  }
  
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}

