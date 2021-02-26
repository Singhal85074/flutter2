
import 'package:flutter/material.dart';
/*
class MyWidget extends StatefulWidget{
  State<StatefulWidget> createState(){
    return MyWidgetState();
  }

}

class MyWidgetState extends State<MyWidget>{
  var Question = 0;
  List<String> list = ["first Question" , "Second question" , "Third question","four Question" , "five question" , "six question"];
  void answerQuestion(){
    setState(() {
      Question = Question + 1;
    });

    print("Questions$Question");
  }
  String message = "Hello Everyone \n I am Somesh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            actions: <Widget>[Icon(Icons.email),Padding(padding: EdgeInsets.only(right: 10 , left: 10), child :Icon(Icons.phone)) ],
            leading : Icon(Icons.apps , color: Colors.black,),
            title: Text(
              'Sasta Nasha',
               style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0
                  ),
            ),
      ),
      body:

      Container(

        color: Colors.deepOrangeAccent,
        child: Center(
          child: Text(
            Message,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0
            ),
          ),

        ),
        
        child: Image(
          //image: NetworkImage("http://media.heartlandtv.com/images/Pool1.PNG"),
          image: AssetImage("images/mouse.jpg"),
        )

        child: Column(
          children: [Text(list.elementAt(Question)),
            RaisedButton(
              child: Text("Answer1"),
              onPressed: answerQuestion),
            RaisedButton(
                child: Text("Answer2"),
                onPressed: answerQuestion),
            RaisedButton(
                child: Text("Answer3"),
                onPressed: answerQuestion),
          ],
        ),

        //Image.network("https://pbs.twimg.com/profile_images/1208234904405757953/mT0cFOVQ_400x400.jpg"),

    */

class MyWidget extends StatefulWidget{
  State<StatefulWidget> createState(){
    return MyWidgetState();
  }

}

class MyWidgetState extends State<MyWidget>{
  var _formKey = GlobalKey<FormState>();
  bool _secureText = true;
  String _errorMessage;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  //hintText: "Your name",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email),
                  //border: InputBorder.none,
                  //fillColor: Colors.grey,
                  //filled: true,
                  labelText: "Email Address",
                  hintText: "Enter email",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                maxLength: 40,
                maxLines: 1,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  //hintText: "Your name",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                    onPressed: (){
                        setState(() {
                          _secureText = !_secureText;
                        });
                    },
                  ),
                  //border: InputBorder.none,
                  //fillColor: Colors.grey,
                  //filled: true,
                  errorText: _errorMessage,
                  labelText: "Password",
                  hintText: "Enter Password",
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: _secureText,
                maxLength: 12,
                //maxLines: 1,
              ),
              SizedBox(
                height: 16,
              ),
              Form(
                  key: _formKey,
                  child:Column(
                    children: [
                      TextFormField(
                        validator: (String value){
                          if(value.length < 3){
                            return "Enter atleast 3 character";
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          errorText: null,
                          labelText: "Password",
                          hintText: "Enter Password",
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (String value){
                          if(value.length < 10){
                            return "Enter atleast 10 character";
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          errorText: null,
                          labelText: "Name",
                          hintText: "Enter name",
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(onPressed: (){
                  print("Email" + _passwordController.text);
                  setState(() {
                    print("Form validation :" + _formKey.currentState.validate().toString());
                    if(_passwordController.text.length < 3){
                      _errorMessage = "Enter atleast 3 character";
                    }
                    else{
                      _errorMessage = null;
                    }
                  });

                } , child: Text("Register"),),
              )
            ],
          ),
        ),
      ),
    );
  }

}

