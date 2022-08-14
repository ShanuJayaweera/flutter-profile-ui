import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/3,
              fit: BoxFit.cover,
              image: NetworkImage('https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?cs=srgb&dl=pexels-pixabay-417173.jpg&fm=jpg'),),
            Positioned(
                bottom: -60.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5103AQFWiwKn9-Jysg/profile-displayphoto-shrink_400_400/0/1578811793156?e=1666224000&v=beta&t=lCxQEqK43sIh5enXm6cJ_hHwQeUez2oD0JGfNlghrD8'),)),
          ],
        ),
        SizedBox(height: 60,),
        ListTile(
          title: Text('Shanaka Jayaweera', style: TextStyle(fontFamily: 'Poppins',),),
          subtitle: Text("Software/ Mobile Engineer", style: TextStyle(fontFamily: 'Poppins',)),),
        FlatButton.icon(
          onPressed: (){},
          icon: Icon(Icons.mail, color: Colors.white,),
          label: Text('Hire Me', style: TextStyle(fontFamily: 'Poppins', color: Colors.white),),
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        ListTile(
          title: Text('About Me', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, letterSpacing: 1),),
          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, ),),
        ),
      ],
    );
  }
}
