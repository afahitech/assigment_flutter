import 'package:flutter/material.dart';
import 'holiday.dart';


class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.deepPurple,
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.blue.shade50,

          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              )
          ),

          inputDecorationTheme: InputDecorationTheme(

            hintStyle: TextStyle(
                fontSize: 18
            ),
            labelStyle: TextStyle(
                fontSize: 18
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            ),
          ),

          appBarTheme: AppBarTheme(
              backgroundColor: Colors.redAccent,
              centerTitle: true
          ),
          textTheme: TextTheme(
              bodySmall: TextStyle(fontSize: 18)
          )

      ),

      home: Holiday_in(),
    );
  }
}