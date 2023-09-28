import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String selectedDifficulty = 'Select Difficulty';

  final List<String> quizTopics = [
    'Mathematics',
    'Science',
    'Communication Skills',
    'Technology',
    'General Knowledge',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Test Your Knowledge !!!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: DropdownButton<String>(
                      value: selectedDifficulty,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDifficulty = newValue!;
                        });
                      },
                      items: <String>['Select Difficulty', 'Easy', 'Medium', 'Hard']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: quizTopics.length,
              itemBuilder: (context, index) {
                return QuizTopicItem(topic: quizTopics[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class QuizTopicItem extends StatelessWidget {
  final String topic;

  QuizTopicItem({required this.topic});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the quiz questions page for the selected topic
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => QuizQuestionsPage(topic: topic),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bullet point
            Container(
              margin: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.brightness_1,
                size: 12,
                color: Colors.blue, // Bullet point color
              ),
            ),
            // Topic text
            Text(
              topic,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizQuestionsPage extends StatelessWidget {
  final String topic;

  QuizQuestionsPage({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz - $topic'),
      ),
      body: Center(
        child: Text('Quiz Questions for $topic'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuizPage(),
  ));
}
