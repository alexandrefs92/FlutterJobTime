
import 'package:job_time/app/view_models/project_model.dart';

import '../../entities/project_status.dart';

abstract class ProjectService {
  Future<void> register(ProjectModel projectModel);
  Future<List<ProjectModel>> findByStatus(ProjectStatus status);
  
}