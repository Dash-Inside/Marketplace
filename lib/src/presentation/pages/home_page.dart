import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/custom_app_bar.dart';
import 'package:marketplace/src/presentation/widgets/news_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomAppBarWidget(title: 'Dash Inside Market'),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 49.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write something..?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(88.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 48.0,
                          child: FilledButton.icon(
                            icon: Icon(Icons.analytics_outlined),
                            onPressed: () {},
                            label: Text('Trending'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 48.0,
                          child: FilledButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
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
                      ),
                    ],
                  ),
                ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
