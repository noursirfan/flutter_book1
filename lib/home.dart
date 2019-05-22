import 'package:flutter/material.dart';
import 'package:book1/data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      elevation: 5,
      leading: IconButton(
        icon: Icon(Icons.menu), 
        onPressed: (){},
      ),
      title: Text('JavaScript Books'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        )
      ]
    );

    createTitle(Book book) => Hero(
      tag: book.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.yellow.shade900,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'detail/${book.title}');
          },
          child: Image(
            image: AssetImage(book.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2/3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTitle(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}