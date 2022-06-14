
import 'dart:js';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_time/app/modules/project/detail/task/controller/task_controller.dart';
import 'package:job_time/app/modules/project/detail/task/task_page.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

import '../../../../view_models/project_model.dart';

class TaskModule extends Module {

  @override
  List<Bind<Object>> get binds => [
    BlocBind.lazySingleton((i) => TaskController())
  ];

    @override
  List<ModularRoute> get routes => [ ChildRoute(
    '/',
    child: (context, args)  {

      final ProjectModel projectModel = args.data;
      return  TaskPage(controller: Modular.get()..setProject(projectModel),);
    })
  ];
}