import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Features',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: 'Raleway',
          ),
        ),
        SizedBox(height: 10),
        Column(
          children: List.generate(
            listItem.length,
            (idx) => Container(
              margin: EdgeInsets.only(bottom: 15),
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: ListTile(        
                leading: Container(                  
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFF26F93),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    (idx + 1).toString(),
                    style: TextStyle(color: Color(0xFFF26F93), fontSize: 12),
                  ),
                ),
                title: Text(
                  listItem[idx].title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  listItem[idx].subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF858585),
                  ),
                ),
                trailing: Icon(listItem[idx].icon),
                dense: true,
              ),              
            ),
          ),
        ),        
      ],
    );
  }

  List<Feature> get listItem => [    
        Feature('Mixing',
            subtitle: 'Custom Pick Your Product to Purchased',
            icon: FlutterIcons.mixed_reality_mco),
        Feature('Nature',
            subtitle: 'Ingredient Made in Plant , Fruit, Flower or Mineral',
            icon: Icons.nature),
        Feature('Variant',
            subtitle: 'Many Variant Categories, Model and Merc Product',
            icon: FlutterIcons.chart_line_variant_mco),
        Feature('Affordable Prices',
            subtitle:
                'Have Much Discount and Event Promo on Every Single Product',
            icon: Entypo.price_tag),
        Feature('Best Company',
            subtitle: 'Build own Shop and Covering Big Company In The World',
            icon: FontAwesome.industry),
        Feature('Good Service',
            subtitle:
                'Chat box, e-pay, Filter Product, Store Analytic, Handle Product, and Blog',
            icon: Icons.build)
      ];
}

class Feature {
  Feature(this.title, {this.subtitle, this.icon});

  final String title;
  final String subtitle;
  final IconData icon;
}
