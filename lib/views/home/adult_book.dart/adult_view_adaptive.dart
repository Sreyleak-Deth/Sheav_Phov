import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:seav_phov/providers/theme_provider.dart';
import 'package:seav_phov/views/home/adult_book.dart/adult_view_model.dart';
import 'package:seav_phov/widgets/e_animated_icon.dart';

class AdultViewAdaptive extends StatefulWidget {
  const AdultViewAdaptive({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  final AdultViewModel viewModel;

  @override
  State<AdultViewAdaptive> createState() => AdultViewAdaptiveState();
}

class AdultViewAdaptiveState extends State<AdultViewAdaptive> {
  RadioGroupController myController = RadioGroupController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Do you want to exit?'),
              actions: <Widget>[
                OutlinedButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                ),
                OutlinedButton(
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome back!"),
          actions: [
            buildThemeSwitcherButton(context),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blueGrey),
                   child: InkWell(
                     onTap: () {

                     },
                     child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const <Widget>[
                       Icon(Icons.person, color: Colors.white, size: 24.0,),
                       Text(
                        "Kid",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0
                        ),
                       ),
                     ],
                   ),
                 ),
               ),
                 Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blueGrey),
                   child: InkWell(
                     onTap: () {

                     },
                     child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const <Widget>[
                        Icon(Icons.people, color: Colors.white, size: 24.0,),
                        Text(
                          "Adult",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0
                          ),
                        ),
                     ],
                   ),
                 ),
               ),
                  ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildThemeSwitcherButton(BuildContext context) {
    return Center(
      child: IconButton(
        icon: EAnimatedIcons(
          duration: const Duration(milliseconds: 500),
          showFirst: Theme.of(context).brightness == Brightness.dark,
          firstChild: const Icon(Icons.dark_mode),
          secondChild: const Icon(Icons.light_mode),
        ),
        onPressed: () {
          context.read<ThemeProvider>().toggleThemeMode();
        },
      ),
    );
  }
}
