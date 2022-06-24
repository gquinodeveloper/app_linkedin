import 'package:app_linkedin/ui/theme/app_colors.dart';
import 'package:app_linkedin/ui/views/profile/widgets/tab_profile.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              TabBar(
                onTap: (index) {
                  print(index);
                },
                //isScrollable: true,
                labelColor: AppColors.kPrimary,
                unselectedLabelColor: AppColors.kLetter,
                indicatorColor: AppColors.kPrimary,
                indicatorWeight: 3.0,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                tabs: const [
                  Tab(
                    text: 'Perfil',
                  ),
                  Tab(
                    text: 'Actividad',
                  ),
                  Tab(
                    text: 'Experiencia',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const Expanded(
                      child: SingleChildScrollView(
                        child: TabProfile(),
                      ),
                    ),
                    Container(
                      height: 100.0,
                      child: const Text("Actividad"),
                    ),
                    Container(
                      height: 100.0,
                      child: const Text("Experiencia"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
