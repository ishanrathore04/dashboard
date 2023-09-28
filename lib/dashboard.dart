import 'package:flutter/material.dart';
import 'courses_page.dart';
import 'quiz_page.dart';
import 'papers_page.dart'; // Import the PapersPage
import 'pdf_page.dart'; // Import the PdfPage

class Dashboard extends StatelessWidget {
  var height, width;

  List imgData = [
    "images/course.jpg",
    "images/quiz.png",
    "images/pdf.png",
    "images/about.png",
    
  ];

  List titles = [
    "Courses",
    "Quiz",
    "Papers",
    "About Us", // Update the title for PDFs
    
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0XFF4E74F9),
          width: width,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                height: height * 0.25,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 45,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/user.jpg",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dashboard",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "My Info",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.blueGrey.shade50,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  width: width,
                  padding: EdgeInsets.only(bottom: 20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          if (index == 0) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CoursesPage(),
                              ),
                            );
                          } else if (index == 1) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => QuizPage(),
                              ),
                            );
                          } else if (index == 2) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PapersPage(),
                              ),
                            );
                          } else if (index == 3) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PdfPage(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                imgData[index],
                                width: 100,
                              ),
                              Text(
                                titles[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
