import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
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
    final searchedKeyword =
        ref.watch(eventListStateProvider.select((value) => value.keyword));

    useEffect(() {
      Future(() {
        historyViewModel.onUpdateHistory();
      });
      return historyViewModel.dispose;
      // 初期表示またはキーワド検索が行われた場合に発火させる
    }, [searchedKeyword]);

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    final exception = historyState.exception;
    if (exception != null) {
      Future(() {
        const snackBar = SnackBar(content: Text('エラー'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }

    return historyState.isLoading
        ? const LoadingView()
        : ListView.builder(
            itemCount: historyState.keywordList?.length ?? 0,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text("${historyState.keywordList?[index].keyword}"));
            },
          );
  }
}
