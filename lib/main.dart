import 'package:flutter/material.dart';

// Starts the Flutter application.
void main() {
  runApp(const ContainerRowColumnApp());
}

// Builds the Material app that displays the widget demonstration.
class ContainerRowColumnApp extends StatelessWidget {
  const ContainerRowColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Provides the app's Material styling and home screen.
    return MaterialApp(
      title: 'Container, Row and Column',
      // Displays the demonstration screen.
      home: Scaffold(
        // Shows the screen title in the app bar.
        appBar: AppBar(title: const Text('Container, Row and Column')),
        // Supplies the available height so the content can center and scroll.
        body: LayoutBuilder(
          builder: (context, constraints) {
            // Allows the screen content to scroll on short displays.
            return SingleChildScrollView(
              // Keeps the content at least as tall as the viewport.
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                // Centers the demonstration widgets vertically and horizontally.
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Displays a blue, rounded container with centered text.
                    Container(
                      width: 200,
                      height: 100,
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Text(
                        'Container',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // Adds vertical space before the row.
                    const SizedBox(height: 20),
                    // Arranges three equally spaced colored containers in a row.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Shows the first numbered container.
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          color: Colors.red,
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        // Shows the second numbered container.
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          color: Colors.green,
                          child: const Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        // Shows the third numbered container.
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          color: Colors.orange,
                          child: const Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    // Adds vertical space before the nested column.
                    const SizedBox(height: 20),
                    // Stacks two labeled containers vertically.
                    Column(
                      children: [
                        // Displays the first item in the nested column.
                        Container(
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          color: Colors.purple,
                          child: const Text(
                            'Column 1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        // Displays the second item in the nested column.
                        Container(
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          color: Colors.teal,
                          child: const Text(
                            'Column 2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
