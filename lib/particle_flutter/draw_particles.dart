
import 'package:flutter_web/material.dart';
import 'package:raviportfolio/particle_flutter/particle.dart';

class DisplayPoints extends CustomPainter {
  final List<Particle> particlesList;

  DisplayPoints({
    this.particlesList,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint line =  Paint();
    line.strokeCap = StrokeCap.round;
    line.color = particlesList.elementAt(0).color;

    // Draw all the particles
    for (var particle in particlesList) {
      line.strokeWidth = particle.size;
      Offset center =  Offset(particle.xCoor, particle.yCoor);
      line.style = PaintingStyle.fill;
      canvas.drawCircle(center, particle.size, line);
    }

    // Draw the connect line
    for (int i = 0; i < this.particlesList.length; i++) {
      for (int j = i + 1; j < this.particlesList.length; j++) {
        Particle particle = this.particlesList.elementAt(i);
        Particle anotherParticle = this.particlesList.elementAt(j);
        if (particle.isNear(anotherParticle)) {
          Offset firstParticle =  Offset(particle.xCoor, particle.yCoor);
          Offset secondParticle =
               Offset(anotherParticle.xCoor, anotherParticle.yCoor);
          line.strokeWidth = 2.0;
          canvas.drawLine(firstParticle, secondParticle, line);
        }
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
