import 'rating.dart';
import 'data.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Book book;

  Detail(this.book);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: .5,
      title: Text('JavaScript Books'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.yellow.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text(
            data: '${book.pages} pages',
            isBold: false,
            color: Colors.black38,
            size: 12,
            padding: EdgeInsets.zero)
      ],
    );

    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(
            data: book.title,
            isBold: true,
            size: 16,
            padding: EdgeInsets.only(top: 16.0)),
        text(
            data: 'by ${book.writer}',
            isBold: false,
            color: Colors.black54,
            size: 12,
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0)),
        Row(
          children: <Widget>[
            text(
                data: book.price,
                isBold: true,
                size: 14,
                padding: EdgeInsets.only(right: 8.0)),
            Ratingbar(rating: book.rating)
          ],
        ),
        SizedBox(height: 32.0),
        Row(
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.blue.shade200,
              elevation: 5.0,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 160.0,
                // color: Colors.blue,
                child: text(
                    data: 'BUY IT NOW',
                    isBold: false,
                    color: Colors.white,
                    size: 13,
                    padding: EdgeInsets.zero
                  ),
              ),
            ),
            // Material(
            //   borderRadius: BorderRadius.circular(100.0),
            //   shadowColor: Colors.lightBlueAccent.shade100,
            //   color: Colors.red[300],
            //   child: MaterialButton(
            //       minWidth: 2.0,
            //       height: 2.0,
            //       onPressed: () {},
            //       child: Icon(
            //         Icons.favorite_border,
            //         color: Colors.white,
            //         size: 20.0,
            //       )),
            // ),
          ],
        ),
      ],
    );

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    final bottomContent = Container(
      height: 450.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(book.description,
            style: TextStyle(fontSize: 14.0, height: 1.5)),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  // text(String data, {
  //   Color color = Colors.black87,
  //   num size = 14,
  //   EdgeInsetsGeometry padding = EdgeInsets.zero,
  //   bool isBold = false
  // }) async => Padding(
  //       padding: padding,
  //       child: Text(
  //         data,
  //         style: TextStyle(
  //           color: color,
  //           fontSize: size.toDouble(),
  //           fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
  //     ),
  // );

}

class text extends StatelessWidget {
  text({this.data, this.color, this.size, this.padding, this.isBold});

  final String data;
  final Color color;
  final num size;
  final EdgeInsetsGeometry padding;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Padding(
            padding: padding,
            child: Text(data,
                style: TextStyle(
                    color: color,
                    fontSize: size.toDouble(),
                    fontWeight:
                        isBold ? FontWeight.bold : FontWeight.normal))));
  }
}
