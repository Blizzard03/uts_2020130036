import 'package:uts_2020130036/repositories/product_repository.dart';

class FakeProductServer implements ProductRepository {
  @override
  Map<String, Object> getProducts(String categoryId,
      {int page = 0, int limit = 20}) {
    throw Exception();
  }
}
