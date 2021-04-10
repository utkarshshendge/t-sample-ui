class SlidingButtonModel {
  String titleTxt;
  bool isSelected;

  SlidingButtonModel({
    this.titleTxt = '',
    this.isSelected = false,
  });

  static List<SlidingButtonModel> slidingButtonList = [
    SlidingButtonModel(
      titleTxt: 'Select All',
      isSelected: false,
    ),
    SlidingButtonModel(
      titleTxt: 'Make Public',
      isSelected: true,
    ),
    SlidingButtonModel(
      titleTxt: 'Recurring',
      isSelected: false,
    ),
    SlidingButtonModel(
      titleTxt: 'All day',
      isSelected: false,
    ),
  ];
}
