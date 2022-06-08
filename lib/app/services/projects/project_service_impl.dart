import 'package:job_time/app/repositories/projects/project_repository.dart';
import 'package:job_time/app/view_models/project_model.dart';

import '../../entities/project.dart';
import './project_service.dart';

class ProjectServiceImpl implements ProjectService {
  final ProjectRepository _projectRepository;

  ProjectServiceImpl({required ProjectRepository projectRepository}) : _projectRepository = projectRepository;

  @override
  Future<void> register(ProjectModel projectModel) async {
    final project = Project()
    ..id = projectModel.id
    ..name = projectModel.name
    ..status = projectModel.status
    ..estimate = projectModel.estimate;

    await _projectRepository.register(project);
  }

}