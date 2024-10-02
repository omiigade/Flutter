import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "In which year was Chhatrapati Shivaji Maharaj born?",
      "options": ["1620", "1630", "1635", "1640"],
      "correctanswer": 2,
    },
    {
      "question": "Who was the mother of Chhatrapati Shivaji Maharaj?",
      "options": ["Saibai Nimbalkar", "Jijabai", "Soyrabai", "Rajasabai"],
      "correctanswer": 1,
    },
    {
      "question": "Who was the father of Chhatrapati Shivaji Maharaj?",
      "options": [
        "Sambhaji Bhosale",
        "Shahaji Bhosale",
        "Balaji Vishwanath",
        "Ramchandra Nilkanth"
      ],
      "correctanswer": 1,
    },
    {
      "question":
          "Which empire did Shivaji Maharaj challenge during his reign?",
      "options": [
        "Mughal Empire",
        "British Empire",
        "Mughal Empire",
        "Portuguese Empire"
      ],
      "correctanswer": 2,
    },
    {
      "question":
          "What was the title given to Shivaji Maharaj after his coronation in 1674?",
      "options": ["Maharaja", "Chhatrapati", "Rajputra", "Rajaram"],
      "correctanswer": 1,
    },
    {
      "question":
          "What innovative military tactic is Shivaji Maharaj known for?",
      "options": [
        "Siege warfare",
        "Naval warfare",
        "Guerrilla warfare",
        "Trench warfare"
      ],
      "correctanswer": 2,
    },
    {
      "question": "How many sons did Chhatrapati Shivaji Maharaj have?",
      "options": ["One", "Two", "Three", "Four"],
      "correctanswer": 2,
    },
    {
      "question":
          "Shivaji Maharaj established a unique system of governance. What was it known as?",
      "options": [
        "Maratha Confederacy",
        "Swarajya",
        "Rajputana System",
        "Mughal Administration"
      ],
      "correctanswer": 1,
    },
    {
      "question":
          "How many forts are attributed to Chhatrapati Shivaji Maharaj?",
      "options": ["50", "100", "Over 300", "150"],
      "correctanswer": 2,
    },
    {
      "question": "In which year did Shivaji Maharaj pass away?",
      "options": ["1670", "1690", "1680", "1700"],
      "correctanswer": 2,
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int count = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctanswer"]) {
        if (selectedAnswerIndex ==
            allQuestions[currentQuestionIndex]["correctanswer"]) {
          count++;
        }
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage = true;

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                Text(
                  "Questions : ${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 3, 222, 200),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 60,
              width: 380,
              child: Text(
                allQuestions[currentQuestionIndex]["question"],
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 229, 108, 8)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  "A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  "B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  "C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                child: Text(
                  "D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.arrow_forward_ios),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://static.vecteezy.com/system/resources/thumbnails/019/013/598/small_2x/medal-awards-and-trophies-png.png",
                height: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Score : ${count}/10 ",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  questionPage = true;
                  currentQuestionIndex = 0;
                  selectedAnswerIndex = -1;
                  setState(() {});
                },
                child: const Text("Reset Quiz"),
              )
            ],
          ),
        ),
      );
    }
  }
}
