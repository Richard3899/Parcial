import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
          )
        ),
      body: Container(
        color: Colors.grey[400],
        child: Center(
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: new BoxDecoration(
            gradient: LinearGradient(
                      colors: [Colors.red[700],Colors.purple,Colors.grey[300]],
                      stops: [0.1,0.35,0.1],
                      begin: FractionalOffset.topCenter,
                     end: FractionalOffset.bottomCenter
                       ),
            
                      ),
            
            child: ListView(
              
              
              padding: EdgeInsets.all(20),
              children: [
                     Imagen(),
                     User(),
                  
                  
              ]
                
            ),
          ),
        ),
      ),
    );
  }
}
class Imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage("assets/github.png")
                               
                        )
                    )),
        
        Padding(
          
          padding: const EdgeInsets.only(top:23,bottom: 23),
          child: Text("Richard Arias",
          style: TextStyle(color: Colors.white,fontSize: 17.0),
          
          )
        )
      ],
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("USER PROFILE",
        style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold))
   
      ),
    );
  }
}

class Text1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,bottom: 10),
      child: Row(
        children: [
          Container(
            child: GradientText(
            text: 'User Name',
            colors: <Color>[
                Colors.purple,
                Colors.red
            ],
            
             ),
          ),
        ],
      ),
    );
  }
}
class Text11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        TextField(
          decoration: InputDecoration(
              
              prefixIcon:Container(
              margin: const EdgeInsets.only(left: 5,right:5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                colors: [Colors.red,Colors.purple],
                stops: [0.1,0.6],
                begin: FractionalOffset.topCenter,
               end: FractionalOffset.bottomCenter
                 ),
              
              shape: BoxShape.circle,
                ),
             
              child:Container(
                
                child: Icon(FontAwesomeIcons.user,color: Colors.white))),

            
              hintText: 'Enter User Name',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
    
            )
          ),


          
      
        ),
      ],
    );
  }
}
class Text2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,bottom: 10),
      child: Row(
        children: [
          Container(
            child: GradientText(
            text: 'Email Id',
            colors: <Color>[
                Colors.purple,
                Colors.red
            ],
            
             ),
          ),
        ],
      ),
    );
  }
}

class Text22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        TextField(
          decoration: InputDecoration(
              
              prefixIcon:Container(
              margin: const EdgeInsets.only(left: 5,right:5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                colors: [Colors.red,Colors.purple],
                stops: [0.1,0.6],
                begin: FractionalOffset.topCenter,
               end: FractionalOffset.bottomCenter
                 ),
              
              shape: BoxShape.circle,
                ),
             
              child:Container(
                
                child: Icon(FontAwesomeIcons.envelope,color: Colors.white))),

            
              hintText: 'Enter Email',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
    
            )
          ),


          
      
        ),
      ],
    );
  }
}

class Text3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,bottom: 10),
      child: Row(
        children: [
          Container(
            child: GradientText(
            text: 'Mobile Phone',
            colors: <Color>[
                Colors.purple,
                Colors.red
            ],
            
             ),
          ),
        ],
      ),
    );
  }
}

class Text33 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        TextField(
              keyboardType: TextInputType.number, 
              
              decoration: InputDecoration(
              
              prefixIcon:Container(
              margin: const EdgeInsets.only(left: 5,right:5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                colors: [Colors.red,Colors.purple],
                stops: [0.1,0.6],
                begin: FractionalOffset.topCenter,
               end: FractionalOffset.bottomCenter
                 ),
              
              shape: BoxShape.circle,
                ),
             
              child:Container(
                
                child: Icon(FontAwesomeIcons.mobileAlt,color: Colors.white))),

              
              hintText: 'Enter your 10 digit mobile number',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
    
            )
          ),


          
      
        ),
      ],
    );
  }
}

class Text4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,bottom: 10),
      child: Row(
        children: [
          GradientText(
          text: 'Date of Birth',
          colors: <Color>[
              Colors.purple,
              Colors.red
          ],
          
           ),
        ],
      ),
    );
  }
}

class Fecha extends StatefulWidget {
  @override
  _FechaState createState() => _FechaState();
}
class _FechaState extends State<Fecha> {
  
  String _fecha = '';
  TextEditingController _textController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(

              prefixIcon:Container(
              margin: const EdgeInsets.only(left: 5,right:5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                colors: [Colors.red,Colors.purple],
                stops: [0.1,0.6],
                begin: FractionalOffset.topCenter,
               end: FractionalOffset.bottomCenter
                 ),
              
              shape: BoxShape.circle,
                ),
             
              child:Container(
                
                child: Icon(FontAwesomeIcons.calendarAlt,color: Colors.white))),


        hintText: 'DD / MM / YYYY',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2022),
      initialDate: DateTime.now(),
    );

    if(date!=null){
      setState(() {});
      _fecha = date.toString();
      _textController.text = _fecha;
    }
  }
}

class Text5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20),
      child: Row(
        children: [
          GradientText(
          text: 'Sex',
          colors: <Color>[
              Colors.purple,
              Colors.red
          ],
          
           ),
        ],
      ),
    );
  }
}

class Switchs extends StatefulWidget {
  @override
  _SwitchsState createState() => _SwitchsState();
}

class _SwitchsState extends State<Switchs> {
  @override
  bool s1 = false;
  bool s2 = false;
  

  Widget build(BuildContext context) {
    return
           Row(
             children: [
               Switch(
                value: s1,
                onChanged: (value) {
                  setState(() {
                    s1 = value;
                    s2 = false;                  
                    print(s1);
                  });
                },
             
          ),

          Text("Male"),
               Switch(
                value: s2,
                onChanged: (value) {
                  setState(() {
                    s2=value;
                    s1 = false;
                    print(s2);
                  });
                },
 
          ),
          Text("Female"),
             ],
           );
        
  }
}

class Boton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20),
      child: InkWell(
        onTap: () => print(""),
       child: new Container(
      //width: 100.0,
      height: 50.0,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
                  colors: [Colors.purple,Colors.red],
                  stops: [0.1,0.9],
                  begin: FractionalOffset.topCenter,
                 end: FractionalOffset.bottomLeft
                   ),
        
        borderRadius: new BorderRadius.circular(10.0),
      ),
      child: new Center(child: new Text('SAVE', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
  ),
      
      
      ),
    );
   
       
  
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(30),
      child: Column(
        children:[ Titulo(),
                 Text1(),
                 Text11(),
                 Text2(),
                 Text22(),
                 Text3(),
                 Text33(),
                 Text4(),
                 Fecha(),
                 Text5(),
                 Switchs(),
                 Boton()
                   
                   ]
      ),
    );
  }
}
