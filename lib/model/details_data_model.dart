// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DetailsDataModel dataModelFromJson(String str) => DetailsDataModel.fromJson(json.decode(str));

String dataModelToJson(DetailsDataModel data) => json.encode(data.toJson());

class DetailsDataModel {
  DetailsDataModel({
    this.responseStatusCode,
    this.product,
  });

  String responseStatusCode;
  Product product;

  factory DetailsDataModel.fromJson(Map<String, dynamic> json) => DetailsDataModel(
    responseStatusCode: json["responseStatusCode"],
    product: Product.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "responseStatusCode": responseStatusCode,
    "product": product.toJson(),
  };
}

class Product {
  Product({
    this.code,
    this.name,
    this.description,
    this.sapProductName,
    this.sellingAttributes,
    this.color,
    this.whitePrice,
    this.priceType,
    this.importedBy,
    this.importedDate,
    this.netQuantity,
    this.countryOfProduction,
    this.productTypeName,
    this.measurements,
    this.descriptiveLenght,
    this.assortmentTypeKey,
    this.lengthCollection,
    this.fits,
    this.showPriceMarker,
    this.baseProductCode,
    this.ancestorProductCode,
    this.mainCategory,
    this.supercategories,
    this.constructionDescr,
    this.customerGroup,
    this.functions,
    this.newArrival,
    this.articlesList,
    this.inStock,
    this.productUrl,
    this.swatchesType,
    this.rootCategoryPath,
    this.styles,
    this.styleCollection,
    this.materialDetails,
    this.presentationTypes,
    this.sizeScaleProductType,
    this.newProduct,
  });

  String code;
  ArticlesListName name;
  String description;
  String sapProductName;
  List<dynamic> sellingAttributes;
  Color color;
  WhitePrice whitePrice;
  String priceType;
  String importedBy;
  String importedDate;
  String netQuantity;
  String countryOfProduction;
  String productTypeName;
  List<String> measurements;
  List<String> descriptiveLenght;
  String assortmentTypeKey;
  List<LengthCollection> lengthCollection;
  List<String> fits;
  bool showPriceMarker;
  String baseProductCode;
  String ancestorProductCode;
  Category mainCategory;
  List<Category> supercategories;
  String constructionDescr;
  String customerGroup;
  List<dynamic> functions;
  bool newArrival;
  List<ArticlesList> articlesList;
  bool inStock;
  String productUrl;
  String swatchesType;
  String rootCategoryPath;
  List<dynamic> styles;
  List<dynamic> styleCollection;
  List<MaterialDetail> materialDetails;
  String presentationTypes;
  String sizeScaleProductType;
  bool newProduct;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    code: json["code"],
    name: articlesListNameValues.map[json["name"]],
    description: json["description"],
    sapProductName: json["sapProductName"],
    sellingAttributes: List<dynamic>.from(json["sellingAttributes"].map((x) => x)),
    color: Color.fromJson(json["color"]),
    whitePrice: WhitePrice.fromJson(json["whitePrice"]),
    priceType: json["priceType"],
    importedBy: json["importedBy"],
    importedDate: json["importedDate"],
    netQuantity: json["netQuantity"],
    countryOfProduction: json["countryOfProduction"],
    productTypeName: json["productTypeName"],
   // measurements: List<String>.from(json["measurements"].map((x) => x)),
    descriptiveLenght: List<String>.from(json["descriptiveLenght"].map((x) => x)),
    assortmentTypeKey: json["assortmentTypeKey"],
    lengthCollection: List<LengthCollection>.from(json["lengthCollection"].map((x) => LengthCollection.fromJson(x))),
   // fits: List<String>.from(json["fits"].map((x) => x)),
    showPriceMarker: json["showPriceMarker"],
    baseProductCode: json["baseProductCode"],
    ancestorProductCode: json["ancestorProductCode"],
    mainCategory: Category.fromJson(json["mainCategory"]),
    supercategories: List<Category>.from(json["supercategories"].map((x) => Category.fromJson(x))),
    constructionDescr: json["constructionDescr"],
    customerGroup: json["customerGroup"],
    functions: List<dynamic>.from(json["functions"].map((x) => x)),
    newArrival: json["newArrival"],
  //  articlesList: List<ArticlesList>.from(json["articlesList"].map((x) => ArticlesList.fromJson(x))),
    inStock: json["inStock"],
    productUrl: json["productUrl"],
    swatchesType: json["swatchesType"],
    rootCategoryPath: json["rootCategoryPath"],
    styles: List<dynamic>.from(json["styles"].map((x) => x)),
    styleCollection: List<dynamic>.from(json["styleCollection"].map((x) => x)),
    materialDetails: List<MaterialDetail>.from(json["materialDetails"].map((x) => MaterialDetail.fromJson(x))),
    presentationTypes: json["presentationTypes"],
    sizeScaleProductType: json["sizeScaleProductType"],
    newProduct: json["newProduct"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": articlesListNameValues.reverse[name],
    "description": description,
    "sapProductName": sapProductName,
    "sellingAttributes": List<dynamic>.from(sellingAttributes.map((x) => x)),
    "color": color.toJson(),
    "whitePrice": whitePrice.toJson(),
    "priceType": priceType,
    "importedBy": importedBy,
    "importedDate": importedDate,
    "netQuantity": netQuantity,
    "countryOfProduction": countryOfProduction,
    "productTypeName": productTypeName,
    "measurements": List<dynamic>.from(measurements.map((x) => x)),
    "descriptiveLenght": List<dynamic>.from(descriptiveLenght.map((x) => x)),
    "assortmentTypeKey": assortmentTypeKey,
    "lengthCollection": List<dynamic>.from(lengthCollection.map((x) => x.toJson())),
    "fits": List<dynamic>.from(fits.map((x) => x)),
    "showPriceMarker": showPriceMarker,
    "baseProductCode": baseProductCode,
    "ancestorProductCode": ancestorProductCode,
    "mainCategory": mainCategory.toJson(),
    "supercategories": List<dynamic>.from(supercategories.map((x) => x.toJson())),
    "constructionDescr": constructionDescr,
    "customerGroup": customerGroup,
    "functions": List<dynamic>.from(functions.map((x) => x)),
    "newArrival": newArrival,
    "articlesList": List<dynamic>.from(articlesList.map((x) => x.toJson())),
    "inStock": inStock,
    "productUrl": productUrl,
    "swatchesType": swatchesType,
    "rootCategoryPath": rootCategoryPath,
    "styles": List<dynamic>.from(styles.map((x) => x)),
    "styleCollection": List<dynamic>.from(styleCollection.map((x) => x)),
    "materialDetails": List<dynamic>.from(materialDetails.map((x) => x.toJson())),
    "presentationTypes": presentationTypes,
    "sizeScaleProductType": sizeScaleProductType,
    "newProduct": newProduct,
  };
}

class ArticlesList {
  ArticlesList({
    this.code,
    this.name,
    this.description,
    this.sellingAttributes,
    this.color,
    this.whitePrice,
    this.colourDescription,
    this.pattern,
    this.lengthCollection,
    this.showPriceMarker,
    this.galleryDetails,
    this.fabricSwatchThumbnails,
    this.styleWith,
    this.functions,
    this.careInstructions,
    this.compositions,
    this.graphicalAppearanceDesc,
    this.genericDescription,
    this.variantsList,
    this.concepts,
    this.legalRestrictions,
    this.parentProductCode,
    this.styleWithScenario,
    this.inStore,
    this.productTransparencyEnabled,
    this.suppliersDetailEnabled,
    this.suppliersSectionDisabledReason,
    this.comingSoon,
    this.articlesListExternal,
    this.articleType,
    this.brandName,
    this.palette,
    this.travelSize,
    this.modelHeight,
    this.garmentSize,
  });

  String code;
  ArticlesListName name;
  String description;
  List<dynamic> sellingAttributes;
  Color color;
  WhitePrice whitePrice;
  String colourDescription;
  String pattern;
  List<dynamic> lengthCollection;
  bool showPriceMarker;
  List<Ail> galleryDetails;
  List<Ail> fabricSwatchThumbnails;
  List<StyleWith> styleWith;
  List<dynamic> functions;
  List<dynamic> careInstructions;
  List<Composition> compositions;
  GraphicalAppearanceDesc graphicalAppearanceDesc;
  String genericDescription;
  List<VariantsList> variantsList;
  List<Concept> concepts;
  List<dynamic> legalRestrictions;
  String parentProductCode;
  StyleWithScenario styleWithScenario;
  bool inStore;
  bool productTransparencyEnabled;
  bool suppliersDetailEnabled;
  String suppliersSectionDisabledReason;
  bool comingSoon;
  bool articlesListExternal;
  ArticleType articleType;
  BrandName brandName;
  bool palette;
  bool travelSize;
  String modelHeight;
  String garmentSize;

  factory ArticlesList.fromJson(Map<String, dynamic> json) => ArticlesList(
    code: json["code"],
    name: articlesListNameValues.map[json["name"]],
    description: json["description"],
    sellingAttributes: List<dynamic>.from(json["sellingAttributes"].map((x) => x)),
    color: Color.fromJson(json["color"]),
    whitePrice: WhitePrice.fromJson(json["whitePrice"]),
    colourDescription: json["colourDescription"],
    pattern: json["pattern"] == null ? null : json["pattern"],
    lengthCollection: List<dynamic>.from(json["lengthCollection"].map((x) => x)),
    showPriceMarker: json["showPriceMarker"],
    galleryDetails: List<Ail>.from(json["galleryDetails"].map((x) => Ail.fromJson(x))),
    fabricSwatchThumbnails: List<Ail>.from(json["fabricSwatchThumbnails"].map((x) => Ail.fromJson(x))),
    styleWith: List<StyleWith>.from(json["styleWith"].map((x) => StyleWith.fromJson(x))),
    functions: List<dynamic>.from(json["functions"].map((x) => x)),
    careInstructions: List<dynamic>.from(json["careInstructions"].map((x) => x)),
    compositions: List<Composition>.from(json["compositions"].map((x) => Composition.fromJson(x))),
    graphicalAppearanceDesc: graphicalAppearanceDescValues.map[json["graphicalAppearanceDesc"]],
    genericDescription: json["genericDescription"],
    variantsList: List<VariantsList>.from(json["variantsList"].map((x) => VariantsList.fromJson(x))),
   // concepts: List<Concept>.from(json["concepts"].map((x) => conceptValues.map[x])),
    legalRestrictions: List<dynamic>.from(json["legalRestrictions"].map((x) => x)),
    parentProductCode: json["parentProductCode"],
    styleWithScenario: styleWithScenarioValues.map[json["styleWithScenario"]],
    inStore: json["inStore"],
    productTransparencyEnabled: json["productTransparencyEnabled"],
    suppliersDetailEnabled: json["suppliersDetailEnabled"],
    suppliersSectionDisabledReason: json["suppliersSectionDisabledReason"],
    comingSoon: json["comingSoon"],
    articlesListExternal: json["external"],
    articleType: articleTypeValues.map[json["articleType"]],
    brandName: brandNameValues.map[json["brandName"]],
    palette: json["palette"],
    travelSize: json["travelSize"],
    modelHeight: json["modelHeight"] == null ? null : json["modelHeight"],
    garmentSize: json["garmentSize"] == null ? null : json["garmentSize"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": articlesListNameValues.reverse[name],
    "description": description,
    "sellingAttributes": List<dynamic>.from(sellingAttributes.map((x) => x)),
    "color": color.toJson(),
    "whitePrice": whitePrice.toJson(),
    "colourDescription": colourDescription,
    "pattern": pattern == null ? null : pattern,
    "lengthCollection": List<dynamic>.from(lengthCollection.map((x) => x)),
    "showPriceMarker": showPriceMarker,
    "galleryDetails": List<dynamic>.from(galleryDetails.map((x) => x.toJson())),
    "fabricSwatchThumbnails": List<dynamic>.from(fabricSwatchThumbnails.map((x) => x.toJson())),
    "styleWith": List<dynamic>.from(styleWith.map((x) => x.toJson())),
    "functions": List<dynamic>.from(functions.map((x) => x)),
    "careInstructions": List<dynamic>.from(careInstructions.map((x) => x)),
    "compositions": List<dynamic>.from(compositions.map((x) => x.toJson())),
    "graphicalAppearanceDesc": graphicalAppearanceDescValues.reverse[graphicalAppearanceDesc],
    "genericDescription": genericDescription,
    "variantsList": List<dynamic>.from(variantsList.map((x) => x.toJson())),
    "concepts": List<dynamic>.from(concepts.map((x) => conceptValues.reverse[x])),
    "legalRestrictions": List<dynamic>.from(legalRestrictions.map((x) => x)),
    "parentProductCode": parentProductCode,
    "styleWithScenario": styleWithScenarioValues.reverse[styleWithScenario],
    "inStore": inStore,
    "productTransparencyEnabled": productTransparencyEnabled,
    "suppliersDetailEnabled": suppliersDetailEnabled,
    "suppliersSectionDisabledReason": suppliersSectionDisabledReason,
    "comingSoon": comingSoon,
    "external": articlesListExternal,
    "articleType": articleTypeValues.reverse[articleType],
    "brandName": brandNameValues.reverse[brandName],
    "palette": palette,
    "travelSize": travelSize,
    "modelHeight": modelHeight == null ? null : modelHeight,
    "garmentSize": garmentSize == null ? null : garmentSize,
  };
}

enum ArticleType { Z001 }

final articleTypeValues = EnumValues({
  "Z001": ArticleType.Z001
});

enum BrandName { H_M }

final brandNameValues = EnumValues({
  "H&M": BrandName.H_M
});

class Color {
  Color({
    this.code,
    this.text,
    this.rgbColor,
  });

  String code;
  String text;
  String rgbColor;

  factory Color.fromJson(Map<String, dynamic> json) => Color(
    code: json["code"],
    text: json["text"],
    rgbColor: json["rgbColor"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "text": text,
    "rgbColor": rgbColor,
  };
}

class Composition {
  Composition({
    this.materials,
    this.compositionType,
  });

  List<Material> materials;
  String compositionType;

  factory Composition.fromJson(Map<String, dynamic> json) => Composition(
    materials: List<Material>.from(json["materials"].map((x) => Material.fromJson(x))),
    compositionType: json["compositionType"] == null ? null : json["compositionType"],
  );

  Map<String, dynamic> toJson() => {
    "materials": List<dynamic>.from(materials.map((x) => x.toJson())),
    "compositionType": compositionType == null ? null : compositionType,
  };
}

class Material {
  Material({
    this.name,
    this.percentage,
  });

  MaterialName name;
  String percentage;

  factory Material.fromJson(Map<String, dynamic> json) => Material(
    name: materialNameValues.map[json["name"]],
    percentage: json["percentage"],
  );

  Map<String, dynamic> toJson() => {
    "name": materialNameValues.reverse[name],
    "percentage": percentage,
  };
}

enum MaterialName { ELASTANE, VISCOSE, POLYESTER, WOOL }

final materialNameValues = EnumValues({
  "Elastane": MaterialName.ELASTANE,
  "Polyester": MaterialName.POLYESTER,
  "Viscose": MaterialName.VISCOSE,
  "Wool": MaterialName.WOOL
});

enum Concept { H_M_MAN }

final conceptValues = EnumValues({
  "H&M MAN": Concept.H_M_MAN
});

class Ail {
  Ail({
    this.url,
    this.assetType,
  });

  String url;
  AssetType assetType;

  factory Ail.fromJson(Map<String, dynamic> json) => Ail(
    url: json["url"],
    assetType: assetTypeValues.map[json["assetType"]],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "assetType": assetTypeValues.reverse[assetType],
  };
}

enum AssetType { DESCRIPTIVESTILLLIFE, LOOKBOOK, DESCRIPTIVEDETAIL }

final assetTypeValues = EnumValues({
  "DESCRIPTIVEDETAIL": AssetType.DESCRIPTIVEDETAIL,
  "DESCRIPTIVESTILLLIFE": AssetType.DESCRIPTIVESTILLLIFE,
  "LOOKBOOK": AssetType.LOOKBOOK
});

enum GraphicalAppearanceDesc { SOLID, MELANGE, CHECK }

final graphicalAppearanceDescValues = EnumValues({
  "Check": GraphicalAppearanceDesc.CHECK,
  "Melange": GraphicalAppearanceDesc.MELANGE,
  "Solid": GraphicalAppearanceDesc.SOLID
});

enum ArticlesListName { SUIT_WAISTCOAT_SLIM_FIT }

final articlesListNameValues = EnumValues({
  "Suit waistcoat Slim Fit": ArticlesListName.SUIT_WAISTCOAT_SLIM_FIT
});

class StyleWith {
  StyleWith({
    this.code,
    this.lengthCollection,
    this.showPriceMarker,
    this.styleWithOrigin,
    this.parentProductCode,
    this.inStore,
    this.productTransparencyEnabled,
    this.suppliersDetailEnabled,
    this.comingSoon,
    this.styleWithExternal,
    this.palette,
    this.travelSize,
  });

  String code;
  List<dynamic> lengthCollection;
  bool showPriceMarker;
  StyleWithOrigin styleWithOrigin;
  String parentProductCode;
  bool inStore;
  bool productTransparencyEnabled;
  bool suppliersDetailEnabled;
  bool comingSoon;
  bool styleWithExternal;
  bool palette;
  bool travelSize;

  factory StyleWith.fromJson(Map<String, dynamic> json) => StyleWith(
    code: json["code"],
    lengthCollection: List<dynamic>.from(json["lengthCollection"].map((x) => x)),
    showPriceMarker: json["showPriceMarker"],
    styleWithOrigin: styleWithOriginValues.map[json["styleWithOrigin"]],
    parentProductCode: json["parentProductCode"],
    inStore: json["inStore"],
    productTransparencyEnabled: json["productTransparencyEnabled"],
    suppliersDetailEnabled: json["suppliersDetailEnabled"],
    comingSoon: json["comingSoon"],
    styleWithExternal: json["external"],
    palette: json["palette"],
    travelSize: json["travelSize"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "lengthCollection": List<dynamic>.from(lengthCollection.map((x) => x)),
    "showPriceMarker": showPriceMarker,
    "styleWithOrigin": styleWithOriginValues.reverse[styleWithOrigin],
    "parentProductCode": parentProductCode,
    "inStore": inStore,
    "productTransparencyEnabled": productTransparencyEnabled,
    "suppliersDetailEnabled": suppliersDetailEnabled,
    "comingSoon": comingSoon,
    "external": styleWithExternal,
    "palette": palette,
    "travelSize": travelSize,
  };
}

enum StyleWithOrigin { DAM, MANUAL }

final styleWithOriginValues = EnumValues({
  "dam": StyleWithOrigin.DAM,
  "manual": StyleWithOrigin.MANUAL
});

enum StyleWithScenario { SCENARIO_1 }

final styleWithScenarioValues = EnumValues({
  "scenario_1": StyleWithScenario.SCENARIO_1
});

class VariantsList {
  VariantsList({
    this.code,
    this.size,
    this.width,
    this.length,
  });

  String code;
  Size size;
  String width;
  String length;

  factory VariantsList.fromJson(Map<String, dynamic> json) => VariantsList(
    code: json["code"],
    size: Size.fromJson(json["size"]),
    width: json["width"] == null ? null : json["width"],
    length: json["length"] == null ? null : json["length"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "size": size.toJson(),
    "width": width == null ? null : width,
    "length": length == null ? null : length,
  };
}

class Size {
  Size({
    this.sizeCode,
    this.name,
    this.sizeScaleCode,
    this.sizeScaleDescription,
    this.sizeOrder,
    this.sizeFilter,
    this.market,
  });

  String sizeCode;
  String name;
  String sizeScaleCode;
  SizeScaleDescription sizeScaleDescription;
  int sizeOrder;
  String sizeFilter;
  Market market;

  factory Size.fromJson(Map<String, dynamic> json) => Size(
    sizeCode: json["sizeCode"],
    name: json["name"],
    sizeScaleCode: json["sizeScaleCode"],
    sizeScaleDescription: sizeScaleDescriptionValues.map[json["sizeScaleDescription"]],
    sizeOrder: json["sizeOrder"],
    sizeFilter: json["sizeFilter"],
    market: marketValues.map[json["market"]],
  );

  Map<String, dynamic> toJson() => {
    "sizeCode": sizeCode,
    "name": name,
    "sizeScaleCode": sizeScaleCode,
    "sizeScaleDescription": sizeScaleDescriptionValues.reverse[sizeScaleDescription],
    "sizeOrder": sizeOrder,
    "sizeFilter": sizeFilter,
    "market": marketValues.reverse[market],
  };
}

enum Market { SP_MCA }

final marketValues = EnumValues({
  "SP_MCA": Market.SP_MCA
});

enum SizeScaleDescription { MEN_S_TOPS_BLAZERS_AND_JACKET }

final sizeScaleDescriptionValues = EnumValues({
  "Men's tops, blazers and jacket": SizeScaleDescription.MEN_S_TOPS_BLAZERS_AND_JACKET
});

class WhitePrice {
  WhitePrice({
    this.price,
    this.currency,
    this.referenceFlag,
    this.startDate,
    this.endDate,
  });

  double price;
  Currency currency;
  bool referenceFlag;
  int startDate;
  int endDate;

  factory WhitePrice.fromJson(Map<String, dynamic> json) => WhitePrice(
    price: json["price"].toDouble(),
    currency: currencyValues.map[json["currency"]],
    referenceFlag: json["referenceFlag"],
    startDate: json["startDate"],
    endDate: json["endDate"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
    "currency": currencyValues.reverse[currency],
    "referenceFlag": referenceFlag,
    "startDate": startDate,
    "endDate": endDate,
  };
}

enum Currency { SGD }

final currencyValues = EnumValues({
  "SGD": Currency.SGD
});

class LengthCollection {
  LengthCollection({
    this.code,
    this.value,
  });

  String code;
  List<String> value;

  factory LengthCollection.fromJson(Map<String, dynamic> json) => LengthCollection(
    code: json["code"],
    value: List<String>.from(json["value"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "value": List<dynamic>.from(value.map((x) => x)),
  };
}

class Category {
  Category({
    this.name,
    this.code,
  });

  String name;
  String code;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    name: json["name"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "code": code,
  };
}

class MaterialDetail {
  MaterialDetail({
    this.name,
    this.description,
  });

  MaterialName name;
  String description;

  factory MaterialDetail.fromJson(Map<String, dynamic> json) => MaterialDetail(
    name: materialNameValues.map[json["name"]],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "name": materialNameValues.reverse[name],
    "description": description,
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
