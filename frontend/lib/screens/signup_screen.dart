import 'package:flutter/material.dart';
import '../widgets/account_card.dart';
import '../widgets/radio_button.dart';
import '../widgets/login_inputs.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Track which account type is selected
  String selectedFormType = 'Sign Up';
  String selectedAccountType = 'Player';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Main card container
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(33, 172, 245, 255),
                    borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        // Logo and tagline
                        Image.asset(
                          'lib/assets/images/logo-white.png',
                          height: 40,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Connect your team, track your progress',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 16),
                        
                        // Sign in / Login buttons
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RadioButton(
                                text: 'Sign Up',
                                isSelected: selectedFormType == 'Sign Up',
                                onTap: () {
                                  setState(() {
                                    selectedFormType = 'Sign Up';
                                  });
                                },
                              ),
                              RadioButton(
                                text: 'Login',
                                isSelected: selectedFormType == 'Login',
                                onTap: () {
                                  setState(() {
                                    selectedFormType = 'Login';
                                  });
                                },
                              )
                            ]
                          ),
                        ),
                        const SizedBox(height: 16),
                        if(selectedFormType == 'Sign Up') ...[
                          Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(12), 
                          ),
                          child: Column( 
                            children: [  
                              AccountCard(
                                title: 'Player Account',
                                subtitle: 'Join teams with invitation codes',
                                price: 'Free',
                                isSelected: selectedAccountType == 'Player',
                                onTap: () {
                                  setState(() {
                                    selectedAccountType = 'Player';
                                  });
                                },
                              ),
                              const SizedBox(height: 12),
                              AccountCard(
                                title: 'Parent Account',
                                subtitle: "See your athlete's team activities",
                                price: 'Free',
                                isSelected: selectedAccountType == 'Parent',
                                onTap: () {
                                  setState(() {
                                    selectedAccountType = 'Parent';
                                  });
                                },
                              ),
                              const SizedBox(height: 12),
                              AccountCard(
                                title: 'Coach Account',
                                subtitle: "Manage your athlete's team",
                                price: '\$100',
                                isSelected: selectedAccountType == 'Coach',
                                onTap: () {
                                  setState(() {
                                    selectedAccountType = 'Coach';
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        ] else LoginInputs(),
                        
                        const SizedBox(height: 24),
                        
                        // Create button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0x6BACF6FF),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              selectedFormType == 'Sign Up' ? 'Create $selectedAccountType' : 'Login',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}