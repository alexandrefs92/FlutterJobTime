import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_time/app/core/ui/job_timer_icons_icons.dart';
import 'package:job_time/app/modules/project/detail/widget/project_detail_appbar.dart';
import 'package:job_time/app/modules/project/detail/widget/project_pie_chart.dart';
import 'package:job_time/app/modules/project/detail/widget/project_taks_tile.dart';

import '../../../entities/project_status.dart';
import '../../../view_models/project_model.dart';
import 'controller/project_detail_controller.dart';

class ProjectDetailPage extends StatelessWidget {
  final ProjectDetailController controller;

  const ProjectDetailPage({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProjectDetailController, ProjectDetailState>(
        bloc: controller,
        listener: (context, state) {
          if (state.status == ProjectDetailStatus.failure) {
            AsukaSnackbar.alert('Erro interno');
          }
        },
        builder: (context, state) {
          final projectModel = state.projectModel;

          switch (state.status) {
            case ProjectDetailStatus.initial:
              return const Center(
                child: Text('Carregando projeto'),
              );
            case ProjectDetailStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ProjectDetailStatus.complete:
              return _buildProjectDetail(context, projectModel!);

            case ProjectDetailStatus.failure:
              if (projectModel != null) {
                return _buildProjectDetail(context, projectModel);
              }
              return const Center(
                child: Text('Erro ao carregar projeto.'),
              );
          }
        },
      ),
    );
  }


  Widget _buildProjectDetail(BuildContext context, ProjectModel projectModel) {

  final totalTask = projectModel.tasks.fold<int>(0, (totalValue, task) {
    return totalValue += task.duration;
  },);

  return CustomScrollView(slivers: [
    ProjectDetailAppbar(projectModel: projectModel,),
    SliverList(
      delegate: SliverChildListDelegate(
        [
           Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: ProjectPieChart(
              projectEstimate: projectModel.estimate,
              totalTask: totalTask,
            ),
          ),
          ...projectModel.tasks.map((task) => ProjectTaksTile(task: task,)).toList(),
        ],
      ),
    ),
    SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Visibility(
              visible: projectModel.status != ProjectStatus.finalizado,
              child: ElevatedButton.icon(
                  onPressed: () {
                     controller.finishProject();
                  },
                  icon: Icon(JobTimerIcons.ok_circled2),
                  label: Text('Finalizar Projeto')),
            ),
          ),
        ))
  ]);
}
}

class _NewTasks extends StatelessWidget {
  const _NewTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(Icons.add, color: Colors.white, size: 20),
          ),
        ),
        const Text('Adicionar task'),
      ],
    );
  }
}


