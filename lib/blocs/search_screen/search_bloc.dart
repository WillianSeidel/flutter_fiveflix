import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fiveflix/models/popular_movie_model.dart';
import 'package:flutter_fiveflix/repositories/media_repository.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final MediaRepository _repository;

  SearchBloc({required MediaRepository repository})
      : _repository = repository,
        super(SearchInitial()) {
    on<Search>(_onSearch);
  }

  void _onSearch(Search event, Emitter<SearchState> emit) async {
    emit(SearchLoading());

    try {
      List<PopularMovieModel> mediaList =
          await _repository.searchMedia(query: event.query);

      emit(SearchLoaded(mediaList: mediaList));
    } catch (e) {
      emit(SearchError(e.toString()));
    }
  }
}
