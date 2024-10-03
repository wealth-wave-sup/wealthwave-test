import 'package:flutter/material.dart';
import 'package:wealthwave/component/text_field_widget.dart';
import 'package:wealthwave/responsive_builder.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  final TextEditingController paymentTypeController = TextEditingController();
  final TextEditingController amountSpentController = TextEditingController();
  @override
  void dispose() {
    paymentTypeController.dispose();
    amountSpentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (ResponsiveBuilder.isWeb(context))
            const Expanded(child: SizedBox()),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Add Your Daily Expenses',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextFieldWidget(
                      title: 'Type', controller: paymentTypeController),

                  TextFieldWidget(
                      title: 'Amount Spent', controller: amountSpentController),
                  // const Text(""),
                  // TextFieldWidget(title: '', controller: amountSpentController),
                  // const Text(""),
                  // TextFieldWidget(title: '', controller: amountSpentController),

                  TextButton(onPressed: () {}, child: const Text('Submit')),
                ],
              ),
            ),
          ),
          if (ResponsiveBuilder.isWeb(context))
            const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
