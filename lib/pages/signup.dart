import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  late List<String> countries;
  String? selectedCountry;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    countries = args['countries'];
    countries.sort((a, b) => a.compareTo(b));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/logo 1.png'),
              const Text('Register to your account'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: 'Looking For *',
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
                      labelText: 'Username *',
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
                        child: TextFormField(
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                            labelText: 'First Name *',
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
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: TextFormField(
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                            labelText: 'Last Name *',
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
                      labelText: 'E Mail Address *',
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
                child: Center(
                  child: Container(
                    width: 300,
                    child: countries.isEmpty
                        ? const Text('Loading...')
                        : DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              value: selectedCountry,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedCountry = newValue;
                                });
                              },
                              items: countries.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value, style: const TextStyle(color: Colors.white)),
                                );
                              }).toList(),
                              decoration: const InputDecoration(
                                hintText: 'Select Country',
                                hintStyle: TextStyle(color: Colors.white),
                                fillColor: Colors.pinkAccent,
                                filled: true,
                              ),
                              dropdownColor: Colors.pinkAccent,
                            ),
                          ),
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
                      labelText: 'Contact Number *',
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
                      labelText: 'Password *',
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
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                style:  ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.white),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.pink, width: 1)
                  ))
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child:  Text('Already have an Account?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                      ),
                      child: const Text('Login', style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
