import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Martin Atia'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('MA'),
              backgroundColor: Colors.orange,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage(
              'https://scontent.ftuc1-1.fna.fbcdn.net/v/t39.30808-6/284023048_5237152349673496_1807304620420704326_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=7ok-lOq_OtYAX-5ymy9&_nc_ht=scontent.ftuc1-1.fna&oh=00_AT-yv83PrSJOj1s8usz_RLgJja9mMldhUgsFdPZfSkrCsQ&oe=6294756D'),
        ),
      ),
    );
  }
}
