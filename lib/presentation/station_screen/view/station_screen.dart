import 'package:flutter/material.dart';

class TrackTrainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track a Train'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomPaint(
                painter: TrackPainter(),
                child: Container(
                  height: 200, // Adjust as needed
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  _buildStation('Station A'),
                  _buildStation('Station B'),
                  _buildStation('Station C'),
                  _buildStation('Station D'),
                  _buildStation('Station E'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStation(String name) {
    return Container(
      width: 80, // Adjust as needed
      child: Center(
        child: Text(name),
      ),
    );
  }
}

class TrackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double lineHeight = size.height / 2;
    final double lineWidth = size.width - 20; // Adjust as needed

    // Draw the line
    final Paint linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;
    canvas.drawLine(
      Offset(10, lineHeight),
      Offset(lineWidth, lineHeight),
      linePaint,
    );

    // Draw dots at each station
    final Paint dotPaint = Paint()..color = Colors.black;
    final double dotRadius = 5.0;
    final double spaceBetweenDots = lineWidth / 4;

    for (int i = 0; i < 5; i++) {
      double dx = 10 + (i * spaceBetweenDots);
      canvas.drawCircle(
        Offset(dx, lineHeight),
        dotRadius,
        dotPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
