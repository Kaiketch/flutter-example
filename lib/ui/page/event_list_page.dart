import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/ui/page/component/loading_view.dart';
import 'package:flutter_example/ui/event/event_state_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventListPage extends HookConsumerWidget {
  const EventListPage(this._keyword, {Key? key}) : super(key: key);

  final String _keyword;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventStateNotifier = ref.read(eventStateProvider.notifier);
    final eventState = ref.watch(eventStateProvider);

    useEffect(() {
      Future(() {
        eventStateNotifier.onUpdateEventList(_keyword);
      });
      return null;
    }, const []);

    final error = eventState.appError;
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

    final result = eventState.eventResult;
    return Scaffold(
      appBar: AppBar(
        title: Text("Keyword: $_keyword"),
        leading: BackButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
        ),
      ),
      body: eventState.isLoading
          ? const LoadingView()
          : ListView.builder(
              itemCount: result?.results_returned ?? 0,
              itemBuilder: (context, index) {
                return ListTile(title: Text("${result?.events[index].title}"));
              },
            ),
    );
  }
}
