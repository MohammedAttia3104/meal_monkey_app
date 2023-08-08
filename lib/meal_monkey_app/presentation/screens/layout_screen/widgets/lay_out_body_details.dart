import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey_app/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/layout_screen/widgets/fab_details.dart';
import 'bottom_nav_bar_details.dart';

class LayOutBodyDetails extends StatefulWidget {
  const LayOutBodyDetails({super.key});

  @override
  State<LayOutBodyDetails> createState() => _LayOutBodyDetailsState();
}

class _LayOutBodyDetailsState extends State<LayOutBodyDetails> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavBarBloc, BottomNavBarState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final bloc = BottomNavBarBloc.get(context);
        return Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          body: bloc.pages[bloc.currentIndex],
          floatingActionButton: FabDetails(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavBarDetails(),
        );
      },
    );
  }
}
