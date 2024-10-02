import 'package:community_quote_sharing_app/res/utils/quotes.dart';
import 'package:community_quote_sharing_app/view/home/widget/add_quote_sheet.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: quotes.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (context, index) {
          final data = quotes[index];
          return Card(
              child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.quotes,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  data.yourName,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(.5),
                  ),
                ),
                Text(
                  data.category.name,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.primary.withOpacity(.5),
                  ),
                ),
              ],
            ),
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            context: context,
            builder: (context) => const AddQuoteSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
