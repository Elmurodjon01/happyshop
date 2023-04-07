

class ItemDetailModel {
  String? imgUrl;
  String? title;
  String? subtitle;
  String? price;
  String? discount;
  bool isFavourite = false;
  ItemDetailModel();
  Map<String, dynamic> toJson() => {
        'imgUrl': imgUrl,
        'title': title,
        'subtitle': subtitle,
        'price': price,
        'discount': discount,
        'isFavourite': isFavourite,
      };

  ItemDetailModel.fromSnapshot(snapshot)
      : imgUrl = snapshot.data()['imgUrl'],
        title = snapshot.data()['title'],
        subtitle = snapshot.data()['subtitle'],
        price = snapshot.data()['price'],
        discount = snapshot.data()['discount'],
        isFavourite = snapshot.data()['isFavourite'].toDate();
}


class BagModel {
  String label;
  String style;
  String size;
  int quantity;
  String price;
  String? discount;
  BagModel({
    required this.label,
    required this.size,
    required this.style,
   required this.quantity,
    required this.price,
    this.discount,

});
}