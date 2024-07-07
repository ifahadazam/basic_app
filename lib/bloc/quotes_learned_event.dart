part of 'quotes_learned_bloc.dart';

class QuotesLearnedEvent extends Equatable {
  final int learnedQuoteIndex;
  const QuotesLearnedEvent({required this.learnedQuoteIndex});

  @override
  List<Object> get props => [learnedQuoteIndex];
}
