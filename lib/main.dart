// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        //appBar: AppBar(
        //  title: Text('Welcome to Flutter'),
        //),
        body: Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}

//---------------( Login Page Start )---------------//

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  //final _usernameTest = 'user123';
  //final _passwordTest = 'pass123';
  bool _validateUser = false;
  bool _validatePass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      children: <Widget>[
        SizedBox(height: 80.0),
        Column(
          children: <Widget>[SizedBox(height: 16.0), Text('LIBRARY APP')],
        ),
        SizedBox(height: 120.0),
        //-
        TextField(
          controller: _usernameController,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Username',
              errorText: _validateUser ? 'Empty Username' : null),
        ),

        SizedBox(height: 12.0),

        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
              errorText: _validatePass ? 'Empty Password' : null),
          obscureText: true,
        ),
        //-

        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('RESET'),
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
              },
            ),
            RaisedButton(
              child: Text('LOGIN'),
              onPressed: () {
                setState(() {
                  _usernameController.text.isEmpty
                      ? _validateUser = true
                      : _validateUser = false;
                  _passwordController.text.isEmpty
                      ? _validatePass = true
                      : _validatePass = false;

                  //String username = _usernameController.text;
                  //String password = _passwordController.text;
                  //int checkuser = username.compareTo(_usernameTest);
                  //int checkpass = password.compareTo(_passwordTest);

                  
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BorrowedBookList()));
                  

                  
                });
              },
            ),
          ],
        ),
        //-
        SizedBox(height: 24.0),

        ButtonBar(children: <Widget>[
          FlatButton(
            child: Text('Register New Account'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterForm()));
            },
          )
        ])
        //-
      ],
    )));
  }
}
//---------------( Login Page End )---------------//

//---------------( Register Page Start )---------------//
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();
  bool _validateUser = false;
  bool _validatePass = false;
  bool _validateRePass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      children: <Widget>[
        SizedBox(height: 80.0),
        Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Text('Account Registration')
          ],
        ),
        SizedBox(height: 120.0),
        //-
        TextField(
          controller: _usernameController,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Username',
              errorText: _validateUser ? 'Empty Username' : null),
        ),

        SizedBox(height: 12.0),

        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
              errorText: _validatePass ? 'Empty Password' : null),
          obscureText: true,
        ),
        //-

        SizedBox(height: 12.0),

        TextField(
          controller: _rePasswordController,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Re-enter Password',
              errorText: _validateRePass ? 'Password not matched' : null),
          obscureText: true,
        ),

        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('RESET'),
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
                _rePasswordController.clear();
              },
            ),
            RaisedButton(
              child: Text('REGISTER'),
              onPressed: () {
                setState(() {
                  _usernameController.text.isEmpty
                      ? _validateUser = true
                      : _validateUser = false;
                  _passwordController.text.isEmpty
                      ? _validatePass = true
                      : _validatePass = false;

                  String str1 = _passwordController.text;
                  String str2 = _rePasswordController.text;
                  int check = str1.compareTo(str2);

                  if (check != 0) {
                    _validateRePass = true;
                  } else {
                    _validateRePass = false;
                  }
                });
              },
            ),
          ],
        ),
        //-

        //-
      ],
    )));
  }
}
//---------------( Register Page End )---------------//

//---------------( Borrowed Booklist Page Start )---------------//
class BorrowedBookList extends StatefulWidget {
  @override
  _BorrowedBookListState createState() => _BorrowedBookListState();
}

class _BorrowedBookListState extends State<BorrowedBookList> {
  final _booklist = [
    {
      'id': 001,
      'bookname': 'War of Television (WoTV)',
      'author': 'Sqoomi',
    },
    {
      'id': 002,
      'bookname': 'How To End Suffering for DUMMIES',
      'author': 'Death',
    },
    {
      'id': 004,
      'bookname': 'Three Flutter Away, Forever',
      'author': 'Valkz',
    },
    {
      'id': 005,
      'bookname': 'What Is A Trap And Why You Must Fall For It',
      'author': 'Astolfo',
    },
    {
      'id': 006,
      'bookname': 'What Makes My Rolls Blue',
      'author': 'Somebody',
    }
  ];

  /*String finalDate = '';

  getCurrentDate() {
    var date = new DateTime.now().toString();
    var dateParse = DateTime.parse(date);
    var dateFormat = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
    finalDate = dateFormat.toString();
  }*/

  //final _borrow = [];

  @override
  Widget build(BuildContext context) {
    //final borrowed = _borrow.contains(_booklist);
    return Scaffold(
        appBar: AppBar(
          title: Text('Book List'),
          actions: [
          IconButton(icon: Icon(Icons.list), onPressed: _pushBorrowList),
        ],
        ),
        body: ListView.builder(
          itemCount: _booklist.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${_booklist[index]['bookname']}"),
              subtitle: Text("Author: ${_booklist[index]['author']}"),
              trailing: Icon(Icons.bookmark_border),
      
              /*trailing: Icon(
                borrowed ? Icons.bookmark : Icons.bookmark_border,
                color: borrowed ? Colors.blue[200] : null),
              onTap: (){
                setState(() {
                  if (borrowed) {
                    _borrow.remove(_booklist[index]);
                  } else {
                    _borrow.add(_booklist[index]);
                  }
                });
              },*/
            );
          },
        )
    );
  }

  void _pushBorrowList(){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar (
              title: Text('Borrowed Books'),
            ),
            body: ListView.builder(
          itemCount: _booklist.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${_booklist[index]['bookname']}"),
              subtitle: Text("Author: ${_booklist[index]['author']} - Borrowed: ${DateTime.now().toString().substring(0,10)}"),
            );
          },
        )
          );
        }
      )
    );
  }
}
//---------------( Borrowed Booklist Page End )---------------//

