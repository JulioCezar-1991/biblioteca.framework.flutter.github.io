import 'package:biblioteca_framework_flutter_github_io/app/modules/audioplay/audioplay_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/audioplay/audioplay_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AudioPlayModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AudioPlayController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AudioPlayPage()),
      ];

  static Inject get to => Inject<AudioPlayModule>.of();
}
