// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'covid_bloc.dart';

@immutable
abstract class CovidState {}

class CovidInitial extends CovidState {}

class CovidLoading extends CovidState {}

class CovidLoaded extends CovidState {
  final CovidModel covidModel;
  CovidLoaded({
    required this.covidModel,
  });
}

class CovidError extends CovidState {
  String message;
  CovidError({
    required this.message,
  });
}
