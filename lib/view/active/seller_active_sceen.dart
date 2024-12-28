import 'package:flutter/material.dart';

import '../shared/custom_button.dart';
class SellerActiveService extends StatelessWidget {
  const SellerActiveService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menebang beberpa pohon berbahay dari jakarta dan membersihkannya',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text('For:'),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.red,
              ),
              SizedBox(
                width: 20,
              ),
              Text('Basuki')
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('since'),
              SizedBox(
                width: 30,
              ),
              Text('31-02-2024'),
              SizedBox(
                width: 20,
              ),
              Text(
                'Rp. 5.000.000',
                style: TextStyle(color: Color(0xff1B5BFF)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {},
            text: 'akhiri layanan',
            color: Color(0xff1B5BFF),
            isFullWidth: true,
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {},
            text: 'Buang layanan',
            isFullWidth: true,
            color: Color(0xffF2F5F6),
            textColor: Color(0xff495057),
          )
        ],
      ),
    );
  }
}