import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/app_router.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  String _keyword = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(hintText: "keyword"),
            onChanged: (text) {
              _keyword = text;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ElevatedButton(
              child: const Text("Search"),
              onPressed: () => {
                if (_keyword.isNotEmpty)
                  {
                    AutoRouter.of(context).push(
                      EventListRoute(keyword: _keyword),
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
