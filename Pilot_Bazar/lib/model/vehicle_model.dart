// To parse this JSON data, do
//
//     final vehicleModel = vehicleModelFromJson(jsonString);

import 'dart:convert';

List<VehicleModel> vehicleModelFromJson(String str) => List<VehicleModel>.from(json.decode(str).map((x) => VehicleModel.fromJson(x)));

String vehicleModelToJson(List<VehicleModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VehicleModel {
    int id;
    String slug;
    String? userId;
    String categoryId;
    String merchantId;
    String brandId;
    String editionId;
    String conditionId;
    String transmissionId;
    String engineId;
    String fuelId;
    String skeletonId;
    String mileageId;
    String gradeId;
    String carmodelId;
    String colorId;
    String availableId;
    String registrationId;
    String prioty;
    String? video;
    String? chassisNumber;
    String? engineNumber;
    String code;
    String? registration;
    String manufacture;
    String price;
    String? purchasePrice;
    String? fixedPrice;
    String negotiable;
    String? additionalPrice;
    String isApproved;
    DateTime publishAt;
    String isFeat;
    String status;
    DateTime createdAt;
    DateTime updatedAt;
    List<Translate> translate;
    Merchant merchant;
    Brand brand;
    Brand edition;
    Brand condition;
    Brand transmission;
    Brand engine;
    Brand fuel;
    Brand skeleton;
    Brand mileage;

    VehicleModel({
        required this.id,
        required this.slug,
        required this.userId,
        required this.categoryId,
        required this.merchantId,
        required this.brandId,
        required this.editionId,
        required this.conditionId,
        required this.transmissionId,
        required this.engineId,
        required this.fuelId,
        required this.skeletonId,
        required this.mileageId,
        required this.gradeId,
        required this.carmodelId,
        required this.colorId,
        required this.availableId,
        required this.registrationId,
        required this.prioty,
        required this.video,
        required this.chassisNumber,
        required this.engineNumber,
        required this.code,
        required this.registration,
        required this.manufacture,
        required this.price,
        required this.purchasePrice,
        required this.fixedPrice,
        required this.negotiable,
        required this.additionalPrice,
        required this.isApproved,
        required this.publishAt,
        required this.isFeat,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.translate,
        required this.merchant,
        required this.brand,
        required this.edition,
        required this.condition,
        required this.transmission,
        required this.engine,
        required this.fuel,
        required this.skeleton,
        required this.mileage,
    });

    factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
        id: json["id"],
        slug: json["slug"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        merchantId: json["merchant_id"],
        brandId: json["brand_id"],
        editionId: json["edition_id"],
        conditionId: json["condition_id"],
        transmissionId: json["transmission_id"],
        engineId: json["engine_id"],
        fuelId: json["fuel_id"],
        skeletonId: json["skeleton_id"],
        mileageId: json["mileage_id"],
        gradeId: json["grade_id"],
        carmodelId: json["carmodel_id"],
        colorId: json["color_id"],
        availableId: json["available_id"],
        registrationId: json["registration_id"],
        prioty: json["prioty"],
        video: json["video"],
        chassisNumber: json["chassis_number"],
        engineNumber: json["engine_number"],
        code: json["code"],
        registration: json["registration"],
        manufacture: json["manufacture"],
        price: json["price"],
        purchasePrice: json["purchase_price"],
        fixedPrice: json["fixed_price"],
        negotiable: json["negotiable"],
        additionalPrice: json["additional_price"],
        isApproved: json["is_approved"],
        publishAt: DateTime.parse(json["publish_at"]),
        isFeat: json["is_feat"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        translate: List<Translate>.from(json["translate"].map((x) => Translate.fromJson(x))),
        merchant: Merchant.fromJson(json["merchant"]),
        brand: Brand.fromJson(json["brand"]),
        edition: Brand.fromJson(json["edition"]),
        condition: Brand.fromJson(json["condition"]),
        transmission: Brand.fromJson(json["transmission"]),
        engine: Brand.fromJson(json["engine"]),
        fuel: Brand.fromJson(json["fuel"]),
        skeleton: Brand.fromJson(json["skeleton"]),
        mileage: Brand.fromJson(json["mileage"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "user_id": userId,
        "category_id": categoryId,
        "merchant_id": merchantId,
        "brand_id": brandId,
        "edition_id": editionId,
        "condition_id": conditionId,
        "transmission_id": transmissionId,
        "engine_id": engineId,
        "fuel_id": fuelId,
        "skeleton_id": skeletonId,
        "mileage_id": mileageId,
        "grade_id": gradeId,
        "carmodel_id": carmodelId,
        "color_id": colorId,
        "available_id": availableId,
        "registration_id": registrationId,
        "prioty": prioty,
        "video": video,
        "chassis_number": chassisNumber,
        "engine_number": engineNumber,
        "code": code,
        "registration": registration,
        "manufacture": manufacture,
        "price": price,
        "purchase_price": purchasePrice,
        "fixed_price": fixedPrice,
        "negotiable": negotiable,
        "additional_price": additionalPrice,
        "is_approved": isApproved,
        "publish_at": publishAt.toIso8601String(),
        "is_feat": isFeat,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "translate": List<dynamic>.from(translate.map((x) => x.toJson())),
        "merchant": merchant.toJson(),
        "brand": brand.toJson(),
        "edition": edition.toJson(),
        "condition": condition.toJson(),
        "transmission": transmission.toJson(),
        "engine": engine.toJson(),
        "fuel": fuel.toJson(),
        "skeleton": skeleton.toJson(),
        "mileage": mileage.toJson(),
    };
}

class Brand {
    int id;
    String slug;
    List<Translate> translate;

    Brand({
        required this.id,
        required this.slug,
        required this.translate,
    });

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        slug: json["slug"],
        translate: List<Translate>.from(json["translate"].map((x) => Translate.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "translate": List<dynamic>.from(translate.map((x) => x.toJson())),
    };
}

class Translate {
    int id;
    TranslateType translateType;
    String translateId;
    String title;
    Local local;
    DateTime createdAt;
    DateTime updatedAt;

    Translate({
        required this.id,
        required this.translateType,
        required this.translateId,
        required this.title,
        required this.local,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Translate.fromJson(Map<String, dynamic> json) => Translate(
        id: json["id"],
        translateType: translateTypeValues.map[json["translate_type"]]!,
        translateId: json["translate_id"],
        title: json["title"],
        local: localValues.map[json["local"]]!,
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "translate_type": translateTypeValues.reverse[translateType],
        "translate_id": translateId,
        "title": title,
        "local": localValues.reverse[local],
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

enum Local {
    BN,
    EN
}

final localValues = EnumValues({
    "bn": Local.BN,
    "en": Local.EN
});

enum TranslateType {
    APP_MODELS_BRAND,
    APP_MODELS_CONDITION,
    APP_MODELS_EDITION,
    APP_MODELS_ENGINE,
    APP_MODELS_FUEL,
    APP_MODELS_MILEAGE,
    APP_MODELS_SKELETON,
    APP_MODELS_TRANSMISSION,
    APP_MODELS_VEHICLE
}

final translateTypeValues = EnumValues({
    "App\\Models\\Brand": TranslateType.APP_MODELS_BRAND,
    "App\\Models\\Condition": TranslateType.APP_MODELS_CONDITION,
    "App\\Models\\Edition": TranslateType.APP_MODELS_EDITION,
    "App\\Models\\Engine": TranslateType.APP_MODELS_ENGINE,
    "App\\Models\\Fuel": TranslateType.APP_MODELS_FUEL,
    "App\\Models\\Mileage": TranslateType.APP_MODELS_MILEAGE,
    "App\\Models\\Skeleton": TranslateType.APP_MODELS_SKELETON,
    "App\\Models\\Transmission": TranslateType.APP_MODELS_TRANSMISSION,
    "App\\Models\\Vehicle": TranslateType.APP_MODELS_VEHICLE
});

class Merchant {
    int id;
    Name name;

    Merchant({
        required this.id,
        required this.name,
    });

    factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
    };
}

enum Name {
    AHQ_AUTOMOBILES,
    AVAILABLE_WITH_OWNER,
    A_R_IMPORTS,
    FAIR_AUTOMOBILES,
    GLOBAL_EMPORIUM_GMAIL_COM,
    LAIMA_ENTERPRISE,
    PILOT_KABIR,
    R_S_INTERNATIONAL_GREEN_VALLEY_AUTOMOBILES,
    S_A_C_CORPORATION,
    WHEEL_DEALS
}

final nameValues = EnumValues({
    "AHQ Automobiles": Name.AHQ_AUTOMOBILES,
    "Available with Owner": Name.AVAILABLE_WITH_OWNER,
    "A. R Imports": Name.A_R_IMPORTS,
    "Fair Automobiles": Name.FAIR_AUTOMOBILES,
    "Global Emporium@gmail.com": Name.GLOBAL_EMPORIUM_GMAIL_COM,
    "Laima Enterprise": Name.LAIMA_ENTERPRISE,
    "Pilot Kabir": Name.PILOT_KABIR,
    "R.S International & Green Valley Automobiles": Name.R_S_INTERNATIONAL_GREEN_VALLEY_AUTOMOBILES,
    "S.A.C Corporation": Name.S_A_C_CORPORATION,
    "Wheel Deals": Name.WHEEL_DEALS
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
