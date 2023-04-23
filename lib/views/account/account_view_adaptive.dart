import 'package:flutter/material.dart';
import 'package:seav_phov/core/constants/config_constant.dart';
import 'package:seav_phov/core/theme/m3/m3_color.dart';
import 'package:seav_phov/views/account/account_view_model.dart';
import 'package:seav_phov/views/account/local_widget/account_tile.dart';
import 'package:seav_phov/views/login/login_view.dart';


class AccountViewAdaptive extends StatelessWidget {
  final AccountViewModel viewModel;
  const AccountViewAdaptive({required this.viewModel,  Key? key}) :super(key: key);
  final bool isSignIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        child: CustomScrollView(
          slivers: [
            buildAppBar(context),
            buildBody(context),
          ],
        ),
      ),
    );
  }

  SliverList buildBody(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          if (isSignIn)
            AccountTile(
              title: 'Change Password',
              leadingIconData: Icons.lock,
              onTap: () {
              },
            ),
          AccountTile(
            title: 'Customer Support',
            leadingIconData: Icons.contact_support,
            onTap: () {
            },
          ),
          AccountTile(
            title: 'Term and Condition',
            leadingIconData: Icons.note,
            onTap: () {
            },
          ),
          AccountTile(
            title: 'Change Language',
            leadingIconData: Icons.language,
            navigateAction: false,
            onTap: () {
            },
          ),
          if (isSignIn)
            AccountTile(
              title: 'Log Out',
              leadingIconData: Icons.subdirectory_arrow_left,
              danger: true,
              navigateAction: false,
              onTap: () async {
                              },
            ),
        ],
      ),
    );
  }

 Widget buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150,
      toolbarHeight: kToolbarHeight,
      forceElevated: true,
      title: const SizedBox.shrink(),
      automaticallyImplyLeading: false,
      elevation: Theme.of(context).appBarTheme.elevation,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        centerTitle: false,
        titlePadding: EdgeInsets.zero,
        expandedTitleScale: 1.0,
        title: Wrap(
          children: [
            buildProfile(context),
          ],
        ),
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ConfigConstant.sizedBoxW2,
                CircleAvatar(
                  backgroundColor: M3Color.of(context).primary,
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: M3Color.of(context).onPrimary,
                  ),
                ),
                ConfigConstant.sizedBoxW2,
                Padding(
                  padding: const EdgeInsets.only(top: ConfigConstant.objectHeight1),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Dara Vathana',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    ConfigConstant.sizedBoxH1,
                    GestureDetector(
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.blue),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginView()));
                      }
                    ),
                  ],
                ),
                ),
              ],
            ),
          ),
        );
  }
}
