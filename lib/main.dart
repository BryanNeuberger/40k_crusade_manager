import 'package:async_redux/async_redux.dart';
import 'package:business/business.dart';
import 'package:flutter/material.dart';

Store<AppState> store;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  store = Store<AppState>(initialState: AppState.initialState());
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: store.state.stateString,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: Colors.white,
        ),
        home: Container(
          color: Colors.blue,
          child: Center(child: Text(store.state.stateString)),
        ),
      ),
    );
  }
}
