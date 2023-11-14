class RequestBody {
  int? id;
  String? slug;
  String? userId;
  String? categoryId;
  String? merchantId;
  String? brandId;
  String? editionId;
  String? conditionId;
  String? transmissionId;
  String? engineId;
  String? fuelId;
  String? skeletonId;
  String? mileageId;
  String? gradeId;
  String? carmodelId;
  String? colorId;
  String? availableId;
  String? registrationId;
  String? prioty;
  Null? video;
  String? chassisNumber;
  String? engineNumber;
  String? code;
  Null? registration;
  String? manufacture;
  String? price;
  String? purchasePrice;
  String? fixedPrice;
  String? negotiable;
  Null? additionalPrice;
  String? isApproved;
  String? publishAt;
  String? isFeat;
  String? status;
  String? createdAt;
  String? updatedAt;
  Merchant? merchant;
  Brand? brand;
  Brand? edition;
  Brand? condition;
  Brand? transmission;
  Brand? engine;
  Brand? fuel;
  Brand? skeleton;
  Brand? mileage;

  RequestBody(
      {this.id,
      this.slug,
      this.userId,
      this.categoryId,
      this.merchantId,
      this.brandId,
      this.editionId,
      this.conditionId,
      this.transmissionId,
      this.engineId,
      this.fuelId,
      this.skeletonId,
      this.mileageId,
      this.gradeId,
      this.carmodelId,
      this.colorId,
      this.availableId,
      this.registrationId,
      this.prioty,
      this.video,
      this.chassisNumber,
      this.engineNumber,
      this.code,
      this.registration,
      this.manufacture,
      this.price,
      this.purchasePrice,
      this.fixedPrice,
      this.negotiable,
      this.additionalPrice,
      this.isApproved,
      this.publishAt,
      this.isFeat,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.merchant,
      this.brand,
      this.edition,
      this.condition,
      this.transmission,
      this.engine,
      this.fuel,
      this.skeleton,
      this.mileage});

  RequestBody.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    merchantId = json['merchant_id'];
    brandId = json['brand_id'];
    editionId = json['edition_id'];
    conditionId = json['condition_id'];
    transmissionId = json['transmission_id'];
    engineId = json['engine_id'];
    fuelId = json['fuel_id'];
    skeletonId = json['skeleton_id'];
    mileageId = json['mileage_id'];
    gradeId = json['grade_id'];
    carmodelId = json['carmodel_id'];
    colorId = json['color_id'];
    availableId = json['available_id'];
    registrationId = json['registration_id'];
    prioty = json['prioty'];
    video = json['video'];
    chassisNumber = json['chassis_number'];
    engineNumber = json['engine_number'];
    code = json['code'];
    registration = json['registration'];
    manufacture = json['manufacture'];
    price = json['price'];
    purchasePrice = json['purchase_price'];
    fixedPrice = json['fixed_price'];
    negotiable = json['negotiable'];
    additionalPrice = json['additional_price'];
    isApproved = json['is_approved'];
    publishAt = json['publish_at'];
    isFeat = json['is_feat'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    merchant = json['merchant'] != null
        ? Merchant.fromJson(json['merchant'])
        : null;
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    edition =
        json['edition'] != null ? Brand.fromJson(json['edition']) : null;
    condition = json['condition'] != null
        ? Brand.fromJson(json['condition'])
        : null;
    transmission = json['transmission'] != null
        ? Brand.fromJson(json['transmission'])
        : null;
    engine = json['engine'] != null ? Brand.fromJson(json['engine']) : null;
    fuel = json['fuel'] != null ? Brand.fromJson(json['fuel']) : null;
    skeleton =
        json['skeleton'] != null ? Brand.fromJson(json['skeleton']) : null;
    mileage =
        json['mileage'] != null ? Brand.fromJson(json['mileage']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['slug'] = slug;
    data['user_id'] = userId;
    data['category_id'] = categoryId;
    data['merchant_id'] = merchantId;
    data['brand_id'] = brandId;
    data['edition_id'] = editionId;
    data['condition_id'] = conditionId;
    data['transmission_id'] = transmissionId;
    data['engine_id'] = engineId;
    data['fuel_id'] = fuelId;
    data['skeleton_id'] = skeletonId;
    data['mileage_id'] = mileageId;
    data['grade_id'] = gradeId;
    data['carmodel_id'] = carmodelId;
    data['color_id'] = colorId;
    data['available_id'] = availableId;
    data['registration_id'] = registrationId;
    data['prioty'] = prioty;
    data['video'] = video;
    data['chassis_number'] = chassisNumber;
    data['engine_number'] = engineNumber;
    data['code'] = code;
    data['registration'] = registration;
    data['manufacture'] = manufacture;
    data['price'] = price;
    data['purchase_price'] = purchasePrice;
    data['fixed_price'] = fixedPrice;
    data['negotiable'] = negotiable;
    data['additional_price'] = additionalPrice;
    data['is_approved'] = isApproved;
    data['publish_at'] = publishAt;
    data['is_feat'] = isFeat;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (merchant != null) {
      data['merchant'] = merchant!.toJson();
    }
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    if (edition != null) {
      data['edition'] = edition!.toJson();
    }
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    if (transmission != null) {
      data['transmission'] = transmission!.toJson();
    }
    if (engine != null) {
      data['engine'] = engine!.toJson();
    }
    if (fuel != null) {
      data['fuel'] = fuel!.toJson();
    }
    if (skeleton != null) {
      data['skeleton'] = skeleton!.toJson();
    }
    if (mileage != null) {
      data['mileage'] = mileage!.toJson();
    }
    return data;
  }
}

class Merchant {
  int? id;
  String? name;

  Merchant({this.id, this.name});

  Merchant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Brand {
  int? id;
  String? slug;
  List<Translate>? translate;

  Brand({this.id, this.slug, this.translate});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    if (json['translate'] != null) {
      translate = <Translate>[];
      json['translate'].forEach((v) {
        translate!.add(Translate.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['slug'] = slug;
    if (translate != null) {
      data['translate'] = translate!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Translate {
  int? id;
  String? translateType;
  String? translateId;
  String? title;
  String? local;
  String? createdAt;
  String? updatedAt;

  Translate(
      {this.id,
      this.translateType,
      this.translateId,
      this.title,
      this.local,
      this.createdAt,
      this.updatedAt});

  Translate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    translateType = json['translate_type'];
    translateId = json['translate_id'];
    title = json['title'];
    local = json['local'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['translate_type'] = translateType;
    data['translate_id'] = translateId;
    data['title'] = title;
    data['local'] = local;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
