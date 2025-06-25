void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  //For calculate average scores
  Map<String, double> averageScores = {};
  for (var student in students) {
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);

    double avg = scores.reduce((a, b) => a + b) / scores.length;
    averageScores[name] = double.parse(avg.toStringAsFixed(2));
  }

  ///
}
