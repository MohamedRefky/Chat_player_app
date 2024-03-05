import 'package:flutter/material.dart';
import 'package:player_app/Chat/Player_Chat.dart';
import 'package:player_app/Chat/User.model.dart';

class Chat_View extends StatelessWidget {
  const Chat_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff4622fe),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
      ),
      backgroundColor: const Color(0xff4622fe),
      appBar: AppBar(
        backgroundColor: const Color(0xff4622fe),
        title: const Text(
          'Chats',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Favorite Contacts',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(Chats[index].image),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(Chats[index].lastName.split(' ').last,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500))
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: Chats.length),
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>  Player_Chate(
                                        imamgeUrl:
                                            (Chats[index].image),
                                        name: Chats[index].name)));
                          },
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(Chats[index].image),
                          ),
                          title: Text(
                            Chats[index].name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            Chats[index].lastName,
                            style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(Chats[index].time,
                              style: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 3,
                      );
                    },
                    itemCount: Chats.length)),
          ),
        ],
      ),
    );
  }
}
