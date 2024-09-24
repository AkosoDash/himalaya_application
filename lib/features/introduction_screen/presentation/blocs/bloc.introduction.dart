import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalaya_application/features/introduction_screen/domain/entities/entity.introduction.dart'; // Use this
import 'package:himalaya_application/features/introduction_screen/domain/usecases/get_introduction.dart';

abstract class IntroductionState {}

class IntroductionInitial extends IntroductionState {}

class IntroductionLoading extends IntroductionState {}

class IntroductionLoaded extends IntroductionState {
  final List<Introduction> introductions;

  IntroductionLoaded(this.introductions);
}

class IntroductionError extends IntroductionState {
  final String message;

  IntroductionError(this.message);
}

class IntroductionBloc extends Cubit<IntroductionState> {
  final GetIntroduction getIntroduction;

  IntroductionBloc(this.getIntroduction) : super(IntroductionInitial());

  void fetchIntroductions() async {
    emit(IntroductionLoading());
    final introductions = getIntroduction.execute();
    try {
      emit(IntroductionLoaded(introductions));
    } catch (e) {
      log(e.toString());
      emit(IntroductionError("Failed to get introductions data"));
    }
  }
}
