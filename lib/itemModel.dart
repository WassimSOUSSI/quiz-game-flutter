// ignore_for_file: non_constant_identifier_names
class PANASItem {
  final String item;
  final String affect;

  PANASItem(this.item, this.affect);
}

List<PANASItem> getItems() {
  List<PANASItem> list = [];
  list.add(PANASItem("Interested", "positive"));
  list.add(PANASItem("Distressed", "negative "));
  list.add(PANASItem("Excited", "positive"));
  list.add(PANASItem("Upset", "negative "));
  list.add(PANASItem("Strong", "positive"));
  list.add(PANASItem("Guilty", "negative "));
  list.add(PANASItem("Scared", "negative "));
  list.add(PANASItem("Hostile", "negative "));
  list.add(PANASItem("Enthusiastic", "positive"));
  list.add(PANASItem("Proud", "positive"));
  list.add(PANASItem("Alert", "negative "));
  list.add(PANASItem("Irritable", "positive"));
  list.add(PANASItem("Ashamed", "negative "));
  list.add(PANASItem("Inspired", "positive"));
  list.add(PANASItem("Nervous", "negative "));
  list.add(PANASItem("Determined", "positive"));
  list.add(PANASItem("Attentive", "positive"));
  list.add(PANASItem("Jittery", "negative "));
  list.add(PANASItem("Active", "positive"));
  list.add(PANASItem("Afraid", "negative "));

  return list;
}
