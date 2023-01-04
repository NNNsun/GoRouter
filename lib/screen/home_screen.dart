import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:router_study/layout/default_layout.dart';
import 'package:router_study/provider/auth_provider.dart';
import 'package:router_study/screen/3_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () {
                context.go('/one');
              },
              child: Text('Screen One (Go)')),
          ElevatedButton(
              onPressed: () {
                context.goNamed(ThreeScreen.routeName);
              },
              child: Text('Screen Three (Go)')),
          ElevatedButton(
              onPressed: () {
                context.go('/error');
              },
              child: Text('Error Screen (Go)')),
          ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              child: Text('Login Screen (Go)')),
          ElevatedButton(
              onPressed: () {
                ref.read(userProvider.notifier).logout();
              },
              child: Text('LogOut Screen (Go)')),
        ],
      ),
    );
  }
}
