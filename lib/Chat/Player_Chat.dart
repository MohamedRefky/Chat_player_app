import 'package:flutter/material.dart';

class Player_Chate extends StatelessWidget {
  const Player_Chate({
    super.key,
    required this.imamgeUrl,
    required this.name,
  });
  final String imamgeUrl;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4622fe),
      appBar: AppBar(
        backgroundColor: const Color(0xff4622fe),
        centerTitle: true,
        title: Text(name,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        actions: const [
          Icon(
            Icons.more_horiz,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(imamgeUrl),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 240,
                        height: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          color: Color(0xfff2f3f7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Hi ${name.split(" ").first}',
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  
                )),
          ),
        ],
      ),
    );
  }
}
