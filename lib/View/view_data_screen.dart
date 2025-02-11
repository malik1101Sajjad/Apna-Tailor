import 'package:apna_tailor/Controller/Export/export_file.dart';

class ViewDataScreen extends StatelessWidget {
  const ViewDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: CustomColor.white,
        body: Column(
          children: [
            Expanded(flex: 2, child: CustomScreenTitle(title: 'Saved Measure')),
            TabBar(
                labelColor: CustomColor.white,
                unselectedLabelColor: CustomColor.grey,
                indicatorWeight: 5,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 0,
                indicator: BoxDecoration(
                    gradient: CustomColor.gradient,
                    borderRadius: SizeConstants.tableBorderRadius),
                padding: SizeConstants.tabBarPadding,
                tabs: [
                  Tab(
                    child: AutoSizeText(
                      'Male',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: AutoSizeText(
                      'Female',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
            Expanded(
              flex: 8,
              child: TabBarView(
                children: [
                  MaleDataScreen(),
                  FemaleDataScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
