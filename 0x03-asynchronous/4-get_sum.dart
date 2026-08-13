import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);
    String id = user['id'];

    String ordersData = await fetchUserOrders(id);
    List<dynamic> orders = jsonDecode(ordersData);

    double total = 0;
    for (var product in orders) {
      String priceData = await fetchProductPrice(product);
      num price = jsonDecode(priceData);
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}
