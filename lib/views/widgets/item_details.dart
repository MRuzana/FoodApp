import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/items_grid.dart';
import 'package:food_app/views/widgets/veg_nonveg_toggle.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VegNonVegToggle(),
        ItemsGrid()
      ],
    );
  }
}


















