//Amy Oevermann
//Zufällige Reihenfolge der Antworten ermöglichen
//Den falschen Antworten habe ich die richtige Antwort hinzugefügt, damit ich nur eine weitere Liste erstellen muss

List<String> getQuestionRandomList(List<String> wrongAnswers, String correctAnswer) {
  wrongAnswers.add(correctAnswer);
  wrongAnswers.shuffle();
  return wrongAnswers;
}

//Zufällige Reihenfolge der Fragen
List<int> getQuestionIndexRandom(int length) {
  var list = new List<int>.generate(length, (index)=> index);
  list.shuffle();
  return list;
}

int getCorrectAnswerIndex(List<String> answers, String correctAnswer){
  for (int index = 0; index < answers.length; index++){
    if(answers[index].compareTo(correctAnswer) == 0){
      return index;
    }
  }
  return -1;
}

//Wirtschaftinformatik Fragen
List<String> getQuestionCompanyRandomList(List<String> companyWrongAnswers, String companyCorrectAnswer) {
  companyWrongAnswers.add(companyCorrectAnswer);
  companyWrongAnswers.shuffle();
  return companyWrongAnswers;
}

//Zufällige Reihenfolge der Fragen
List<int> getQuestionCompanyIndexRandom(int length) {
  var list = new List<int>.generate(length, (index)=> index);
  list.shuffle();
  return list;
}

int getCorrectCompanyAnswerIndex(List<String> companyAnswers, String companyCorrectAnswer){
  for (int index = 0; index < companyAnswers.length; index++){
    if(companyAnswers[index].compareTo(companyCorrectAnswer) == 0){
      return index;
    }
  }
  return -1;
}