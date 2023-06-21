import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:ffi';
import 'package:flutter/material.dart';

void main() {
  runApp(const PuzzlePage());
}

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({Key? key});

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  final List<String> _items =
      List.generate(16, (index) => index == 0 ? '' : index.toString());
  _changeindex(int i) {
    int _emptyIndex = _items.lastIndexOf('');
    int _previousItem = i - 1;
    int _nextItem = i + 1;
    int _previousRow = i - 4;
    int _nextRow = i + 4;
    if (_emptyIndex == _previousItem) {
      _items[_previousItem] = _items[i];
      _items[i] = '';
    } else if (_emptyIndex == _nextItem) {
      _items[_nextItem] = _items[i];
      _items[i] = '';
    } else if (_emptyIndex == _previousRow) {
      _items[_previousRow] = _items[i];
      _items[i] = '';
    } else if (_emptyIndex == _nextRow) {
      _items[_nextRow] = _items[i];
      _items[i] = '';
    }
    setState(() {});
  }

  @override
  void initState() {
    _items.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Puzzle Theraphy',
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
          ),
          body: Center(
            child: AspectRatio(
              aspectRatio: 1,
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 1,
                children: [
                  for (int i = 0; i < 16; i++)
                    InkWell(
                      onTap: () {
                        _changeindex(i);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: _items[i].isEmpty ? Colors.white : Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${_items[i]}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
