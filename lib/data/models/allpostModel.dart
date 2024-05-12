class AllpostModel {
  bool? success;
  String? message;
  List<AllpostData>? data;

  AllpostModel({this.success, this.message, this.data});

  AllpostModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <AllpostData>[];
      json['data'].forEach((v) {
        data!.add(AllpostData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllpostData {
  int? id;
  int? userId;
  int? purposeId;
  String? purposeName;
  int? categoryId;
  String? categoryName;
  int? subCategoryId;
  String? subCategoryName;
  String? addPosting;
  String? addType;
  String? adTitle;
  int? price;
  String? priceType;
  String? priceDetail;
  String? description;
  String? photos;
  String? youTubeLink;
  String? phoneNo;
  String? anotherNo;
  int? cityId;
  String? cityName;
  int? areaId;
  String? areaName;
  int? zoneId;
  String? zoneName;
  int? roadId;
  String? roadName;
  String? location;
  String? websiteLink;
  String? adBoostId;
  String? boostPriceId;
  String? coordinates;
  int? clicks;
  int? callClicks;
  String? approvalStatus;
  String? createdAt;
  String? updatedAt;
  List<User>? user;

  AllpostData(
      {this.id,
        this.userId,
        this.purposeId,
        this.purposeName,
        this.categoryId,
        this.categoryName,
        this.subCategoryId,
        this.subCategoryName,
        this.addPosting,
        this.addType,
        this.adTitle,
        this.price,
        this.priceType,
        this.priceDetail,
        this.description,
        this.photos,
        this.youTubeLink,
        this.phoneNo,
        this.anotherNo,
        this.cityId,
        this.cityName,
        this.areaId,
        this.areaName,
        this.zoneId,
        this.zoneName,
        this.roadId,
        this.roadName,
        this.location,
        this.websiteLink,
        this.adBoostId,
        this.boostPriceId,
        this.coordinates,
        this.clicks,
        this.callClicks,
        this.approvalStatus,
        this.createdAt,
        this.updatedAt,
        this.user});

  AllpostData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    purposeId = json['purposeId'];
    purposeName = json['purposeName'];
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    subCategoryId = json['subCategoryId'];
    subCategoryName = json['subCategoryName'];
    addPosting = json['addPosting'];
    addType = json['addType'];
    adTitle = json['adTitle'];
    price = json['price'];
    priceType = json['priceType'];
    priceDetail = json['priceDetail'];
    description = json['description'];
    photos = json['photos'];
    youTubeLink = json['youTubeLink'];
    phoneNo = json['phoneNo'];
    anotherNo = json['anotherNo'];
    cityId = json['cityId'];
    cityName = json['cityName'];
    areaId = json['areaId'];
    areaName = json['areaName'];
    zoneId = json['zoneId'];
    zoneName = json['zoneName'];
    roadId = json['roadId'];
    roadName = json['roadName'];
    location = json['location'];
    websiteLink = json['websiteLink'];
    adBoostId = json['adBoostId'];
    boostPriceId = json['boostPriceId'];
    coordinates = json['coordinates'];
    clicks = json['clicks'];
    callClicks = json['callClicks'];
    approvalStatus = json['approvalStatus'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['user'] != null) {
      user = <User>[];
      json['user'].forEach((v) {
        user!.add(User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['purposeId'] = purposeId;
    data['purposeName'] = purposeName;
    data['categoryId'] = categoryId;
    data['categoryName'] = categoryName;
    data['subCategoryId'] = subCategoryId;
    data['subCategoryName'] = subCategoryName;
    data['addPosting'] = addPosting;
    data['addType'] = addType;
    data['adTitle'] = adTitle;
    data['price'] = price;
    data['priceType'] = priceType;
    data['priceDetail'] = priceDetail;
    data['description'] = description;
    data['photos'] = photos;
    data['youTubeLink'] = youTubeLink;
    data['phoneNo'] = phoneNo;
    data['anotherNo'] = anotherNo;
    data['cityId'] = cityId;
    data['cityName'] = cityName;
    data['areaId'] = areaId;
    data['areaName'] = areaName;
    data['zoneId'] = zoneId;
    data['zoneName'] = zoneName;
    data['roadId'] = roadId;
    data['roadName'] = roadName;
    data['location'] = location;
    data['websiteLink'] = websiteLink;
    data['adBoostId'] = adBoostId;
    data['boostPriceId'] = boostPriceId;
    data['coordinates'] = coordinates;
    data['clicks'] = clicks;
    data['callClicks'] = callClicks;
    data['approvalStatus'] = approvalStatus;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (user != null) {
      data['user'] = user!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  int? id;
  int? adId;
  int? formBuilderId;
  int? assignInputValueId;
  String? inputValue;
  String? createdAt;
  String? updatedAt;
  FormBuilders? formBuilders;

  User(
      {this.id,
        this.adId,
        this.formBuilderId,
        this.assignInputValueId,
        this.inputValue,
        this.createdAt,
        this.updatedAt,
        this.formBuilders});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    adId = json['adId'];
    formBuilderId = json['formBuilderId'];
    assignInputValueId = json['assignInputValueId'];
    inputValue = json['inputValue'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    formBuilders = json['form_builders'] != null
        ? FormBuilders.fromJson(json['form_builders'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['adId'] = adId;
    data['formBuilderId'] = formBuilderId;
    data['assignInputValueId'] = assignInputValueId;
    data['inputValue'] = inputValue;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (formBuilders != null) {
      data['form_builders'] = formBuilders!.toJson();
    }
    return data;
  }
}

class FormBuilders {
  int? id;
  int? purposeId;
  int? categoryId;
  int? subCategoryId;
  String? parentId;
  String? label;
  String? icon;
  String? fieldType;
  int? isSearchable;
  int? isRequired;
  String? createdAt;
  String? updatedAt;

  FormBuilders(
      {this.id,
        this.purposeId,
        this.categoryId,
        this.subCategoryId,
        this.parentId,
        this.label,
        this.icon,
        this.fieldType,
        this.isSearchable,
        this.isRequired,
        this.createdAt,
        this.updatedAt});

  FormBuilders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    purposeId = json['purposeId'];
    categoryId = json['categoryId'];
    subCategoryId = json['subCategoryId'];
    parentId = json['parentId'];
    label = json['label'];
    icon = json['icon'];
    fieldType = json['fieldType'];
    isSearchable = json['isSearchable'];
    isRequired = json['isRequired'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['purposeId'] = purposeId;
    data['categoryId'] = categoryId;
    data['subCategoryId'] = subCategoryId;
    data['parentId'] = parentId;
    data['label'] = label;
    data['icon'] = icon;
    data['fieldType'] = fieldType;
    data['isSearchable'] = isSearchable;
    data['isRequired'] = isRequired;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}