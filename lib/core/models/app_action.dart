class AppAction {
  AppAction({this.data});

  dynamic data;
}

class ShowSnackBar extends AppAction {
  ShowSnackBar(this.title);

  String title;
}