import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Set background color
        appBar: AppBar(
        title: const Text(
        'Login',
        style: TextStyle(
        color: Colors.black, // Adjust title text color
    ),
    ),
    backgroundColor: Colors.teal, // Set app bar background color
    elevation: 0.0, // Remove app bar shadow
    ),
    body: SingleChildScrollView( // Allow scrolling on smaller screens
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Align content to left
    children: [
    SizedBox(height: 40.0), // Add some top padding
    Center(
    child: Image.asset( // Center logo or image
    'assets/images/login.png', // Replace with your logo
    width: 200.0,
    ),
    ),
    SizedBox(height: 40.0), // Add padding after logo
    Text(
    'Welcome Back!',
    style: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold, // Bold title
    ),
    ),
    SizedBox(height: 10.0), // Add a little spacing
    Text(
    'Please login to your account',
    style: TextStyle(
    fontSize: 16.0,
    color: Colors.grey, // Subdued text color
    ),
    ),
    SizedBox(height: 20.0), // Add padding before form fields
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Email',
    prefixIcon: Icon(Icons.email), // Add email icon
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0), // Rounded corners
    ),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your email address';
    }
    return null;
    },
    onSaved: (newValue) => _email = newValue!,
    ),
    SizedBox(height: 10.0), // Add some spacing
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Password',
    prefixIcon: Icon(Icons.lock), // Add password icon
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    suffixIcon: IconButton(
    icon: Icon(
    Icons.visibility_off, // Password hidden initially
    ),
    onPressed: () {}, // Implement password visibility toggle
    ),
    ),
    obscureText: true,
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your password';
    }
    return null;
    },
    onSaved: (newValue) => _password = newValue!,
    ),
    SizedBox(height: 20.0), // Add spacing before buttons
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align buttons
    children: [
    TextButton( // Style login button
    onPressed: () {
    if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
    // Handle login logic (e.g., call API for authentication)
    print('Email: $_email, Password: $_password');
    }
    },
    child: Text(
    'Login',
    style: TextStyle(
    color: Colors.white, // White button text
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    style: TextButton.styleFrom(
      backgroundColor: Colors.green, // Green button color
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    ),
      TextButton( // Style signup button
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignupPage()),
          );
        },
        child: Text(
          'Signup',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.blue, // Blue signup text
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
    );
  }
}

