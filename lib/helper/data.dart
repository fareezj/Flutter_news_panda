
import 'package:newspanda/models/category_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = new List<CategoryModel>();

  CategoryModel categoryModel = new CategoryModel();


  // 1 Category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80';
  category.add(categoryModel);

  // 1 Category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Entertainment';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1559402900-f5e7feea8679?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  // 1 Category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'General';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80';
  category.add(categoryModel);

  // 1 Category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1494597564530-871f2b93ac55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  // 1 Category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Science';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1518152006812-edab29b069ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  // 1 Category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Sports';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1516820612845-a13894592046?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  // 1 Category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Technology';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  return category;

}