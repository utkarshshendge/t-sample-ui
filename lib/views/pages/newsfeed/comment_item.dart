import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/comment_model.dart';

class CommentItem extends StatefulWidget {
  final int index;

  const CommentItem({Key key, this.index}) : super(key: key);
  @override
  _CommentItemState createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
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
                image: AssetImage(comments[widget.index].authorImagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          comments[widget.index].authorName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(comments[widget.index].text),
        trailing: IconButton(
          icon: Icon(
            Icons.favorite_border,
          ),
          color: Colors.grey,
          onPressed: () => print('Like commit'),
        ),
      ),
    );
  }
}
