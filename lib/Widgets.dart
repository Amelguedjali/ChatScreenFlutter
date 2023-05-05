import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'constant.dart';



Widget buildOwnMessage(BuildContext context, String name, String message, String time) {
  return Align(

    alignment: Alignment.centerRight,



    child : ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 45,
      ),

      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: blueF,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 2,

                ),

                child: Text(name ,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: color1,

                  ),)),


            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 30,
                top: 20,
                bottom: 20,
              ),

              child: Text(
                message+ '      ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ),

            SizedBox(height: 50),
            Positioned(
              bottom: 4,
              right: 10,
              child: Row(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 13,
                      color: white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.done,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),);
}


Widget buildReplyMessage(BuildContext context,String name, String message, String time) {
  return Align(


    alignment: Alignment.centerLeft,




    child : ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 45,
      ),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: 12,
                    right: 10,
                    top: 2,
                    bottom: 10

                ),

                child: Text(name ,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color:black,

                  ),)),


            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 30,
                top: 20,
                bottom: 20,
              ),
              child: Text(
                message+ '      ',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',

                ),
              ),
            ),
            Positioned(
              bottom: 4,
              right: 10,
              child: Text(
                time,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

}

buildRoomsVu(String image , String room,String description){
  return  Center(

    child : ElevatedButton(

        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(13),
          fixedSize: Size(330, 66),
          primary: Color(0xFFEBEBEB),
          onPrimary: Colors.grey[700],
          elevation: 0,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
        ),

        onPressed: () {},

        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),

            child: Row(

                children:[
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image),

                        ),)),

                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              room,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              description,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: black,
                                fontSize: 12,
                              ),
                            ),



                          ])
                  ),

                  Column(children: [Padding(
                    padding: const EdgeInsets.only(
                        left: 0
                    ),
                    child: Text(
                      'Vu',
                      style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                    Positioned(
                      bottom: 4,
                      right: 10,
                      child: Row(
                        children: [
                          Text(
                            '4',
                            style: TextStyle(
                              fontSize: 13,
                              color: white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.done_all,
                            size: 20,
                            color: blueF,
                          ),
                        ],
                      ),
                    ),

                  ],



                  ),



                ]) )

    ),


  );
}


Widget buildRooms( String image , String room,String description, Page page){
  return  Center(

    child : ElevatedButton(

        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(13),
          fixedSize: Size(330, 66),
          primary: Color(0xFFEBEBEB),
          onPrimary: Colors.grey[700],
          elevation: 0,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12) ),
        ),

        onPressed: () => page ,

        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),

            child: Row(

                children:[
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image),

                        ),)),

                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              room,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              description,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: black,
                                fontSize: 12,
                              ),
                            ),



                          ])
                  ),

                  Column(children: [Padding(
                    padding: const EdgeInsets.only(
                        left: 0
                    ),
                    child: Text(
                      'Vu',
                      style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                    Positioned(
                      bottom: 4,
                      right: 10,
                      child: Row(
                        children: [
                          Text(
                            '4',
                            style: TextStyle(
                              fontSize: 13,
                              color: white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.done,
                            size: 20,
                            color: blueF,
                          ),
                        ],
                      ),
                    ),

                  ],



                  ),



                ]) )

    ),


  );
}


Widget Room( ){
  return  Material(
    color: Colors.transparent,
    elevation: 0,
    borderRadius: BorderRadius.circular(13),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child:InkWell(
      splashColor: black,
      onTap: (){},
      child :Ink.image(
          image:AssetImage('assets/Ai.png'),
          height:189,
          width: 145,
          fit: BoxFit.cover,

          child: Container(

            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal:10),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(13),
              color: Color.fromARGB(150, 255, 255, 255),
            ),


            child : Text('Artificial Intelligence                     ',
              style: TextStyle(fontFamily:'Poppins',
                color: black,
                fontSize: 12,

                fontWeight: FontWeight.bold,),
            ),
          )),

    ),


  );}

