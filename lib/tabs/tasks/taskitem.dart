import 'package:flutter/material.dart';
import 'package:todo/Theme.dart';

class taskitem extends StatelessWidget {
  const taskitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 23),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            color: yusuf.primarycolor,
            width: 4,
            height: 62,
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            children: [
              Text(
                "data",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "data",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                color: yusuf.primarycolor,
                borderRadius: BorderRadius.circular(12)),
            child: Image.asset(
              "assets/images/icon_check.png",
              width: 75,
              height: 35,
            ),
          )
        ],
      ),
    );
  }
}
