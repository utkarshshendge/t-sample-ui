class Comment {
  String authorName;
  String authorImagePath;
  String text;

  Comment({
    this.authorName,
    this.authorImagePath,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Mary Jane',
    authorImagePath: 'assets/images/user2.png',
    text: 'Cool',
  ),
  Comment(
    authorName: 'Tony Stark',
    authorImagePath: 'assets/images/user3.png',
    text: 'Wow!!',
  ),
  Comment(
    authorName: 'Saitama',
    authorImagePath: 'assets/images/user4.png',
    text: 'Hey everyone, I have fever what should I do?',
  ),
  Comment(
    authorName: 'Clark Kent',
    authorImagePath: 'assets/images/user1.png',
    text:
        '@saitama Try sitting in refridgerator, if this dosent help,\n open an issue on GitHub',
  ),
  Comment(
    authorName: 'Saitama',
    authorImagePath: 'assets/images/user4.png',
    text: 'Thanks for the advice @clark :) I opened an issue for the same.',
  ),
  Comment(
    authorName: 'Saitama',
    authorImagePath: 'assets/images/user4.png',
    text:
        'Hey @clark, the fever has gone!! Should I create a PR?\n or should I sit in fridge?',
  ),
  Comment(
    authorName: 'Clark Kent',
    authorImagePath: 'assets/images/user1.png',
    text: '@saitama Close the issue!',
  ),
  Comment(
    authorName: 'Dwayne Johnson',
    authorImagePath: 'assets/images/user0.png',
    text: 'The Rock, likes it 👍',
  ),
];
