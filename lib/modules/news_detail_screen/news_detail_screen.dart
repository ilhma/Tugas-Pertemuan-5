import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int LikeCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Direktorat Jenderal Pajak",
      //   ),
      // ),
      body: Column(
        children: [
          Image.network(
            "https://64.media.tumblr.com/785ea72614b0c3d216b4e397384477e9/6d8c8209cdf6dc2e-19/s1280x1920/56ee4b0c0685c35e792fd21fe16417db5cd0bb6f.jpg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Jiro and Naoko',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                Row(children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  Text(' $LikeCount')
                ])
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        hoverColor: Colors.red,
        onPressed: () {
          setState(() {
            LikeCount++;
          });
          print(LikeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
