import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_exension.dart';
import '../../core/app_route.dart';
import '../shared/custom_text_form_field.dart';
import '../shared/logo.dart';
import 'custom_card.dart';

class SellerScreen extends HookConsumerWidget {
  const SellerScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Logo(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextFormField(
            icon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.filter_alt),
              onPressed: () {
                context.push(AppRoute.filter);
              },
            ),
            controller: controller,
            hint: 'Search',
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const CustomCard(
                title: ' admin gudang',
                location: 'jakarta',
                subtitle: 'PT. Goebok',
                imageUrl: 'https://picsum.photos/200/300',
              );
            },
          ),
        ),
      ],
    );
  }
}
