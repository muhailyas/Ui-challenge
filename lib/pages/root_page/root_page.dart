import 'package:day1/pages/root_page/bloc/root_bloc.dart';
import 'package:day1/pages/root_page/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenRoot extends StatelessWidget {
  const ScreenRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RootBloc>(context);
    return Scaffold(
      body: BlocBuilder<RootBloc, RootState>(
        builder: (context, state) {
          return bloc.screens[state.index];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
