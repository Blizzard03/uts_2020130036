import 'package:uts_2020130036/controllers/base_controller.dart';
import 'package:uts_2020130036/controllers/data_controller/cart_manager.dart';
import 'package:uts_2020130036/models/category_model.dart';
import 'package:uts_2020130036/models/product_model.dart';
import 'package:uts_2020130036/services/data/database/categories.dart';
import 'package:uts_2020130036/services/data/database/products.dart';

class HomeController extends BaseController {
  int initialCategoryPage = 0;
  List<Category> categoryList = [];
  List<Product> productList = [];
  void Function(void Function())? updater;
  bool isLoading = false;

  HomeController({this.updater});

  @override
  void initial() {
    super.initial();
    getAllCategory();
  }

  void buttonTabBar(int index) {
    initialCategoryPage = index;
    getProduct(index);
    updater!(() {});
  }

  void getAllCategory() {
    /// TODO: get categories from network
    categoryList = categories;

    /// TODO: get categories from network
    getProduct();
    updater!(() {});
  }

  void getProduct([int index = 0]) {
    /// TODO: get product from network
    productList = products
        .where((element) => element.category.id == categoryList[index].id)
        .toList();

    /// TODO: get product from network
  }

  void pressToCard(Product product) {
    cartManager.addToCartHome(product);
    updater!(() {});
  }
}
