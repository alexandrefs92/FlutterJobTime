import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../view_models/project_model.dart';

part 'project_detail_state.dart';

class ProjectDetailController extends Cubit<ProjectDetailState> {


  ProjectDetailController() : super(const ProjectDetailState.initial());

  void setProject(ProjectModel projectModel) {
    emit(state.copyWith(projectModel: projectModel, status: ProjectDetailStatus.complete));
  }
}