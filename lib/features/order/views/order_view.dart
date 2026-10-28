import 'package:coffee_shop_app/core/models/products_model.dart';
import 'package:coffee_shop_app/features/order/widgets/order_card.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image_constant.dart';
import '../../../core/shard/custom_app_bar.dart';
import '../../../core/theme/app_theme.dart';
import '../widgets/order.dart';
import '../widgets/order_type_selector.dart';
import '../widgets/payment_summary.dart';

class OrderView extends StatefulWidget {
  final ProductsModel product;

  const OrderView({super.key, required this.product});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App bar
                const CustomAppBar(
                  leadingIcon: AppIcons.arrowLeft,
                  appBarTitle: 'Order',
                ),

                const SizedBox(height: 16),

                // 2 bottoms (Deliver + Pick UUp)
                const Center(child: OrderTypeSelector()),

                const SizedBox(height: 25),

                // address
                Text(
                  "Delivery Address",
                  style: AppTextStyle.titleText(size: 20),
                ),

                const SizedBox(height: 25),

                Text("Jl. Kpg Sutoyo", style: AppTextStyle.normalTitleText()),

                const SizedBox(height: 5),

                Text(
                  "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                  style: AppTextStyle.subTitleText(),
                ),

                const SizedBox(height: 10),

                // Edit Address + Add Note section
                Row(
                  children: [
                    _editInfo(text: 'Edit Address', icon: Icons.edit_note),
                    const SizedBox(width: 10),
                    _editInfo(text: 'Add Note', icon: Icons.notes),
                  ],
                ),

                const SizedBox(height: 15),

                const Divider(),

                const SizedBox(height: 10),

                // product
                OrderItemCard(
                  product: widget.product,
                  onQuantityChanged: (int newQuantity) {
                    setState(() {
                      _quantity = newQuantity;
                    });
                  },
                ),

                const SizedBox(height: 10),

                const Divider(color: Color(0xffF9F2ED)),

                const SizedBox(height: 10),

                // discount section
                Card(
                  elevation: 0,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: AppColor.cloud),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.percent,
                      color: AppColor.primaryColor,
                    ),
                    title: const Text("1 Discount is Applies"),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios, size: 18),
                      onPressed: () {},
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // payment summary
                Text("Payment Summary", style: AppTextStyle.normalTitleText()),

                const SizedBox(height: 15),

                PaymentSummary(product: widget.product,),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),

        bottomNavigationBar: SafeArea(
          child: Container(
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            color: Colors.white,
            child: Order(product: widget.product, quantity: _quantity,),
          ),
        ),
    );
  }

  Widget _editInfo({required String text, required IconData icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(icon), const SizedBox(width: 5), Text(text)],
      ),
    );
  }
}
