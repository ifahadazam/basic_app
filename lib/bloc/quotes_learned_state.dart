part of 'quotes_learned_bloc.dart';

class QuotesLearnedState extends Equatable {
  final List<int> learnedQuoteList;
  const QuotesLearnedState({required this.learnedQuoteList});

  @override
  List<Object> get props => [learnedQuoteList];
}
