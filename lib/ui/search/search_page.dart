import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/app_router.dart';
import 'package:flutter_example/ui/component/loading_view.dart';
import 'package:flutter_example/ui/history/history_viewmodel.dart';
import 'package:flutter_example/ui/search/search_viewmodel.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchViewModel = ref.read(searchStateProvider.notifier);
    final historyViewModel = ref.read(historyStateProvider.notifier);
    final searchState = ref.watch(searchStateProvider);

    final error = searchState.appError;
    useEffect(() {
      if (error != null) {
        Future(() {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          final snackBar = SnackBar(content: Text(error.message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      }
      return null;
    }, [error]);

    final String? keyword = searchState.keyword;

    return searchState.isLoading
        ? const LoadingView()
        : Padding(
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
                      FocusScope.of(context).unfocus(),
                      if (keyword != null && keyword.isNotEmpty)
                        {
                          searchViewModel.onSearchButtonTapped(keyword),
                          historyViewModel.onBet(),
                          AutoRouter.of(context).push(
                            EventListRoute(keyword: keyword),
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
