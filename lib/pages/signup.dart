import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String selectedCountry = 'India';
  final List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'India',
    'Germany',
    'France',
    'Japan',
    'China',
    'Brazil'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/logo 1.png'),
              Text('Register to your account'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: ('Looking For *'),
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIconColor: Colors.white,
                      fillColor: Colors.pinkAccent,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: ('Username *'),
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIconColor: Colors.white,
                      fillColor: Colors.pinkAccent,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: SizedBox(
                          child: TextFormField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: ('First Name *'),
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIconColor: Colors.white,
                              fillColor: Colors.pinkAccent,
                              filled: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: SizedBox(
                          child: TextFormField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                              labelText: ('Last Name *'),
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIconColor: Colors.white,
                              fillColor: Colors.pinkAccent,
                              filled: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: ('E Mail Address *'),
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIconColor: Colors.white,
                      fillColor: Colors.pinkAccent,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: ('Select Country *'),
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIconColor: Colors.white,
                      fillColor: Colors.pinkAccent,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        hintText: 'Select Country*',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                        fillColor: Color.fromARGB(255, 238, 33, 101),
                        filled: true,
                      ),
                      value: selectedCountry,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCountry = newValue!;
                        });
                      },
                      items: countries.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
