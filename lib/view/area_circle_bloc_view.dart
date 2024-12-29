import 'package:bloc_project/bloc/areaofcircle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCircleBlocView extends StatelessWidget {
  AreaCircleBlocView({super.key});

  final _radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle BLoC'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _radiusController,
                decoration: InputDecoration(
                  hintText: ("Enter Radius"),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<AreaofcircleBloc, double>(
                builder: (context, state) {
                  return Text(
                    "Area of circle: $state",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        final radius =
                            double.parse(_radiusController.text) ?? 0;
                        context
                            .read<AreaofcircleBloc>()
                            .add(CalculateAreaEvent(radius));
                      },
                      child: Text("Calculate"))),
            ],
          ),
        ),
      ),
    );
  }
}
