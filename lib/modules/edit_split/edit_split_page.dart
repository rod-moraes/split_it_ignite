import 'package:flutter/material.dart';
import 'package:split_it_ignite/modules/edit_split/widgets/card_item_tile/card_item_tile.dart';
import 'package:split_it_ignite/modules/edit_split/widgets/card_person_pay/card_person_pay.dart';

import '../../core/core.dart';
import '../../domain/event/model/event_model.dart';
import 'widgets/checkbox_pay_tile/checkbox_pay_tile.dart';

class EditSplitPage extends StatelessWidget {
  final EventModel event;
  const EditSplitPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBar(
        leading: BackButton(color: AppTheme.colors.textBold),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever_outlined),
            color: AppTheme.colors.textBold,
          )
        ],
        backgroundColor: AppTheme.colors.background,
        title: Text(event.title, style: AppTheme.textStyles.appBarTitle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Divider(color: AppTheme.colors.dividerBar, height: 8, thickness: 8),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text("INTEGRANTES",
                      style: AppTheme.textStyles.titleGroup),
                ),
                SizedBox(height: 12),
                CardPersonPay(initialValue: true, onTap: (value) {}),
                CardPersonPay(initialValue: true, onTap: (value) {}),
              ],
            ),
          ),
          Divider(color: AppTheme.colors.dividerBar, height: 8, thickness: 8),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                SizedBox(
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text("ÍTENS", style: AppTheme.textStyles.titleGroup),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardItemTileWidget(),
                CardItemTileWidget(),
                CardItemTileWidget(),
                CardItemTileWidget(),
                CardItemTileWidget(),
                CardItemTileWidget(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
