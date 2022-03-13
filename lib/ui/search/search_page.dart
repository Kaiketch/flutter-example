import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/app_router.dart';
import 'package:flutter_example/ui/search/search_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchViewModel = ref.read(searchStateProvider.notifier);
    final searchState = ref.watch(searchStateProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(hintText: "keyword"),
            onChanged: (text) {
              searchViewModel.onKeywordUpdated(text);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ElevatedButton(
              child: const Text("Search"),
              onPressed: () => {
                if (searchState.isNotEmpty)
                  {
                    searchViewModel.onSearchButtonTapped(),
                    AutoRouter.of(context).push(
                      EventListRoute(keyword: searchState),
                    ),
                  },
              },
            ),
          ),
        ],
      ),
    );
  }
}
