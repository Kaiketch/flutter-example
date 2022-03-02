import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/ui/component/loading_view.dart';
import 'package:flutter_example/ui/event/event_list_viewmodel.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventListPage extends HookConsumerWidget {
  const EventListPage(this._keyword, {Key? key}) : super(key: key);

  final String _keyword;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventListViewModel = ref.read(eventListStateProvider.notifier);
    final eventListState = ref.watch(eventListStateProvider);

    useEffect(() {
      Future(() {
        eventListViewModel.getEvents(_keyword);
      });
      return null;
    }, const []);

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    final exception = eventListState.exception;
    if (exception != null) {
      Future(() {
        const snackBar = SnackBar(content: Text('エラーが発生しました'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }

    final result = eventListState.eventResult;
    return Scaffold(
      appBar: AppBar(
        title: Text("Keyword: $_keyword"),
        leading: BackButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
        ),
      ),
      body: eventListState.isLoading
          ? const LoadingView()
          : ListView.builder(
              itemCount: result?.results_returned ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text("tile ${result?.events[index].title}"));
              },
            ),
    );
  }
}
