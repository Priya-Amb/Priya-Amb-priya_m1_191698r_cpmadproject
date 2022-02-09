// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.help,
        this.success,
        this.result,
    });

    String help;
    bool success;
    Result result;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        help: json["help"],
        success: json["success"],
        result: Result.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "help": help,
        "success": success,
        "result": result.toJson(),
    };
}


class Result {
    Result({
        this.resourceId,
        this.fields,
        this.records,
        this.links,
        this.limit,
        this.total,
    });

    String resourceId;
    List<Field> fields;
    List<Record> records;
    Links links;
    int limit;
    int total;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        resourceId: json["resource_id"],
        fields: List<Field>.from(json["fields"].map((x) => Field.fromJson(x))),
        records: List<Record>.from(json["records"].map((x) => Record.fromJson(x))),
        links: Links.fromJson(json["_links"]),
        limit: json["limit"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "resource_id": resourceId,
        "fields": List<dynamic>.from(fields.map((x) => x.toJson())),
        "records": List<dynamic>.from(records.map((x) => x.toJson())),
        "_links": links.toJson(),
        "limit": limit,
        "total": total,
    };
}


class Field {
    Field({
        this.type,
        this.id,
    });

    String type;
    String id;

    factory Field.fromJson(Map<String, dynamic> json) => Field(
        type: json["type"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
    };
}

class Links {
    Links({
        this.start,
        this.next,
    });

    String start;
    String next;

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        start: json["start"],
        next: json["next"],
    );

    Map<String, dynamic> toJson() => {
        "start": start,
        "next": next,
    };
}

class Record {
  static List<Record> filterList(List<Record>w1, String filterString){
    List<Record>_w = w1
    .where(
      (u) => (u.brandAndProductName.toString().split('.').last.toLowerCase().contains(filterString.toLowerCase()))
    ).toList();
    return _w;
  }

    Record({
        this.packageSize,
        this.id,
        this.brandAndProductName,
    });

    String packageSize;
    int id;
    String brandAndProductName;

    factory Record.fromJson(Map<String, dynamic> json) => Record(
        packageSize: json["package_size"],
        id: json["_id"],
        brandAndProductName: json["brand_and_product_name"],
    );

    Map<String, dynamic> toJson() => {
        "package_size": packageSize,
        "_id": id,
        "brand_and_product_name": brandAndProductName,
    };
}