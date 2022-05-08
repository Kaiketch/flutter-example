import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/app_router.dart';
import 'package:flutter_example/ui/page/component/loading_view.dart';
import 'package:flutter_example/ui/keyword/keyword_state_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryPage extends HookConsumerWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordStateNotifier = ref.read(keywordStateProvider.notifier);
    final keywordState = ref.watch(keywordStateProvider);

    useEffect(() {
      Future(() {
        keywordStateNotifier.onUpdateHistory();
      });
      return null;
    }, []);

    final error = keywordState.appError;
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

    return keywordState.isLoading
        ? const LoadingView()
        : ListView.builder(
            itemCount: keywordState.keywordList?.length ?? 0,
            itemBuilder: (context, index) {
              final keyword = keywordState.keywordList?[index].keyword;

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
