import 'package:flutter/material.dart';
import 'package:whether_app/Widgets/countries_themes.dart';
import 'package:whether_app/models/whether_model.dart';
import 'package:whether_app/services/new_servies.dart';

class WhetherStatusUi extends StatefulWidget {
  final String countryName;
  final WhetherManger whetherManger;
  WhetherStatusUi({
    super.key,
    required this.whetherManger,
    required this.countryName,
  });

  @override
  State<WhetherStatusUi> createState() => _WhetherStatusUiState();
}

class _WhetherStatusUiState extends State<WhetherStatusUi> {
  late Future<WhetherModel> future;
  @override
  void initState() {
    super.initState();
    future = getWhetherData();
  }

  Future<WhetherModel> getWhetherData() async =>
      await WhetherService().getWhetherMaxtTemp(widget.countryName);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: CountryTheme.getGradient(widget.countryName),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent, // خلي الخلفية شفافة

          appBar: AppBar(
            elevation: 3,
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: CountryTheme.getGradient(widget.countryName)[0],
            title: Row(
              children: [
                Text(
                  'Whether App',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.search, color: Colors.white),
              ],
            ),
          ),
          body: FutureBuilder<WhetherModel>(
            future: future,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                final weather = snapshot.data!;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.countryName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text('Weather Today'),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network("https:${weather.icon}"),
                          Text(
                            ' ${weather.avgTemp} ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Column(
                            children: [
                              Text(
                                'Max Temp: ${weather.maxTemp}',
                              ),
                              Text('Min Temp: ${weather.minTemp}'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        weather.wheherStatus,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
