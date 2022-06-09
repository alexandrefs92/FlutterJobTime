import 'package:flutter/material.dart';
import 'package:job_time/app/core/ui/job_timer_icons_icons.dart';
import 'package:job_time/app/modules/project/detail/widget/project_detail_appbar.dart';
import 'package:job_time/app/modules/project/detail/widget/project_pie_chart.dart';
import 'package:job_time/app/modules/project/detail/widget/project_taks_tile.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        ProjectDetailAppbar(),
        SliverList(
            delegate: SliverChildListDelegate(
          [
           const Padding(
              padding:  EdgeInsets.only(top: 50, bottom: 50),
              child: ProjectPieChart(),
            ),
            ProjectTaksTile(),
            ProjectTaksTile(),
            ProjectTaksTile(),
          ],
        ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton.icon(onPressed: () {}, 
              icon: Icon(JobTimerIcons.ok_circled2), 
              label: Text('Finalizar Projeto')),
            ),
          )
        )
      ]),
    );
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
