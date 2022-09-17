class Suggestion {
  final String suggestionText;
  final String label;

  Suggestion(this.suggestionText, this.label);
}

List<Suggestion> getSuggestions(String label) {
  List<Suggestion> list = [];
  switch (label) {
    case "Good":
      list.add(Suggestion("Read a book", "Good"));
      list.add(Suggestion("Watch a documentary ", "Good"));
      list.add(Suggestion("Write a to do list", "Good"));

      break;
    case "Neutral":
      list.add(Suggestion("Take a walk", "Neutral"));
      list.add(Suggestion("Watch a movie", "Neutral"));
      list.add(Suggestion("Do some exercise", "Good"));

      break;
    case "Bad":
      list.add(Suggestion("Take a coffe", "Bad"));
      list.add(Suggestion("Call someone", "Good"));
      list.add(Suggestion("Take a rest", "Good"));
      break;
    default:
  }

  return list;
}
