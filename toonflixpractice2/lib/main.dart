import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void onClicked() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyLargeTitle(),
              Transform.rotate(
                angle: 150,
                child: IconButton(
                    iconSize: 40,
                    onPressed: onClicked,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    //initState는 항상 build 보다 먼저 호출 되어야 한다.
    // 여기서 초기화를 시켜준다.
    super.initState();
  }

  @override
  void dispose() {
    // widget이 사라질때 동작한다.
    super.dispose();
  }

  //initState -> build -> dispose 순으로 동작. dispose는 widget이 사라질때 동작. react의 useEffect와 비슷 한거 같다.
  //StatefulWidget의 lifeCycle이다.

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context)
            .textTheme
            .titleLarge
            ?.color, // context를 이용해 부모요소에 접근 가능
      ),
    );
  }
}
