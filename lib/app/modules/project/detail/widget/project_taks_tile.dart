import 'package:flutter/material.dart';

class ProjectTaksTile extends StatelessWidget {
  const ProjectTaksTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('Task'),
        
        RichText(
          text: const TextSpan(
            children: [ TextSpan( text: 'Duração', style: TextStyle(color: Colors.grey)),
             TextSpan( text: '       ' ),
             TextSpan( text: '4' , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black) ) ],

          ))],
        
      ),
    );
  }
}