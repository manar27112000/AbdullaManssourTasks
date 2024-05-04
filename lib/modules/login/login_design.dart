import 'package:flutter/material.dart';
import 'package:login_design_sec3/shared/components/components.dart';

class LoginDesign extends StatelessWidget {
   LoginDesign({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start          ,
            children: [
              Text("Login",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),

              defaultFormField(controller: emailController,
                  validate: (value){
        if(value==null){
        return 'email address must not be empty';
        }
        return null;
        },
                  type: TextInputType.emailAddress, label:'Email Adress', prefix: Icon(Icons.email))




              ,SizedBox(height: 20,),

              defaultFormField(controller: passwordController,
                  validate: (value){
                    if(value==null){
                      return 'password  must not be empty';
                    }
                    return null;
                  },
                  type: TextInputType.visiblePassword,
                  suffix:Icon(Icons.remove_red_eye) ,
                  isPassword: true,
                  label:'Password', prefix: Icon(Icons.lock))


             , SizedBox(height: 20,),


             defaultButton(
                 function: (){
                   // if(formKey.currentState.validate() ){
                   //   print(emailController.text);
                   //   print(passwordController.text);
                   // }

                 },
                 text: 'login',
                ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Don\'t have an account ?'),
                  TextButton(onPressed: () {  },child: Text('Register Now'),),
          
                ],
              )
          
          
          
            ],
          ),
        ),
      ),


    );
  }
}
