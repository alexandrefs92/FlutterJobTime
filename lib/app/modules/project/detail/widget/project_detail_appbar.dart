
import 'package:flutter/material.dart';

class ProjectDetailAppbar extends SliverAppBar {

  ProjectDetailAppbar({super.key }): super (

    expandedHeight: 100,
          pinned: true,
          title: const Text('Projeto Y'),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: const Alignment(0, 1.6),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [ 
                         Text('10 tasks'), 
                           _NewTasks()
                         
                          ]
                        ),
                    ),
                  ),
                ),
              )
            ],
          ),
  );
  
}

class _NewTasks extends StatelessWidget {
  
  const _NewTasks({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),

          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(
              Icons.add,
              color:  Colors.white,
              size: 20
            ),
          ),
        ),
        const Text('Adicionar task'),
      ],
    );
  }
}
  
