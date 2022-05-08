import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/app_router.dart';
import 'package:flutter_example/ui/keyword/keyword_state_notifier.dart';
import 'package:flutter_example/ui/page/component/loading_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends HookConsumerWidget {
  SearchPage({Key? key}) : super(key: key);

  // 入力状態はKeywordStateで保持しても良いかもだがViewのただの状態として一旦
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordStateNotifier = ref.read(keywordStateProvider.notifier);
    final keywordState = ref.watch(keywordStateProvider);

    return keywordState.isLoading
        ? const LoadingView()
        : Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(hintText: "keyword"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    child: const Text("Search"),
                    onPressed: () => {
                      FocusScope.of(context).unfocus(),
                      if (controller.text.isNotEmpty)
                        {
                          AutoRouter.of(context).push(
                            EventListRoute(keyword: controller.text),
                          ),
                          keywordStateNotifier
                              .saveKeyword(controller.text),
                        },
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
