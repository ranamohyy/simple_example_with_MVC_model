import 'package:flutter/material.dart';
import 'package:mvc_example_project/controller/counter_controller.dart';
import 'package:mvc_example_project/controller/user_controller.dart';
import 'package:mvc_example_project/model/counter_model.dart';
import 'package:mvc_example_project/model/user_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CounterModel model;
  late UserController userController;
  late UserModel user;
  late CounterController controller;
  @override
  void initState() {
    user = UserModel("ahmed", 12, "ahmed@gmail.com");
    userController = UserController(user);
    userController.login("ahmed", "123456");

    model = CounterModel();
    controller = CounterController(model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                user.name,
              ),
              Text(
                user.age.toString(),
              ),
              Text(
                user.email,
              ),
              Text(userController.user.name),
              Text(
                model.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                  onPressed: () {
                    userController.login("ahmed", "123456");
                  },
                  child: Text("login")),
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                    setState(() {});
                  },
                  child: Text("Increment"))
            ],
          ),
        ));
  }
}
