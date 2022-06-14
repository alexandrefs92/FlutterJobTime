
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../entities/project_status.dart';
import '../../../../view_models/project_model.dart';

class ProjectDetailAppbar extends SliverAppBar {

  ProjectDetailAppbar({required ProjectModel projectModel, super.key }): super (

    expandedHeight: 100,
          pinned: true,
          title:  Text(projectModel.name),
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
                        children:  [ 
                         Text('${projectModel.tasks.length}} tasks'), 
                           Visibility(
                            visible: projectModel.status != ProjectStatus.finalizado,
                            replacement: const Text('Projeto finalizado'),
                            child: _NewTasks(projectModel: projectModel))
                         
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
  
  final  ProjectModel projectModel;
  const _NewTasks({required this.projectModel, Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { Modular.to.pushNamed('/project/task/', arguments: projectModel); },
      child: Row(
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
      ),
    );
  }
}
  
