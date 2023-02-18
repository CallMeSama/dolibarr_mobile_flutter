// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    Product({
        required this.label,
        required this.description,
        this.other,
        required this.type,
        required this.price,
        required this.priceTtc,
        required this.priceMin,
        required this.priceMinTtc,
        required this.priceBaseType,
        required this.multiprices,
        required this.multipricesTtc,
        required this.multipricesBaseType,
        required this.multipricesMin,
        required this.multipricesMinTtc,
        required this.multipricesTvaTx,
        required this.pricesByQty,
        required this.pricesByQtyList,
        required this.multilangs,
        this.defaultVatCode,
        required this.tvaTx,
        required this.localtax1Tx,
        required this.localtax2Tx,
        required this.localtax1Type,
        required this.localtax2Type,
        this.lifetime,
        this.qcFrequency,
        this.costPrice,
        required this.pmp,
        required this.seuilStockAlerte,
        required this.desiredstock,
        required this.durationValue,
        required this.durationUnit,
        required this.status,
        required this.statusBuy,
        this.finished,
        this.fkDefaultBom,
        required this.statusBatch,
        required this.batchMask,
        required this.customcode,
        this.url,
        this.weight,
        required this.weightUnits,
        this.length,
        required this.lengthUnits,
        this.width,
        required this.widthUnits,
        this.height,
        required this.heightUnits,
        this.surface,
        required this.surfaceUnits,
        this.volume,
        required this.volumeUnits,
        this.netMeasure,
        this.netMeasureUnits,
        required this.accountancyCodeSell,
        required this.accountancyCodeSellIntra,
        required this.accountancyCodeSellExport,
        required this.accountancyCodeBuy,
        required this.accountancyCodeBuyIntra,
        required this.accountancyCodeBuyExport,
        this.barcode,
        this.barcodeType,
        required this.dateCreation,
        required this.dateModification,
        this.fkDefaultWarehouse,
        this.fkPriceExpression,
        this.fkUnit,
        required this.priceAutogen,
        this.isObjectUsed,
        required this.mandatoryPeriod,
        required this.id,
        required this.entity,
        required this.validateFieldsErrors,
        this.importKey,
        required this.arrayOptions,
        this.arrayLanguages,
        this.contactsIds,
        this.linkedObjects,
        this.linkedObjectsIds,
        required this.linkedObjectsFullLoaded,
        required this.canvas,
        this.fkProjet,
        required this.ref,
        this.refExt,
        this.countryId,
        required this.countryCode,
        this.stateId,
        this.regionId,
        this.barcodeTypeCoder,
        this.lastMainDoc,
        this.notePublic,
        required this.notePrivate,
        this.totalHt,
        this.totalTva,
        this.totalLocaltax1,
        this.totalLocaltax2,
        this.totalTtc,
        this.dateValidation,
        this.dateCloture,
        this.userAuthor,
        this.userCreation,
        this.userCreationId,
        this.userValid,
        this.userValidation,
        this.userValidationId,
        this.userClosingId,
        this.userModification,
        this.userModificationId,
        required this.specimen,
        required this.duration,
    });

    String label;
    String description;
    dynamic other;
    String type;
    String price;
    String priceTtc;
    String priceMin;
    String priceMinTtc;
    String priceBaseType;
    List<dynamic> multiprices;
    List<dynamic> multipricesTtc;
    List<dynamic> multipricesBaseType;
    List<dynamic> multipricesMin;
    List<dynamic> multipricesMinTtc;
    List<dynamic> multipricesTvaTx;
    List<dynamic> pricesByQty;
    List<dynamic> pricesByQtyList;
    List<dynamic> multilangs;
    dynamic defaultVatCode;
    String tvaTx;
    String localtax1Tx;
    String localtax2Tx;
    String localtax1Type;
    String localtax2Type;
    dynamic lifetime;
    dynamic qcFrequency;
    dynamic costPrice;
    String pmp;
    String seuilStockAlerte;
    String desiredstock;
    bool durationValue;
    String durationUnit;
    String status;
    String statusBuy;
    dynamic finished;
    dynamic fkDefaultBom;
    String statusBatch;
    String batchMask;
    String customcode;
    dynamic url;
    dynamic weight;
    String weightUnits;
    dynamic length;
    String lengthUnits;
    dynamic width;
    String widthUnits;
    dynamic height;
    String heightUnits;
    dynamic surface;
    String surfaceUnits;
    dynamic volume;
    String volumeUnits;
    dynamic netMeasure;
    dynamic netMeasureUnits;
    String accountancyCodeSell;
    String accountancyCodeSellIntra;
    String accountancyCodeSellExport;
    String accountancyCodeBuy;
    String accountancyCodeBuyIntra;
    String accountancyCodeBuyExport;
    dynamic barcode;
    dynamic barcodeType;
    DateTime dateCreation;
    DateTime dateModification;
    dynamic fkDefaultWarehouse;
    dynamic fkPriceExpression;
    dynamic fkUnit;
    String priceAutogen;
    dynamic isObjectUsed;
    String mandatoryPeriod;
    String id;
    String entity;
    List<dynamic> validateFieldsErrors;
    dynamic importKey;
    List<dynamic> arrayOptions;
    dynamic arrayLanguages;
    dynamic contactsIds;
    dynamic linkedObjects;
    dynamic linkedObjectsIds;
    List<dynamic> linkedObjectsFullLoaded;
    String canvas;
    dynamic fkProjet;
    String ref;
    dynamic refExt;
    dynamic countryId;
    String countryCode;
    dynamic stateId;
    dynamic regionId;
    dynamic barcodeTypeCoder;
    dynamic lastMainDoc;
    dynamic notePublic;
    String notePrivate;
    dynamic totalHt;
    dynamic totalTva;
    dynamic totalLocaltax1;
    dynamic totalLocaltax2;
    dynamic totalTtc;
    dynamic dateValidation;
    dynamic dateCloture;
    dynamic userAuthor;
    dynamic userCreation;
    dynamic userCreationId;
    dynamic userValid;
    dynamic userValidation;
    dynamic userValidationId;
    dynamic userClosingId;
    dynamic userModification;
    dynamic userModificationId;
    int specimen;
    String duration;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        label: json["label"],
        description: json["description"],
        other: json["other"],
        type: json["type"],
        price: json["price"],
        priceTtc: json["price_ttc"],
        priceMin: json["price_min"],
        priceMinTtc: json["price_min_ttc"],
        priceBaseType: json["price_base_type"],
        multiprices: List<dynamic>.from(json["multiprices"].map((x) => x)),
        multipricesTtc: List<dynamic>.from(json["multiprices_ttc"].map((x) => x)),
        multipricesBaseType: List<dynamic>.from(json["multiprices_base_type"].map((x) => x)),
        multipricesMin: List<dynamic>.from(json["multiprices_min"].map((x) => x)),
        multipricesMinTtc: List<dynamic>.from(json["multiprices_min_ttc"].map((x) => x)),
        multipricesTvaTx: List<dynamic>.from(json["multiprices_tva_tx"].map((x) => x)),
        pricesByQty: List<dynamic>.from(json["prices_by_qty"].map((x) => x)),
        pricesByQtyList: List<dynamic>.from(json["prices_by_qty_list"].map((x) => x)),
        multilangs: List<dynamic>.from(json["multilangs"].map((x) => x)),
        defaultVatCode: json["default_vat_code"],
        tvaTx: json["tva_tx"],
        localtax1Tx: json["localtax1_tx"],
        localtax2Tx: json["localtax2_tx"],
        localtax1Type: json["localtax1_type"],
        localtax2Type: json["localtax2_type"],
        lifetime: json["lifetime"],
        qcFrequency: json["qc_frequency"],
        costPrice: json["cost_price"],
        pmp: json["pmp"],
        seuilStockAlerte: json["seuil_stock_alerte"],
        desiredstock: json["desiredstock"],
        durationValue: json["duration_value"],
        durationUnit: json["duration_unit"],
        status: json["status"],
        statusBuy: json["status_buy"],
        finished: json["finished"],
        fkDefaultBom: json["fk_default_bom"],
        statusBatch: json["status_batch"],
        batchMask: json["batch_mask"],
        customcode: json["customcode"],
        url: json["url"],
        weight: json["weight"],
        weightUnits: json["weight_units"],
        length: json["length"],
        lengthUnits: json["length_units"],
        width: json["width"],
        widthUnits: json["width_units"],
        height: json["height"],
        heightUnits: json["height_units"],
        surface: json["surface"],
        surfaceUnits: json["surface_units"],
        volume: json["volume"],
        volumeUnits: json["volume_units"],
        netMeasure: json["net_measure"],
        netMeasureUnits: json["net_measure_units"],
        accountancyCodeSell: json["accountancy_code_sell"],
        accountancyCodeSellIntra: json["accountancy_code_sell_intra"],
        accountancyCodeSellExport: json["accountancy_code_sell_export"],
        accountancyCodeBuy: json["accountancy_code_buy"],
        accountancyCodeBuyIntra: json["accountancy_code_buy_intra"],
        accountancyCodeBuyExport: json["accountancy_code_buy_export"],
        barcode: json["barcode"],
        barcodeType: json["barcode_type"],
        dateCreation: DateTime.parse(json["date_creation"]),
        dateModification: DateTime.parse(json["date_modification"]),
        fkDefaultWarehouse: json["fk_default_warehouse"],
        fkPriceExpression: json["fk_price_expression"],
        fkUnit: json["fk_unit"],
        priceAutogen: json["price_autogen"],
        isObjectUsed: json["is_object_used"],
        mandatoryPeriod: json["mandatory_period"],
        id: json["id"],
        entity: json["entity"],
        validateFieldsErrors: List<dynamic>.from(json["validateFieldsErrors"].map((x) => x)),
        importKey: json["import_key"],
        arrayOptions: List<dynamic>.from(json["array_options"].map((x) => x)),
        arrayLanguages: json["array_languages"],
        contactsIds: json["contacts_ids"],
        linkedObjects: json["linked_objects"],
        linkedObjectsIds: json["linkedObjectsIds"],
        linkedObjectsFullLoaded: List<dynamic>.from(json["linkedObjectsFullLoaded"].map((x) => x)),
        canvas: json["canvas"],
        fkProjet: json["fk_projet"],
        ref: json["ref"],
        refExt: json["ref_ext"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        stateId: json["state_id"],
        regionId: json["region_id"],
        barcodeTypeCoder: json["barcode_type_coder"],
        lastMainDoc: json["last_main_doc"],
        notePublic: json["note_public"],
        notePrivate: json["note_private"],
        totalHt: json["total_ht"],
        totalTva: json["total_tva"],
        totalLocaltax1: json["total_localtax1"],
        totalLocaltax2: json["total_localtax2"],
        totalTtc: json["total_ttc"],
        dateValidation: json["date_validation"],
        dateCloture: json["date_cloture"],
        userAuthor: json["user_author"],
        userCreation: json["user_creation"],
        userCreationId: json["user_creation_id"],
        userValid: json["user_valid"],
        userValidation: json["user_validation"],
        userValidationId: json["user_validation_id"],
        userClosingId: json["user_closing_id"],
        userModification: json["user_modification"],
        userModificationId: json["user_modification_id"],
        specimen: json["specimen"],
        duration: json["duration"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "description": description,
        "other": other,
        "type": type,
        "price": price,
        "price_ttc": priceTtc,
        "price_min": priceMin,
        "price_min_ttc": priceMinTtc,
        "price_base_type": priceBaseType,
        "multiprices": List<dynamic>.from(multiprices.map((x) => x)),
        "multiprices_ttc": List<dynamic>.from(multipricesTtc.map((x) => x)),
        "multiprices_base_type": List<dynamic>.from(multipricesBaseType.map((x) => x)),
        "multiprices_min": List<dynamic>.from(multipricesMin.map((x) => x)),
        "multiprices_min_ttc": List<dynamic>.from(multipricesMinTtc.map((x) => x)),
        "multiprices_tva_tx": List<dynamic>.from(multipricesTvaTx.map((x) => x)),
        "prices_by_qty": List<dynamic>.from(pricesByQty.map((x) => x)),
        "prices_by_qty_list": List<dynamic>.from(pricesByQtyList.map((x) => x)),
        "multilangs": List<dynamic>.from(multilangs.map((x) => x)),
        "default_vat_code": defaultVatCode,
        "tva_tx": tvaTx,
        "localtax1_tx": localtax1Tx,
        "localtax2_tx": localtax2Tx,
        "localtax1_type": localtax1Type,
        "localtax2_type": localtax2Type,
        "lifetime": lifetime,
        "qc_frequency": qcFrequency,
        "cost_price": costPrice,
        "pmp": pmp,
        "seuil_stock_alerte": seuilStockAlerte,
        "desiredstock": desiredstock,
        "duration_value": durationValue,
        "duration_unit": durationUnit,
        "status": status,
        "status_buy": statusBuy,
        "finished": finished,
        "fk_default_bom": fkDefaultBom,
        "status_batch": statusBatch,
        "batch_mask": batchMask,
        "customcode": customcode,
        "url": url,
        "weight": weight,
        "weight_units": weightUnits,
        "length": length,
        "length_units": lengthUnits,
        "width": width,
        "width_units": widthUnits,
        "height": height,
        "height_units": heightUnits,
        "surface": surface,
        "surface_units": surfaceUnits,
        "volume": volume,
        "volume_units": volumeUnits,
        "net_measure": netMeasure,
        "net_measure_units": netMeasureUnits,
        "accountancy_code_sell": accountancyCodeSell,
        "accountancy_code_sell_intra": accountancyCodeSellIntra,
        "accountancy_code_sell_export": accountancyCodeSellExport,
        "accountancy_code_buy": accountancyCodeBuy,
        "accountancy_code_buy_intra": accountancyCodeBuyIntra,
        "accountancy_code_buy_export": accountancyCodeBuyExport,
        "barcode": barcode,
        "barcode_type": barcodeType,
        "date_creation": dateCreation.toIso8601String(),
        "date_modification": dateModification.toIso8601String(),
        "fk_default_warehouse": fkDefaultWarehouse,
        "fk_price_expression": fkPriceExpression,
        "fk_unit": fkUnit,
        "price_autogen": priceAutogen,
        "is_object_used": isObjectUsed,
        "mandatory_period": mandatoryPeriod,
        "id": id,
        "entity": entity,
        "validateFieldsErrors": List<dynamic>.from(validateFieldsErrors.map((x) => x)),
        "import_key": importKey,
        "array_options": List<dynamic>.from(arrayOptions.map((x) => x)),
        "array_languages": arrayLanguages,
        "contacts_ids": contactsIds,
        "linked_objects": linkedObjects,
        "linkedObjectsIds": linkedObjectsIds,
        "linkedObjectsFullLoaded": List<dynamic>.from(linkedObjectsFullLoaded.map((x) => x)),
        "canvas": canvas,
        "fk_projet": fkProjet,
        "ref": ref,
        "ref_ext": refExt,
        "country_id": countryId,
        "country_code": countryCode,
        "state_id": stateId,
        "region_id": regionId,
        "barcode_type_coder": barcodeTypeCoder,
        "last_main_doc": lastMainDoc,
        "note_public": notePublic,
        "note_private": notePrivate,
        "total_ht": totalHt,
        "total_tva": totalTva,
        "total_localtax1": totalLocaltax1,
        "total_localtax2": totalLocaltax2,
        "total_ttc": totalTtc,
        "date_validation": dateValidation,
        "date_cloture": dateCloture,
        "user_author": userAuthor,
        "user_creation": userCreation,
        "user_creation_id": userCreationId,
        "user_valid": userValid,
        "user_validation": userValidation,
        "user_validation_id": userValidationId,
        "user_closing_id": userClosingId,
        "user_modification": userModification,
        "user_modification_id": userModificationId,
        "specimen": specimen,
        "duration": duration,
    };
}
