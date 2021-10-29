import 'package:flutter/material.dart';

class UserActionModel {
  final String message;
  final Function action;

  UserActionModel(this.message, this.action);
}

class UserActions extends StatelessWidget {
  const UserActions({Key? key, required this.actions}) : super(key: key);

  final List<UserActionModel> actions;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: actions.map((actionModel) {
            return actionBtn(actionModel);
          }).toList(),
        ),
      ),
    );
  }

  Widget actionBtn(UserActionModel actionModel) => OutlinedButton(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
      side: MaterialStateBorderSide.resolveWith((Set<MaterialState> states) {
        return const BorderSide(width: 1, color: Colors.white);
      }),
    ),
      child: Text(actionModel.message, style: const TextStyle(color: Colors.white)),
      onPressed: () { actionModel.action(); }
  );
}
