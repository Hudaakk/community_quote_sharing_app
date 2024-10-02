enum Category {
  inspirational,
  motivational,
  life,
  love,
  friendship,
  happiness,
  success,
  wisdom,
  humor,
  nature,
  philosophy,
  courage,
  mindfulness,
  selflove,
  family,
  positivity,
  dreams,
  leadership,
  spirituality,
  gratitude,
}

class QuoteModel {
  final String yourName;
  final String quotes;
  final Category category;

  QuoteModel({
    required this.yourName,
    required this.quotes,
    required this.category,
  });
}
