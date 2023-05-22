import 'package:bloc/bloc.dart';
import 'package:blocapi/bloc/covid_event.dart';
import 'package:blocapi/model/covid_model.dart';
import 'package:blocapi/resources/api-repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc() : super(CovidInitial()) {
    final ApiRespository apiRespository = ApiRespository();

    on<GetCovidList>((event, emit) async {
      try {
        emit(CovidLoading());
        final covidlist = await apiRespository.fetchCovidList();
        emit(CovidLoaded(covidModel: covidlist));
      } catch (e) {
        emit(CovidError(message: e.toString()));
      }
    });
  }
}
