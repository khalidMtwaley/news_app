import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/shared/service_locator.dart';
import 'package:news/sources/data/repository/sources_repository.dart';
import 'package:news/sources/view_model/sources_states.dart';

class SourcesViewModel extends Cubit<SourcesState> {
  SourcesViewModel() : super(SourcesInitial()) {
    repository = SourcesRepository(ServiceLocator.sourcesDataSource);
  }

  late final SourcesRepository repository;

  Future<void> getSources(String categoryId) async {
    emit(GetSourcesLoading());
    try {
      final sources = await repository.getSources(categoryId);
      emit(GetSourcesSuccess(sources));
    } catch (error) {
      emit(GetSourcesError(error.toString()));
    }
  }
}
