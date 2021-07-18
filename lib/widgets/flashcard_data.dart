class FlashcardData {
  String frontLabel;
  String frontComment;

  String backLabel;
  String backComment;

  FlashcardData({
    required this.frontLabel,
    required this.backLabel,
    this.backComment = '',
    this.frontComment = '',
  });
}
