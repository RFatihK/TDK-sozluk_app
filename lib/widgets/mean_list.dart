import 'package:flutter/material.dart';
import 'package:sozlukapp/viewmodels/meaning_view_model.dart';
import 'package:sozlukapp/widgets/sign_language.dart';

class MeanList extends StatelessWidget {
  const MeanList(
      {Key? key, required this.meaningViewModel, required this.signLanguage})
      : super(key: key);

  final MeaningViewModel meaningViewModel;
  final SignLanguage signLanguage;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(meaningViewModel.word,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      ListView.builder(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: meaningViewModel.meanings.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 50,
                    child: Text(
                        '${index + 1}. ${meaningViewModel.meanings[index]}',
                        style: const TextStyle(fontSize: 20))));
          }),
      signLanguage
    ]);
  }
}
