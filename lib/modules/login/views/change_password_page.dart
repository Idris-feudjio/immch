import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich/modules/login/ui/change_password_form.dart';

class ChangePasswordPage extends HookConsumerWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: ChangePasswordForm(),
    );
  }
}
