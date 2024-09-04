import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tester/bloc/quotes_learned_bloc.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: 18,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  'Quote $index',
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
                trailing: InkWell(
                  onTap: () {
                    context
                        .read<QuotesLearnedBloc>()
                        .add(QuotesLearnedEvent(learnedQuoteIndex: index));
                  },
                  child: const Icon(
                    Icons.favorite_outline,
                    size: 30,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
