import 'package:bloc_project/bloc/simpleinterest_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestBlocView extends StatelessWidget {
  SimpleInterestBlocView({super.key});

  final _principalController = TextEditingController();
  final _timeController = TextEditingController();
  final _rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest BLoC"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _principalController,
                decoration: InputDecoration(
                  hintText: ("Enter Prinicpal"),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _rateController,
                decoration: InputDecoration(
                  hintText: ("Enter Rate"),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _timeController,
                decoration: InputDecoration(
                  hintText: ("Enter Time"),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<SimpleinterestBloc, double>(
                builder: (context, state) {
                  return Text(
                    "Interest: $state",
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
                        final p =
                            double.tryParse(_principalController.text) ?? 0;
                        final r = double.tryParse(_rateController.text) ?? 0;
                        final t = double.tryParse(_timeController.text) ?? 0;
                        context
                            .read<SimpleinterestBloc>()
                            .add(CalculateInterestEvent(p, r, t));
                      },
                      child: Text("Calculate"))),
            ],
          ),
        ),
      ),
    );
  }
}
