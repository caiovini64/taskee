import 'package:new_taskee/main/factories/presentation/cubit_home_presenter_factory.dart';
import 'package:new_taskee/ui/pages/home/home_page.dart';

HomePage makeHomePage() => HomePage(presenter: makeCubitHomePresenter());
