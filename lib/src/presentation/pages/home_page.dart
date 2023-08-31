import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/custom_app_bar_with_button_widget.dart.dart';
import 'package:marketplace/src/presentation/widgets/news_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: CustomAppBarWithButtonWidget(title: 'Dash Inside Market'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              top: 16.0,
              right: 24.0,
            ),
            child: SizedBox(
              height: 49.0,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(36, 180, 126, 1),
                    ),
                    borderRadius: BorderRadius.circular(88.0),
                  ),
                  hintText: 'Write something..?',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(36, 180, 126, 1),
                    ),
                    borderRadius: BorderRadius.circular(88.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 140.0,
                  height: 48.0,
                  child: FilledButton.icon(
                    icon: Icon(Icons.analytics_outlined),
                    onPressed: () {},
                    label: Text('Trending'),
                  ),
                ),
                // SizedBox(
                //   width: 16.0,
                // ),
                SizedBox(
                  width: 120.0,
                  height: 48.0,
                  child: FilledButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      side: MaterialStatePropertyAll(
                        BorderSide(
                          color: Color.fromRGBO(152, 152, 152, 1),
                        ),
                      ),
                    ),
                    icon: Icon(
                      Icons.watch_later_outlined,
                      color: Color.fromRGBO(152, 152, 152, 1),
                    ),
                    onPressed: () {},
                    label: Text(
                      'Latest',
                      style: TextStyle(
                        color: Color.fromRGBO(152, 152, 152, 1),
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
    );
  }
}
