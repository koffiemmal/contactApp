import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Inbox",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                CircleAvatar(
                  child: Icon(Icons.person),
                )
              ],
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: TextField(

                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromARGB(255, 202, 202, 202),
                              hintText: "Search",
                              suffixIcon: Icon(Icons.voice_chat),
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 20, left: 10),
                              child: Text(
                                'Favorites',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                            Discussion(0),
                            Discussion(1),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 20, left: 10),
                              child: Text(
                                'Chats',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                            Discussion(2),
                            Discussion(0),
                            Discussion(10),
                            Discussion(0),
                            Discussion(0),
                            Discussion(5),
                            Discussion(3),
                            Discussion(0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      top: 520,
                      right: 10,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(20),
                              fixedSize: MaterialStatePropertyAll(Size(60, 60)),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue)),
                          onPressed: null,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          )))
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border(top: BorderSide(color: Colors.grey))),
          padding: EdgeInsets.only(top: 5),
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.chat,
                      color: Colors.blue,
                    ),
                    Text(
                      'Inbox',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: const Color.fromARGB(255, 124, 124, 124),
                    ),
                    Text(
                      'Calls',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 130, 130, 130)),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.perm_contact_cal_sharp,
                      color: const Color.fromARGB(255, 124, 124, 124),
                    ),
                    Text('Contacts',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 130, 130, 130)))
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.group,
                      color: const Color.fromARGB(255, 124, 124, 124),
                    ),
                    Text('Groups',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 130, 130, 130)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Discussion extends StatelessWidget {


  int nbrmessage;

 Discussion(this.nbrmessage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Harry lewis',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text('Did you send those files ?')
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Text(
                  '9:10',
                  style: TextStyle(color: Colors.grey),
                ),
                nbrmessage == 0 ?
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ): Container(
                        alignment: Alignment.center,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${nbrmessage}',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
