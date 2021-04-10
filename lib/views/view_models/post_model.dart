class Post {
  String authorName;
  String authorImagePath;
  String timeAgo;
  String imageUrl;
  String caption;

  Post(
      {this.authorName,
      this.authorImagePath,
      this.timeAgo,
      this.imageUrl,
      String caption});
}

final List<Post> posts = [
  Post(
      authorName: 'Bruce Wayne',
      authorImagePath: 'assets/images/user0.png',
      timeAgo: 'just now',
      imageUrl: 'assets/images/post0.jpg',
      caption: 'Thank you everyone for being there. Hope you enjoyed..'),
  Post(
      authorName: 'Baburao',
      authorImagePath: 'assets/images/user5.png',
      timeAgo: '5 mins ago',
      imageUrl: 'assets/images/post5.jpg',
      caption:
          'Join us on May 17 for cleaning event. Lets keep our surroundings clean:)'),
  Post(
      authorName: 'Falcon',
      authorImagePath: 'assets/images/user3.png',
      timeAgo: '10 mins ago',
      imageUrl: 'assets/images/post4.jpg',
      caption:
          'An initiative to help orphans in thier growth years, support us by donating.'),
  Post(
      authorName: 'Witcher',
      authorImagePath: 'assets/images/user1.png',
      timeAgo: '20 mins ago',
      imageUrl: 'assets/images/post1.jpg',
      caption: 'A new concert comming soon..'),
  Post(
      authorName: 'Carl El',
      authorImagePath: 'assets/images/user2.png',
      timeAgo: '40 min',
      imageUrl: 'assets/images/post2.jpg',
      caption:
          'Join us on May 17 for cleaning event. Lets keep our surroundings clean:)'),
  Post(
      authorName: 'Rockstar',
      authorImagePath: 'assets/images/user0.png',
      timeAgo: 'an hour ago',
      imageUrl: 'assets/images/post3.jpg',
      caption:
          'We are loking for Gameplay Programmer, send your resume on jobs.com/rock'),
];
