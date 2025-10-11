import 'package:coachsync/View/WIdgets/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OBNewFaceLessGooPage extends StatefulWidget {
  const OBNewFaceLessGooPage({super.key});

  @override
  State<OBNewFaceLessGooPage> createState() => _OBNewFaceLessGooPageState();
}

class _OBNewFaceLessGooPageState extends State<OBNewFaceLessGooPage> {

  final PageController inputfieldController = PageController();


  bool ontap = false;

  String role = 'trainer';
  final List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(value: 'client', child: Text('Client', style: GoogleFonts.bungee(),),),
    DropdownMenuItem(value: 'trainer', child: Text('Trainer', style: GoogleFonts.bungee(),),),
  ];

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleChange() {

    if (inputfieldController.page == 1) {
      if (passwordController.text.isEmpty) {
        return;
      }
      inputfieldController.animateToPage(
        2, // 1 + 1
        duration: Duration(milliseconds: 1000),
        curve: Curves.ease,
      );
    } else if(inputfieldController.page == 0) {

      if (emailController.text.isEmpty) {
        return;
      }

      inputfieldController.animateToPage(
        1,
        duration: Duration(milliseconds: 1000),
        curve: Curves.ease,
      );
    }else{

        print("REGISTER");

    }

  }

  void handleTapOnInputField () {
    setState(() {
      ontap = true;
    });
  }

  void handleChangeDropDown(String? val) {

    setState(() {
      role = val!;
    });

  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          leadingWidth: 40,
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: Text("CoachSync", style: TextStyle(color: Colors.white, fontSize: 16),),
        ),

        body: Column(
          children: [

              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("NEEWWWW FACEEEE \n LEESSSGOOOO!!!", style: TextStyle(color: Colors.white, fontSize: 25), textAlign: TextAlign.center,),

                    // const SizedBox(height: 20,),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset('assets/OnboardingImages/newfacelessgootop.png', width: 180, fit: BoxFit.fitWidth, color: Colors.white, colorBlendMode: BlendMode.difference,),
                          Expanded(child: Image.asset('assets/OnboardingImages/newfacelessgoobottom.png', width: 180, fit: BoxFit.fill, color: Colors.white, colorBlendMode: BlendMode.difference,)),

                        ],
                      ),
                    )
                  ],
                )
              ),              

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    !ontap? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                        const SizedBox(height: 16,),

                        Container(
                          width: MediaQuery.of(context).size.width * .89,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Text("Google SignIn", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 15),),
                        ),
                        
                        const SizedBox(height: 20,),
                        
                        SizedBox(
                          width: MediaQuery.of(context).size.width *.89,
                          child: Row(
                            children: [
                              Flexible(child: Container(alignment: Alignment.center, height: 2, decoration: BoxDecoration(color: Color(0xFFBBBBBB)),)),
                        
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6),
                                child: Text('OR', style: TextStyle(color: Color(0xFFBBBBBB)),),
                              ),
                        
                              Flexible(child: Container(alignment: Alignment.center, height: 2, decoration: BoxDecoration(color: Color(0xFFBBBBBB)),)),
                            ],
                          ),
                        ),
                        
                        const SizedBox(height: 16,),
                      ],
                    ) : const SizedBox(),
                    
                    SizedBox(
                      height: 85,
                      child: PageView(
                        controller: inputfieldController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          InputField(title: 'Email', controller: emailController, helperText: 'johndeo@something.com', obsureText: false, onTap: handleTapOnInputField,),
                          InputField(title: 'Password', controller: passwordController, helperText: '*******', obsureText: true),

                          Column(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width * .85, child: Text('Role', textAlign: TextAlign.left, style: TextStyle(fontSize: 15, color: Color(0xFFD9D9D9)),)),

                            const SizedBox(height: 8,),

                              SizedBox(
                                // alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * .89,
                                child: DropdownButtonFormField<String>(
                                  initialValue: role,
                                  // isExpanded: true,
                                  alignment: Alignment.center,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                                  ),
                                  onChanged: handleChangeDropDown,
                                  items: items,
                                  )
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 16,),

                    GestureDetector(
                      onTap: handleChange,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .89,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFF1E1E1E),
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Text("Continue", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16),),
                      ),
                    ),
                  
                    const SizedBox(height: 20,),
                  ],
                )
          ],
        ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose

    inputfieldController.dispose();
    
    super.dispose();

  }
}