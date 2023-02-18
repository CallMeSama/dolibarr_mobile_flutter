// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'dart:convert';

List<Order> orderFromJson(String str) => List<Order>.from(json.decode(str).map((x) => Order.fromJson(x)));

String orderToJson(List<Order> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Order {
    Order({
        required this.socid,
        this.refClient,
        this.contactid,
        required this.statut,
        required this.billed,
        required this.brouillon,
        this.condReglementCode,
        this.depositPercent,
        this.fkAccount,
        this.modeReglementId,
        this.modeReglementCode,
        this.availabilityId,
        this.availabilityCode,
        this.availability,
        this.demandReasonId,
        this.demandReasonCode,
        required this.date,
        required this.dateCommande,
        required this.dateLivraison,
        required this.deliveryDate,
        this.fkRemiseExcept,
        required this.remisePercent,
        this.remiseAbsolue,
        this.infoBits,
        this.rang,
        this.specialCode,
        this.source,
        this.warehouseId,
        required this.extraparams,
        required this.linkedObjects,
        required this.userAuthorId,
        this.userValid,
        required this.lines,
        required this.fkMulticurrency,
        required this.multicurrencyCode,
        required this.multicurrencyTx,
        required this.multicurrencyTotalHt,
        required this.multicurrencyTotalTva,
        required this.multicurrencyTotalTtc,
        this.moduleSource,
        this.posSource,
        this.expeditions,
        required this.onlinePaymentUrl,
        required this.id,
        required this.entity,
        required this.validateFieldsErrors,
        this.importKey,
        required this.arrayOptions,
        this.arrayLanguages,
        required this.contactsIds,
        this.linkedObjectsIds,
        required this.linkedObjectsFullLoaded,
        this.canvas,
        this.fkProject,
        this.fkProjet,
        this.contactId,
        this.user,
        this.origin,
        this.originId,
        required this.ref,
        this.refExt,
        required this.status,
        this.countryId,
        this.countryCode,
        this.stateId,
        this.regionId,
        this.condReglementId,
        this.transportModeId,
        this.shippingMethodId,
        required this.modelPdf,
        this.lastMainDoc,
        this.fkBank,
        required this.notePublic,
        required this.notePrivate,
        required this.totalHt,
        required this.totalTva,
        required this.totalLocaltax1,
        required this.totalLocaltax2,
        required this.totalTtc,
        this.name,
        this.lastname,
        this.firstname,
        this.civilityId,
        required this.dateCreation,
        required this.dateValidation,
        required this.dateModification,
        this.dateCloture,
        this.userAuthor,
        this.userCreation,
        required this.userCreationId,
        this.userValidation,
        this.userValidationId,
        this.userClosingId,
        this.userModification,
        this.userModificationId,
        required this.specimen,
        required this.fkIncoterms,
        this.labelIncoterms,
        required this.locationIncoterms,
        this.refCustomer,
        required this.remise,
        this.condReglementDoc,
    });

    String socid;
    dynamic refClient;
    dynamic contactid;
    String statut;
    String billed;
    int brouillon;
    dynamic condReglementCode;
    dynamic depositPercent;
    dynamic fkAccount;
    dynamic modeReglementId;
    dynamic modeReglementCode;
    dynamic availabilityId;
    dynamic availabilityCode;
    dynamic availability;
    dynamic demandReasonId;
    dynamic demandReasonCode;
    int date;
    int dateCommande;
    String dateLivraison;
    String deliveryDate;
    dynamic fkRemiseExcept;
    String remisePercent;
    dynamic remiseAbsolue;
    dynamic infoBits;
    dynamic rang;
    dynamic specialCode;
    dynamic source;
    dynamic warehouseId;
    List<dynamic> extraparams;
    List<dynamic> linkedObjects;
    String userAuthorId;
    dynamic userValid;
    List<dynamic> lines;
    String fkMulticurrency;
    String multicurrencyCode;
    String multicurrencyTx;
    String multicurrencyTotalHt;
    String multicurrencyTotalTva;
    String multicurrencyTotalTtc;
    dynamic moduleSource;
    dynamic posSource;
    dynamic expeditions;
    String onlinePaymentUrl;
    String id;
    String entity;
    List<dynamic> validateFieldsErrors;
    dynamic importKey;
    List<dynamic> arrayOptions;
    dynamic arrayLanguages;
    List<dynamic> contactsIds;
    dynamic linkedObjectsIds;
    List<dynamic> linkedObjectsFullLoaded;
    dynamic canvas;
    dynamic fkProject;
    dynamic fkProjet;
    dynamic contactId;
    dynamic user;
    dynamic origin;
    dynamic originId;
    String ref;
    dynamic refExt;
    String status;
    dynamic countryId;
    dynamic countryCode;
    dynamic stateId;
    dynamic regionId;
    dynamic condReglementId;
    dynamic transportModeId;
    dynamic shippingMethodId;
    String modelPdf;
    dynamic lastMainDoc;
    dynamic fkBank;
    String notePublic;
    String notePrivate;
    String totalHt;
    String totalTva;
    String totalLocaltax1;
    String totalLocaltax2;
    String totalTtc;
    dynamic name;
    dynamic lastname;
    dynamic firstname;
    dynamic civilityId;
    int dateCreation;
    String dateValidation;
    int dateModification;
    dynamic dateCloture;
    dynamic userAuthor;
    dynamic userCreation;
    String userCreationId;
    dynamic userValidation;
    dynamic userValidationId;
    dynamic userClosingId;
    dynamic userModification;
    dynamic userModificationId;
    int specimen;
    String fkIncoterms;
    dynamic labelIncoterms;
    String locationIncoterms;
    dynamic refCustomer;
    String remise;
    dynamic condReglementDoc;

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        socid: json["socid"],
        refClient: json["ref_client"],
        contactid: json["contactid"],
        statut: json["statut"],
        billed: json["billed"],
        brouillon: json["brouillon"],
        condReglementCode: json["cond_reglement_code"],
        depositPercent: json["deposit_percent"],
        fkAccount: json["fk_account"],
        modeReglementId: json["mode_reglement_id"],
        modeReglementCode: json["mode_reglement_code"],
        availabilityId: json["availability_id"],
        availabilityCode: json["availability_code"],
        availability: json["availability"],
        demandReasonId: json["demand_reason_id"],
        demandReasonCode: json["demand_reason_code"],
        date: json["date"],
        dateCommande: json["date_commande"],
        dateLivraison: json["date_livraison"],
        deliveryDate: json["delivery_date"],
        fkRemiseExcept: json["fk_remise_except"],
        remisePercent: json["remise_percent"],
        remiseAbsolue: json["remise_absolue"],
        infoBits: json["info_bits"],
        rang: json["rang"],
        specialCode: json["special_code"],
        source: json["source"],
        warehouseId: json["warehouse_id"],
        extraparams: List<dynamic>.from(json["extraparams"].map((x) => x)),
        linkedObjects: List<dynamic>.from(json["linked_objects"].map((x) => x)),
        userAuthorId: json["user_author_id"],
        userValid: json["user_valid"],
        lines: List<dynamic>.from(json["lines"].map((x) => x)),
        fkMulticurrency: json["fk_multicurrency"],
        multicurrencyCode: json["multicurrency_code"],
        multicurrencyTx: json["multicurrency_tx"],
        multicurrencyTotalHt: json["multicurrency_total_ht"],
        multicurrencyTotalTva: json["multicurrency_total_tva"],
        multicurrencyTotalTtc: json["multicurrency_total_ttc"],
        moduleSource: json["module_source"],
        posSource: json["pos_source"],
        expeditions: json["expeditions"],
        onlinePaymentUrl: json["online_payment_url"],
        id: json["id"],
        entity: json["entity"],
        validateFieldsErrors: List<dynamic>.from(json["validateFieldsErrors"].map((x) => x)),
        importKey: json["import_key"],
        arrayOptions: List<dynamic>.from(json["array_options"].map((x) => x)),
        arrayLanguages: json["array_languages"],
        contactsIds: List<dynamic>.from(json["contacts_ids"].map((x) => x)),
        linkedObjectsIds: json["linkedObjectsIds"],
        linkedObjectsFullLoaded: List<dynamic>.from(json["linkedObjectsFullLoaded"].map((x) => x)),
        canvas: json["canvas"],
        fkProject: json["fk_project"],
        fkProjet: json["fk_projet"],
        contactId: json["contact_id"],
        user: json["user"],
        origin: json["origin"],
        originId: json["origin_id"],
        ref: json["ref"],
        refExt: json["ref_ext"],
        status: json["status"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        stateId: json["state_id"],
        regionId: json["region_id"],
        condReglementId: json["cond_reglement_id"],
        transportModeId: json["transport_mode_id"],
        shippingMethodId: json["shipping_method_id"],
        modelPdf: json["model_pdf"],
        lastMainDoc: json["last_main_doc"],
        fkBank: json["fk_bank"],
        notePublic: json["note_public"],
        notePrivate: json["note_private"],
        totalHt: json["total_ht"],
        totalTva: json["total_tva"],
        totalLocaltax1: json["total_localtax1"],
        totalLocaltax2: json["total_localtax2"],
        totalTtc: json["total_ttc"],
        name: json["name"],
        lastname: json["lastname"],
        firstname: json["firstname"],
        civilityId: json["civility_id"],
        dateCreation: json["date_creation"],
        dateValidation: json["date_validation"],
        dateModification: json["date_modification"],
        dateCloture: json["date_cloture"],
        userAuthor: json["user_author"],
        userCreation: json["user_creation"],
        userCreationId: json["user_creation_id"],
        userValidation: json["user_validation"],
        userValidationId: json["user_validation_id"],
        userClosingId: json["user_closing_id"],
        userModification: json["user_modification"],
        userModificationId: json["user_modification_id"],
        specimen: json["specimen"],
        fkIncoterms: json["fk_incoterms"],
        labelIncoterms: json["label_incoterms"],
        locationIncoterms: json["location_incoterms"],
        refCustomer: json["ref_customer"],
        remise: json["remise"],
        condReglementDoc: json["cond_reglement_doc"],
    );

    Map<String, dynamic> toJson() => {
        "socid": socid,
        "ref_client": refClient,
        "contactid": contactid,
        "statut": statut,
        "billed": billed,
        "brouillon": brouillon,
        "cond_reglement_code": condReglementCode,
        "deposit_percent": depositPercent,
        "fk_account": fkAccount,
        "mode_reglement_id": modeReglementId,
        "mode_reglement_code": modeReglementCode,
        "availability_id": availabilityId,
        "availability_code": availabilityCode,
        "availability": availability,
        "demand_reason_id": demandReasonId,
        "demand_reason_code": demandReasonCode,
        "date": date,
        "date_commande": dateCommande,
        "date_livraison": dateLivraison,
        "delivery_date": deliveryDate,
        "fk_remise_except": fkRemiseExcept,
        "remise_percent": remisePercent,
        "remise_absolue": remiseAbsolue,
        "info_bits": infoBits,
        "rang": rang,
        "special_code": specialCode,
        "source": source,
        "warehouse_id": warehouseId,
        "extraparams": List<dynamic>.from(extraparams.map((x) => x)),
        "linked_objects": List<dynamic>.from(linkedObjects.map((x) => x)),
        "user_author_id": userAuthorId,
        "user_valid": userValid,
        "lines": List<dynamic>.from(lines.map((x) => x)),
        "fk_multicurrency": fkMulticurrency,
        "multicurrency_code": multicurrencyCode,
        "multicurrency_tx": multicurrencyTx,
        "multicurrency_total_ht": multicurrencyTotalHt,
        "multicurrency_total_tva": multicurrencyTotalTva,
        "multicurrency_total_ttc": multicurrencyTotalTtc,
        "module_source": moduleSource,
        "pos_source": posSource,
        "expeditions": expeditions,
        "online_payment_url": onlinePaymentUrl,
        "id": id,
        "entity": entity,
        "validateFieldsErrors": List<dynamic>.from(validateFieldsErrors.map((x) => x)),
        "import_key": importKey,
        "array_options": List<dynamic>.from(arrayOptions.map((x) => x)),
        "array_languages": arrayLanguages,
        "contacts_ids": List<dynamic>.from(contactsIds.map((x) => x)),
        "linkedObjectsIds": linkedObjectsIds,
        "linkedObjectsFullLoaded": List<dynamic>.from(linkedObjectsFullLoaded.map((x) => x)),
        "canvas": canvas,
        "fk_project": fkProject,
        "fk_projet": fkProjet,
        "contact_id": contactId,
        "user": user,
        "origin": origin,
        "origin_id": originId,
        "ref": ref,
        "ref_ext": refExt,
        "status": status,
        "country_id": countryId,
        "country_code": countryCode,
        "state_id": stateId,
        "region_id": regionId,
        "cond_reglement_id": condReglementId,
        "transport_mode_id": transportModeId,
        "shipping_method_id": shippingMethodId,
        "model_pdf": modelPdf,
        "last_main_doc": lastMainDoc,
        "fk_bank": fkBank,
        "note_public": notePublic,
        "note_private": notePrivate,
        "total_ht": totalHt,
        "total_tva": totalTva,
        "total_localtax1": totalLocaltax1,
        "total_localtax2": totalLocaltax2,
        "total_ttc": totalTtc,
        "name": name,
        "lastname": lastname,
        "firstname": firstname,
        "civility_id": civilityId,
        "date_creation": dateCreation,
        "date_validation": dateValidation,
        "date_modification": dateModification,
        "date_cloture": dateCloture,
        "user_author": userAuthor,
        "user_creation": userCreation,
        "user_creation_id": userCreationId,
        "user_validation": userValidation,
        "user_validation_id": userValidationId,
        "user_closing_id": userClosingId,
        "user_modification": userModification,
        "user_modification_id": userModificationId,
        "specimen": specimen,
        "fk_incoterms": fkIncoterms,
        "label_incoterms": labelIncoterms,
        "location_incoterms": locationIncoterms,
        "ref_customer": refCustomer,
        "remise": remise,
        "cond_reglement_doc": condReglementDoc,
    };
}
