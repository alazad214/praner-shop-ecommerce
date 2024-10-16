import 'package:flutter/material.dart';

import '../../../../../core/enums/dummy_order_status.dart';
import 'order_status_row.dart';

class OrderStatusColumn extends StatelessWidget {
  const OrderStatusColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderStatusRow(
          status: OrderStatus.confirmed,
          date: '12.12.2022',
          time: '01.00 PM',
          isStart: true,
          isActive: true,
        ),
        const OrderStatusRow(
          status: OrderStatus.processing,
          date: '12.12.2022',
          time: '03.00 PM',
          isActive: true,
        ),
        const OrderStatusRow(
          status: OrderStatus.shipped,
          date: '12.12.2022',
          time: '05.00 PM',
          isActive: true,
        ),
        const OrderStatusRow(
          status: OrderStatus.delivery,
          date: '12.12.2022',
          time: '07.00 PM',
          isEnd: true,
        ),
      ],
    );
  }
}
