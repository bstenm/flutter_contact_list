/// Group a list of string according to their first letter
/// ["Joe", "Nick", "Jane"] => {"J": ["Joe", "Jane"], "N": ["Nick"]}
Map groupByFirstLetter(List<String> list) {
  Map<String, List> sorted = Map<String, List>();

  list.forEach((value) {
    String startWith = value.substring(0, 1);
    sorted[startWith] = sorted[startWith] ?? [];
    sorted[startWith].add(value);
  });

  return sorted;
}
