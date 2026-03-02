import '../../../model/settings/app_settings.dart';
import 'app_settings_repository.dart';

class AppSettingsRepositoryMock implements AppSettingsRepository {
  AppSettings _settings = AppSettings.defaultSettings();

  @override
  Future<AppSettings> load() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _settings;
  }


  @override
  Future<void> save(AppSettings settings) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _settings = settings;
  }
}