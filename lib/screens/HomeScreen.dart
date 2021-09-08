import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yann/widgets/Category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          children: [
           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                       prefixIcon: Icon(Icons.search),
                       hintText: "un texte",
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       )
                   ),
                 ),
                 Row(
                   children: [
                     SizedBox(
                       child:    CircleAvatar(),
                       height: 60,
                         width: 60,
                     ),
                    SizedBox(width: 10),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Hi Dean", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                         Text("Find a garba tomorrow", style: TextStyle( fontSize: 15)),
                       ],
                     )
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Categories"),
                     TextButton(onPressed: () {}, child: Text("See all", style: TextStyle(color: Theme.of(context).primaryColor)))
                   ],
                 ),
               ],
             ),
           ),
           Expanded(
               flex: 2,
               child: ListView.builder(
               itemCount: 5,
               itemBuilder: (BuildContext ctx, int i) {
                 return Padding(
                   padding: const EdgeInsets.only(bottom: 8.0),
                   child: CategoryWidget(),
                 );
               }
           )
           )
          ],
        ),
      ),
    );
  }
}
