int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calcPoints(Map<String, int> team) {
    return team['Free throws']! * 1 +
        team['2 pointers']! * 2 +
        team['3 pointers']! * 3;
  }

  var pointsA = calcPoints(teamA);
  var pointsB = calcPoints(teamB);

  if (pointsA > pointsB) {
    return 1;
  } else if (pointsA < pointsB) {
    return 2;
  } else {
    return 0;
  }
}
