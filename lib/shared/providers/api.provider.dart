import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich/shared/services/api.service.dart';

final apiServiceProvider = Provider((ref) => ApiService());
