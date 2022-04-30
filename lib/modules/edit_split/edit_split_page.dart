import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:split_it_ignite/modules/edit_split/widgets/card_item_tile/card_item_tile.dart';
import 'package:split_it_ignite/modules/edit_split/widgets/card_person_pay/card_person_pay.dart';

import '../../core/core.dart';
import '../../domain/event/model/event_model.dart';

class EditSplitPage extends StatelessWidget {
  final EventModel event;
  const EditSplitPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppThemeController().setThemeMode(ThemeMode.system);
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBar(
        leading: BackButton(color: AppTheme.colors.textBold),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.trashCan),
            color: AppTheme.colors.textBold,
            splashRadius: 24,
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
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text("INTEGRANTES",
                      style: AppTheme.textStyles.titleGroup),
                ),
                const SizedBox(height: 12),
                CardPersonPay(
                    initialValue: true,
                    onTap: (value) {},
                    name: 'Você',
                    value: 126),
                CardPersonPay(
                  initialValue: true,
                  onTap: (value) {},
                  name: 'Maria Antônia',
                  value: -126,
                ),
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
          const Divider(color: Color(0x33434343), thickness: 1, height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardItemTileWidget(title: 'Picanha', value: 122),
                CardItemTileWidget(title: 'Linguicinha', value: 17),
                CardItemTileWidget(title: 'Carvão', value: 19),
                CardItemTileWidget(title: 'Cerveja', value: 68),
                CardItemTileWidget(title: 'Refrigerante', value: 12),
                CardItemTileWidget(
                    title: 'Pão de alho', value: 15, divider: false),
              ],
            ),
          ),
          Container(
            color: Color(0x14434343),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
              child: CardItemTileWidget(
                  title: 'Total', value: 252, divider: false),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text.rich(TextSpan(
                text: "Faltam R\$ ",
                children: [
                  TextSpan(
                    text: "126,00",
                    style: AppTheme.textStyles.payableTextBold,
                  )
                ],
                style: AppTheme.textStyles.payableText,
              )),
            ),
          ),
        ],
      )),
    );
  }
}
