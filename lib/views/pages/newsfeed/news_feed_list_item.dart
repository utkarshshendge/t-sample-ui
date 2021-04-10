import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/post_model.dart';
import 'package:talawa_sample_ui/app_theme.dart';
import 'post_screen.dart';

class NewsFeedList extends StatefulWidget {
  final int index;

  const NewsFeedList({Key key, this.index}) : super(key: key);
  @override
  _NewsFeedListState createState() => _NewsFeedListState();
}

class _NewsFeedListState extends State<NewsFeedList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 4.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image:
                                AssetImage(posts[widget.index].authorImagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.bookmark_border),
                      color: Colors.black,
                      onPressed: () => print('BookMark'),
                    ),
                    title: Text(
                      posts[widget.index].authorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(posts[widget.index].timeAgo),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like Feed'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PostPage(
                            post: posts[widget.index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 4.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(posts[widget.index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.thumb_up_alt_outlined),
                                  iconSize: 30.0,
                                  onPressed: () => print('Like post'),
                                ),
                                Text(
                                  '25',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.chat),
                                  iconSize: 30.0,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => PostPage(
                                          post: posts[widget.index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.share_rounded),
                          iconSize: 25.0,
                          onPressed: () => print('Post Saved'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: TalawaTheme.secondaryColor1,
            ),
          ],
        ),
      ),
    );
  }
}
