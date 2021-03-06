import 'package:flutter/material.dart';
import 'package:lsn/base/item/BaseItem.dart';
import 'package:lsn/base/style/BaseStyle.dart';
import 'package:lsn/api/result/Language.dart';

class LanguageItem extends BaseItem {
  final Language item;
  final Function(Language item) callback;

  LanguageItem(this.item, {this.callback});

  @override
  Widget onInitItem(BuildContext context) {
    return InkWell(
        onTap: () {
          callback(item);
        },
        child: Container(
            padding: EdgeInsets.all(padding20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    /// Country name
                    Expanded(child: Text(item.countryName)),

                    /// Flag
                    Container(
                        child: Image.asset(item.flag,
                            height: height20, width: width20)),
                  ],
                ),
              ],
            )));
  }
}
