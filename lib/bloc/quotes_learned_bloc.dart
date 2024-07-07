import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'quotes_learned_event.dart';
part 'quotes_learned_state.dart';

class QuotesLearnedBloc extends Bloc<QuotesLearnedEvent, QuotesLearnedState> {
  QuotesLearnedBloc() : super(const QuotesLearnedState(learnedQuoteList: [])) {
    final List<int> learnedQuotesList = [];

    on<QuotesLearnedEvent>((event, emit) {
      learnedQuotesList.add(event.learnedQuoteIndex);
      emit(QuotesLearnedState(learnedQuoteList: learnedQuotesList));
      log('The list ${learnedQuotesList.length}');
    });
  }
}
