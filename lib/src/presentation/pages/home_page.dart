import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/custom_app_bar_with_button_widget.dart.dart';
import 'package:marketplace/src/presentation/widgets/news_widget.dart';

class HomePage extends StatelessWidget {
  static const double paddingCustomAppBarTopWidget = 12.0;
  static const double paddingTextFieldLeftRight = 24.0;
  static const double paddingTextFieldTop = 16.0;
  static const double sizedBoxTextFieldHeight = 49.0;
  static const double textFieldDecorationBorderRadiusCircle = 88.0;
  static const double paddingRowAll = 16.0;
  static const double sizedBoxFieldButtomIconAnaliticWidth = 140.0;
  static const double sizedBoxFieldButtomIconWatchLaterWidth = 120.0;
  static const double sizedBoxFieldButtomIconHeight = 48.0;
  static const double floatingActionButtonSizedBoxWidth = 80.0;
  static const double floatingActionButtonSizedBoxHeight = 42.0;
  static const double floatingActionButtonElevation = 0.0;
  static const double radiusRectangle = 88.0;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color colorSurface = colorScheme.surface;
    final Color colorPrimary = colorScheme.primary;
    final Color colorOutline = colorScheme.outline;
    return Scaffold(
      backgroundColor: colorSurface,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: paddingCustomAppBarTopWidget),
            child: CustomAppBarWithButtonWidget(title: 'Dash Inside Market'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: paddingTextFieldLeftRight,
              top: paddingTextFieldTop,
              right: paddingTextFieldLeftRight,
            ),
            child: SizedBox(
              height: sizedBoxTextFieldHeight,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorPrimary,
                    ),
                    borderRadius: BorderRadius.circular(
                        textFieldDecorationBorderRadiusCircle),
                  ),
                  hintText: 'Write something..?',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorPrimary,
                    ),
                    borderRadius: BorderRadius.circular(
                        textFieldDecorationBorderRadiusCircle),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(paddingRowAll),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: sizedBoxFieldButtomIconAnaliticWidth,
                  height: sizedBoxFieldButtomIconHeight,
                  child: FilledButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        colorPrimary,
                      ),
                    ),
                    icon: Icon(Icons.analytics_outlined),
                    onPressed: () {},
                    label: Text('Trending'),
                  ),
                ),
                // SizedBox(
                //   width: 16.0,
                // ),
                SizedBox(
                  width: sizedBoxFieldButtomIconWatchLaterWidth,
                  height: sizedBoxFieldButtomIconHeight,
                  child: FilledButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(colorSurface),
                      side: MaterialStatePropertyAll(
                        BorderSide(
                          color: colorOutline,
                        ),
                      ),
                    ),
                    icon: Icon(
                      Icons.watch_later_outlined,
                      color: colorOutline,
                    ),
                    onPressed: () {},
                    label: Text(
                      'Latest',
                      style: TextStyle(
                        color: colorOutline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(children: [
              NewsWidget(
                  groupText: 'Group',
                  userName: 'Vasya',
                  newsText:
                      'ofdgokdmfokmdokmfodkmfok,dv,okd mfgm,dfvu nvg08uenr 0neri0 e0rj ,i0ejrngi'),
              NewsWidget(
                  groupText: 'Group',
                  userName: 'Vasya',
                  newsText:
                      'ofdgokdmfokmdokmfodkmfok,dv,okd mfgm,dfvu nvg08uenr 0neri0 e0rj ,i0ejrngi'),
              NewsWidget(
                  groupText: 'Group',
                  userName: 'Vasya',
                  newsText:
                      'ofdgokdmfokmdokmfodkmfok,dv,okd mfgm,dfvu nvg08uenr 0neri0 e0rj ,i0ejrngi'),
              NewsWidget(
                  groupText: 'Group',
                  userName: 'Vasya',
                  newsText:
                      'ofdgokdmfokmdokmfodkmfok,dv,okd mfgm,dfvu nvg08uenr 0neri0 e0rj ,i0ejrngi'),
              NewsWidget(
                  groupText: 'Group',
                  userName: 'Vasya',
                  newsText:
                      'ofdgokdmfokmdokmfodkmfok,dv,okd mfgm,dfvu nvg08uenr 0neri0 e0rj ,i0ejrngi'),
            ]),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: floatingActionButtonSizedBoxWidth,
        height: floatingActionButtonSizedBoxHeight,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radiusRectangle),
            ),
          ),
          elevation: floatingActionButtonElevation,
          backgroundColor: colorPrimary,
          onPressed: () {},
          child: Text(
            'Post',
            style: TextStyle(
              color: colorSurface,
            ),
          ),
        ),
      ),
    );
  }
}
