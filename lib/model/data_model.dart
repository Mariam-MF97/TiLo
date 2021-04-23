// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.results,
    this.pagination,
    this.facets,
    this.freeTextSearch,
    this.baseUrl,
  });

  List<Result> results;
  Pagination pagination;
  List<Facet> facets;
  String freeTextSearch;
  String baseUrl;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    pagination: Pagination.fromJson(json["pagination"]),
    facets: List<Facet>.from(json["facets"].map((x) => Facet.fromJson(x))),
    freeTextSearch: json["freeTextSearch"],
    baseUrl: json["baseUrl"],
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "pagination": pagination.toJson(),
    "facets": List<dynamic>.from(facets.map((x) => x.toJson())),
    "freeTextSearch": freeTextSearch,
    "baseUrl": baseUrl,
  };
}

class Facet {
  Facet({
    this.code,
    this.priority,
    this.category,
    this.multiSelect,
    this.visible,
    this.values,
  });

  String code;
  int priority;
  bool category;
  bool multiSelect;
  bool visible;
  List<Value> values;

  factory Facet.fromJson(Map<String, dynamic> json) => Facet(
    code: json["code"],
    priority: json["priority"],
    category: json["category"],
    multiSelect: json["multiSelect"],
    visible: json["visible"],
    values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "priority": priority,
    "category": category,
    "multiSelect": multiSelect,
    "visible": visible,
    "values": List<dynamic>.from(values.map((x) => x.toJson())),
  };
}

class Value {
  Value({
    this.code,
    this.count,
    this.selected,
  });

  String code;
  int count;
  bool selected;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    code: json["code"],
    count: json["count"],
    selected: json["selected"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "count": count,
    "selected": selected,
  };
}

class Pagination {
  Pagination({
    this.pageSize,
    this.currentPage,
    this.sort,
    this.numberOfPages,
    this.totalNumberOfResults,
    this.totalNumberOfResultsUnfiltered,
  });

  int pageSize;
  int currentPage;
  String sort;
  int numberOfPages;
  int totalNumberOfResults;
  int totalNumberOfResultsUnfiltered;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    pageSize: json["pageSize"],
    currentPage: json["currentPage"],
    sort: json["sort"],
    numberOfPages: json["numberOfPages"],
    totalNumberOfResults: json["totalNumberOfResults"],
    totalNumberOfResultsUnfiltered: json["totalNumberOfResultsUnfiltered"],
  );

  Map<String, dynamic> toJson() => {
    "pageSize": pageSize,
    "currentPage": currentPage,
    "sort": sort,
    "numberOfPages": numberOfPages,
    "totalNumberOfResults": totalNumberOfResults,
    "totalNumberOfResultsUnfiltered": totalNumberOfResultsUnfiltered,
  };
}

class Result {
  Result({
    this.code,
    this.name,
    this.stock,
    this.price,
    this.images,
    this.categories,
    this.pk,
    this.whitePrice,
    this.articles,
    this.markers,
    this.visible,
    this.numbersOfPieces,
    this.defaultArticle,
    this.sale,
    this.variantSizes,
    this.swatches,
    this.articleCodes,
    this.ticket,
    this.searchEngineProductId,
    this.dummy,
    this.linkPdp,
    this.categoryName,
    this.rgbColors,
    this.articleColorNames,
    this.ecoTaxValue,
    this.swatchesTotal,
    this.showPriceMarker,
    this.redirectToPdp,
    this.mainCategoryCode,
    this.comingSoon,
    this.sellingAttributes,
    this.concept,
    this.environments,
    this.qualities,
  });

  String code;
  String name;
  Stock stock;
  Price price;
  List<Imagee> images;
  List<dynamic> categories;
  String pk;
  Price whitePrice;
  List<Article> articles;
  List<Marker> markers;
  bool visible;
  int numbersOfPieces;
  Article defaultArticle;
  bool sale;
  List<VariantSize> variantSizes;
  List<String> swatches;
  List<String> articleCodes;
  String ticket;
  String searchEngineProductId;
  bool dummy;
  String linkPdp;
  CategoryName categoryName;
  List<String> rgbColors;
  List<String> articleColorNames;
  int ecoTaxValue;
  int swatchesTotal;
  bool showPriceMarker;
  bool redirectToPdp;
  String mainCategoryCode;
  bool comingSoon;
  List<SellingAttribute> sellingAttributes;
  List<String> concept;
  List<Environment> environments;
  List<String> qualities;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    code: json["code"],
    name: json["name"],
    stock: Stock.fromJson(json["stock"]),
    price: Price.fromJson(json["price"]),
    images: List<Imagee>.from(json["images"].map((x) => Imagee.fromJson(x))),
    categories: List<dynamic>.from(json["categories"].map((x) => x)),
    pk: json["pk"],
    whitePrice: Price.fromJson(json["whitePrice"]),
   // articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    markers: json["markers"] == null ? null : List<Marker>.from(json["markers"].map((x) => Marker.fromJson(x))),
    visible: json["visible"],
    numbersOfPieces: json["numbersOfPieces"],
    defaultArticle: Article.fromJson(json["defaultArticle"]),
    sale: json["sale"],
    variantSizes: List<VariantSize>.from(json["variantSizes"].map((x) => VariantSize.fromJson(x))),
    swatches: List<String>.from(json["swatches"].map((x) => x)),
    articleCodes: List<String>.from(json["articleCodes"].map((x) => x)),
    ticket: json["ticket"],
    searchEngineProductId: json["searchEngineProductId"],
    dummy: json["dummy"],
    linkPdp: json["linkPdp"],
    categoryName: categoryNameValues.map[json["categoryName"]],
    rgbColors: List<String>.from(json["rgbColors"].map((x) => x)),
    articleColorNames: List<String>.from(json["articleColorNames"].map((x) => x)),
   // ecoTaxValue: json["ecoTaxValue"],
    swatchesTotal: json["swatchesTotal"],
    showPriceMarker: json["showPriceMarker"],
    redirectToPdp: json["redirectToPdp"],
    mainCategoryCode: json["mainCategoryCode"],
    comingSoon: json["comingSoon"],
    sellingAttributes: json["sellingAttributes"] == null ? null : List<SellingAttribute>.from(json["sellingAttributes"].map((x) => sellingAttributeValues.map[x])),
    concept: json["concept"] == null ? null : List<String>.from(json["concept"].map((x) => x)),
    environments: json["environments"] == null ? null : List<Environment>.from(json["environments"].map((x) => environmentValues.map[x])),
    qualities: json["qualities"] == null ? null : List<String>.from(json["qualities"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "stock": stock.toJson(),
    "price": price.toJson(),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "pk": pk,
    "whitePrice": whitePrice.toJson(),
    "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
    "markers": markers == null ? null : List<dynamic>.from(markers.map((x) => x.toJson())),
    "visible": visible,
    "numbersOfPieces": numbersOfPieces,
    "defaultArticle": defaultArticle.toJson(),
    "sale": sale,
    "variantSizes": List<dynamic>.from(variantSizes.map((x) => x.toJson())),
    "swatches": List<dynamic>.from(swatches.map((x) => x)),
    "articleCodes": List<dynamic>.from(articleCodes.map((x) => x)),
    "ticket": ticket,
    "searchEngineProductId": searchEngineProductId,
    "dummy": dummy,
    "linkPdp": linkPdp,
    "categoryName": categoryNameValues.reverse[categoryName],
    "rgbColors": List<dynamic>.from(rgbColors.map((x) => x)),
    "articleColorNames": List<dynamic>.from(articleColorNames.map((x) => x)),
    "ecoTaxValue": ecoTaxValue,
    "swatchesTotal": swatchesTotal,
    "showPriceMarker": showPriceMarker,
    "redirectToPdp": redirectToPdp,
    "mainCategoryCode": mainCategoryCode,
    "comingSoon": comingSoon,
    "sellingAttributes": sellingAttributes == null ? null : List<dynamic>.from(sellingAttributes.map((x) => sellingAttributeValues.reverse[x])),
    "concept": concept == null ? null : List<dynamic>.from(concept.map((x) => x)),
    "environments": environments == null ? null : List<dynamic>.from(environments.map((x) => environmentValues.reverse[x])),
    "qualities": qualities == null ? null : List<dynamic>.from(qualities.map((x) => x)),
  };
}

class Article {
  Article({
    this.code,
    this.name,
    this.images,
    this.pk,
    this.whitePrice,
    this.logoPicture,
    this.normalPicture,
    this.markers,
    this.visible,
    this.numbersOfPieces,
    this.ticket,
    this.dummy,
    this.ecoTaxValue,
    this.redirectToPdp,
    this.comingSoon,
    this.color,
    this.rgbColor,
    this.sellingAttributes,
    this.environmentalMarkers,
    this.campaignMedia,
    this.picture,
    this.swatches,
  });

  String code;
  String name;
  List<Imagee> images;
  String pk;
  Price whitePrice;
  List<Imagee> logoPicture;
  List<Imagee> normalPicture;
  List<Marker> markers;
  bool visible;
  int numbersOfPieces;
  String ticket;
  bool dummy;
  int ecoTaxValue;
  bool redirectToPdp;
  bool comingSoon;
  Color color;
  String rgbColor;
  List<SellingAttribute> sellingAttributes;
  List<Environment> environmentalMarkers;
  CampaignMedia campaignMedia;
  Imagee picture;
  List<String> swatches;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    code: json["code"],
    name: json["name"],
    images: List<Imagee>.from(json["images"].map((x) => Imagee.fromJson(x))),
    pk: json["pk"],
    whitePrice: Price.fromJson(json["whitePrice"]),
    logoPicture: List<Imagee>.from(json["logoPicture"].map((x) => Imagee.fromJson(x))),
    normalPicture: List<Imagee>.from(json["normalPicture"].map((x) => Imagee.fromJson(x))),
    markers: json["markers"] == null ? null : List<Marker>.from(json["markers"].map((x) => Marker.fromJson(x))),
    visible: json["visible"],
    numbersOfPieces: json["numbersOfPieces"],
    ticket: json["ticket"],
    dummy: json["dummy"],
   // ecoTaxValue: json["ecoTaxValue"],
    redirectToPdp: json["redirectToPdp"],
    comingSoon: json["comingSoon"],
    color: Color.fromJson(json["color"]),
    rgbColor: json["rgbColor"],
    sellingAttributes: json["sellingAttributes"] == null ? null : List<SellingAttribute>.from(json["sellingAttributes"].map((x) => sellingAttributeValues.map[x])),
    environmentalMarkers: json["environmentalMarkers"] == null ? null : List<Environment>.from(json["environmentalMarkers"].map((x) => environmentValues.map[x])),
    campaignMedia: json["campaignMedia"] == null ? null : CampaignMedia.fromJson(json["campaignMedia"]),
    picture: json["picture"] == null ? null : Imagee.fromJson(json["picture"]),
    swatches: json["swatches"] == null ? null : List<String>.from(json["swatches"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "pk": pk,
    "whitePrice": whitePrice.toJson(),
    "logoPicture": List<dynamic>.from(logoPicture.map((x) => x.toJson())),
    "normalPicture": List<dynamic>.from(normalPicture.map((x) => x.toJson())),
    "markers": markers == null ? null : List<dynamic>.from(markers.map((x) => x.toJson())),
    "visible": visible,
    "numbersOfPieces": numbersOfPieces,
    "ticket": ticket,
    "dummy": dummy,
    "ecoTaxValue": ecoTaxValue,
    "redirectToPdp": redirectToPdp,
    "comingSoon": comingSoon,
    "color": color.toJson(),
    "rgbColor": rgbColor,
    "sellingAttributes": sellingAttributes == null ? null : List<dynamic>.from(sellingAttributes.map((x) => sellingAttributeValues.reverse[x])),
    "environmentalMarkers": environmentalMarkers == null ? null : List<dynamic>.from(environmentalMarkers.map((x) => environmentValues.reverse[x])),
    "campaignMedia": campaignMedia == null ? null : campaignMedia.toJson(),
    "picture": picture == null ? null : picture.toJson(),
    "swatches": swatches == null ? null : List<dynamic>.from(swatches.map((x) => x)),
  };
}

class CampaignMedia {
  CampaignMedia({
    this.url,
    this.id,
    this.author,
    this.type,
  });

  String url;
  String id;
  String author;
  String type;

  factory CampaignMedia.fromJson(Map<String, dynamic> json) => CampaignMedia(
    url: json["url"],
    id: json["id"],
    author: json["author"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "id": id,
    "author": author,
    "type": type,
  };
}

class Color {
  Color({
    this.code,
    this.text,
    this.filterName,
    this.hybrisCode,
  });

  String code;
  String text;
  String filterName;
  String hybrisCode;

  factory Color.fromJson(Map<String, dynamic> json) => Color(
    code: json["code"],
    text: json["text"],
    filterName: json["filterName"],
    hybrisCode: json["hybrisCode"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "text": text,
    "filterName": filterName,
    "hybrisCode": hybrisCode,
  };
}

enum Environment { SIMONE_ROCHA_X_H_M, CONSCIOUS, PREMIUM_SELECTION }

final environmentValues = EnumValues({
  "Conscious": Environment.CONSCIOUS,
  "Premium Selection": Environment.PREMIUM_SELECTION,
  "Simone Rocha x H&M": Environment.SIMONE_ROCHA_X_H_M
});

class Imagee {
  Imagee({
    this.url,
  });

  String url;

  factory Imagee.fromJson(Map<String, dynamic> json) => Imagee(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

class Marker {
  Marker({
    this.text,
    this.colorCode,
    this.type,
  });

  Environment text;
  String colorCode;
  MarkerType type;

  factory Marker.fromJson(Map<String, dynamic> json) => Marker(
    text: environmentValues.map[json["text"]],
    colorCode: json["colorCode"] == null ? null : json["colorCode"],
    type: markerTypeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "text": environmentValues.reverse[text],
    "colorCode": colorCode == null ? null : colorCode,
    "type": markerTypeValues.reverse[type],
  };
}

enum MarkerType { CUSTOM, ENVIRONMENT, QUALITY }

final markerTypeValues = EnumValues({
  "CUSTOM": MarkerType.CUSTOM,
  "ENVIRONMENT": MarkerType.ENVIRONMENT,
  "QUALITY": MarkerType.QUALITY
});

enum SellingAttribute { NEW_ARRIVAL }

final sellingAttributeValues = EnumValues({
  "New Arrival": SellingAttribute.NEW_ARRIVAL
});

class Price {
  Price({
    this.currencyIso,
    this.value,
    this.priceType,
    this.formattedValue,
    this.type,
  });

  CurrencyIso currencyIso;
  double value;
  PriceTypeEnum priceType;
  String formattedValue;
  PriceType type;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    currencyIso: currencyIsoValues.map[json["currencyIso"]],
    value: json["value"].toDouble(),
    priceType: priceTypeEnumValues.map[json["priceType"]],
    formattedValue: json["formattedValue"],
    type: priceTypeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "currencyIso": currencyIsoValues.reverse[currencyIso],
    "value": value,
    "priceType": priceTypeEnumValues.reverse[priceType],
    "formattedValue": formattedValue,
    "type": priceTypeValues.reverse[type],
  };
}

enum CurrencyIso { SGD }

final currencyIsoValues = EnumValues({
  "SGD": CurrencyIso.SGD
});

enum PriceTypeEnum { BUY }

final priceTypeEnumValues = EnumValues({
  "BUY": PriceTypeEnum.BUY
});

enum PriceType { WHITE }

final priceTypeValues = EnumValues({
  "WHITE": PriceType.WHITE
});

enum CategoryName { LADIES, MEN, KIDS }

final categoryNameValues = EnumValues({
  "Kids": CategoryName.KIDS,
  "Ladies": CategoryName.LADIES,
  "Men": CategoryName.MEN
});

class Stock {
  Stock({
    this.stockLevel,
  });

  int stockLevel;

  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
    stockLevel: json["stockLevel"],
  );

  Map<String, dynamic> toJson() => {
    "stockLevel": stockLevel,
  };
}

class VariantSize {
  VariantSize({
    this.orderFilter,
    this.filterCode,
  });

  int orderFilter;
  String filterCode;

  factory VariantSize.fromJson(Map<String, dynamic> json) => VariantSize(
    orderFilter: json["orderFilter"],
    filterCode: json["filterCode"],
  );

  Map<String, dynamic> toJson() => {
    "orderFilter": orderFilter,
    "filterCode": filterCode,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
