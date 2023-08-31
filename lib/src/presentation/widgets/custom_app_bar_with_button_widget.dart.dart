import 'package:flutter/material.dart';
import 'package:marketplace/src/presentation/widgets/custom_app_bar_widget.dart';
import 'package:marketplace/src/presentation/widgets/filled_button_widget.dart';

class CustomAppBarWithButtonWidget extends StatelessWidget {
  final String title;

  const CustomAppBarWithButtonWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 40.0,
        ),
        Center(
          child: Text(
            title,
            style: TextStyle(
              height: 2.3,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width / 32,
          child: SizedBox(
            height: 40.0,
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Color.fromRGBO(36, 180, 126, 1),
              child: IconButton(
                iconSize: 19,
                icon: Icon(Icons.photo_camera),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 16,
                        child: Container(
                          margin: EdgeInsets.all(16.0),
                          height: 524.0,
                          width: 366.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: CustomAppBarWidget(title: 'Username'),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Group',
                                  suffixIconColor:
                                      Color.fromRGBO(110, 110, 110, 1),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Icon(Icons.edit_outlined),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Description',
                                  suffixIconColor:
                                      Color.fromRGBO(110, 110, 110, 1),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Icon(Icons.edit_outlined),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                              Spacer(),
                              FilledButtonWidget(
                                  hintText: 'Save',
                                  color: Color.fromRGBO(36, 180, 126, 1)),
                              SizedBox(
                                height: 8.0,
                              ),
                              FilledButtonWidget(
                                  hintText: 'Delete Account',
                                  color: Color.fromRGBO(255, 51, 51, 1)),
                              SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
