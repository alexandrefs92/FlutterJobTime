
import 'package:isar/isar.dart';
import 'package:job_time/app/entities/convertes/project_status_converter.dart';
import 'package:job_time/app/entities/project_status.dart';
import 'package:job_time/app/entities/project_task.dart';

part 'project.g.dart';

@Collection()
class Project {
  @Id()
  int? id;

  late String name;
  late int estimate;
  @ProjectStatusConverter()
  late ProjectStatus status;

  final tasks = IsarLinks<ProjectTask>();

}