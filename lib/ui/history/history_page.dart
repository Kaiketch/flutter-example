import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/app_router.dart';
import 'package:flutter_example/ui/component/loading_view.dart';
import 'package:flutter_example/ui/event/event_list_viewmodel.dart';
import 'package:flutter_example/ui/history/history_viewmodel.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryPage extends HookConsumerWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyViewModel = ref.read(historyStateProvider.notifier);
    final historyState = ref.watch(historyStateProvider);

    useEffect(() {
      Future(() {
        if(historyState.shouldLoad) {
          historyViewModel.onUpdateHistory();
        }
      });
      return null;
      // 初期表示またはキーワド検索が行われた場合に発火させる
    }, [historyState.shouldLoad]);

    final error = historyState.appError;
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

    return historyState.isLoading
        ? const LoadingView()
        : ListView.builder(
            itemCount: historyState.keywordList?.length ?? 0,
            itemBuilder: (context, index) {
              final keyword = historyState.keywordList?[index].keyword;

              return ListTile(
                title: Text(keyword ?? ""),
                onTap: () {
                  if (keyword != null) {
                    AutoRouter.of(context).push(
                      EventListRoute(keyword: keyword),
                    );
                  }
                },
              );
            },
          );
  }
}
