class QuestionsItemModel {
  final String question;
  final List<String> options;
  //final String correctAnswer;
  final List<String> correctAnswers;

  QuestionsItemModel({
    required this.correctAnswers,
    required this.question,
    required this.options,
    //required this.correctAnswer,
  });

  //  لخلط الخيارات
  // List<String> getShuffledAnswers() {
  //   final shuffled = List<String>.from(options);
  //   shuffled.shuffle();
  //   return shuffled;
  //}

  //  للتحقق من الإجابة الصحيحة
  bool checkAnswer(String selectedAnswer) {
    return correctAnswers.contains(selectedAnswer);
  }

  num calculateScore(String selectedAnswer) {
    //  لحساب الدرجات
    return checkAnswer(selectedAnswer) ? 1 : 0;
  }
}

List<QuestionsItemModel> getQuestionsItemModel() {
  // تعريف الأسئلة باستخدام QuestionsItemModel
  return [
    QuestionsItemModel(
      question: 'What is the main goal of mass vaccination programs?',
      options: [
        'Improving physical fitness',
        'Preventing infectious diseases',
        'Lowering blood pressure',
        'Treating chronic illnesses',
      ],
      correctAnswers: [
        'Preventing infectious diseases',
        'Lowering blood pressure',
      ],
    ),
    QuestionsItemModel(
      question:
          'What is one of the main factors contributing to the spread of infectious diseases?',
      options: [
        'Level of education',
        'Only genetic factors',
        'Lack of personal hygiene',
        'Number of sleeping hours',
      ],
      correctAnswers: ['Lack of personal hygiene'],
    ),
    QuestionsItemModel(
      question:
          'Which of the following is an example of primary prevention in public health?',
      options: [
        'Performing surgery on a patient',
        'Administering vaccines',
        'Physical therapy after injury',
        'Regular laboratory screenings',
      ],
      correctAnswers: ['Administering vaccines'],
    ),
    QuestionsItemModel(
      question: 'What are effective ways to reduce stress?',
      options: [
        'Practicing mindfulness',
        'Regular physical exercise',
        ' Overeating comfort food',
        'Ignoring problems',
      ],
      correctAnswers: ['Practicing mindfulness', 'Regular physical exercise'],
    ),
  ];
}

// List<String> images = [
//   'assets/images/01.svg',
//   'assets/images/02.svg',
//   'assets/images/03.svg',
//   'assets/images/04.svg',
// ];

List<String> images = [
  'assets/images/q01.svg',
  'assets/images/q02.svg',
  'assets/images/q03.svg',
  'assets/images/q04.svg',
];
