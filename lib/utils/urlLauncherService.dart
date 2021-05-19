
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerSingleton(LauncherService());
}

class LauncherService{
  void call(String number) => launch("tel:$number");
  void sendSms(String number) => launch("sms:$number");
  void sendEmail(String email) => launch("mailto:$email?subject=You look cool Javier");
}