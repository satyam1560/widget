import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String pictureUrl;
  final String name;
  final String age;
  final String country;
  final String job;
  const Person(
      {Key? key,
      required this.pictureUrl,
      required this.age,
      required this.country,
      required this.job,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.tealAccent),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(pictureUrl),
                  )),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white54),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  _createPersonInfoRow(
                      key: 'Age', value: age, context: context),
                  _createPersonInfoRow(
                      key: 'Job', value: job, context: context),
                  _createPersonInfoRow(
                      key: 'Country', value: country, context: context),
                ],
              ),
            ),
          ],
        ));
  }

  Row _createPersonInfoRow(
      {required String key,
      required String value,
      required BuildContext context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$key :',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(),
        Text(
          value,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
