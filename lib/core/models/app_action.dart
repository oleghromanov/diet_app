class AppAction {
  AppAction({this.data});

  dynamic data;
}

class ShowSnackBar extends AppAction {
  ShowSnackBar(this.title);

  String title;
}

class NavigationAction<T> extends AppAction {
  NavigationAction({this.routeName, this.isPop = false, T? super.data});

  final String? routeName;
  final bool isPop;
}