import '../config/Assets.dart';
import 'package:url_launcher/url_launcher.dart';

//To open default email client
void launchEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: Assets.email,
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  }
}

// To launch default caller app
launchCaller() async {
  const url = "tel:${Assets.email}";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
