import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich/modules/settings/services/app_settings.service.dart';

final appSettingsServiceProvider = Provider((ref) => AppSettingsService());
