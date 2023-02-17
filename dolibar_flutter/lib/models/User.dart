// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        required this.id,
        required this.statut,
        required this.employee,
        this.civilityCode,
        required this.gender,
        required this.birth,
        required this.email,
        this.personalEmail,
        required this.socialnetworks,
        required this.job,
        required this.signature,
        required this.address,
        required this.zip,
        required this.town,
        this.stateId,
        required this.officePhone,
        required this.officeFax,
        required this.userMobile,
        this.personalMobile,
        required this.admin,
        required this.login,
        required this.entity,
        required this.datec,
        required this.datem,
        this.socid,
        this.contactId,
        this.fkMember,
        this.fkUser,
        this.fkUserExpenseValidator,
        this.fkUserHolidayValidator,
        this.clicktodialUrl,
        this.clicktodialLogin,
        this.clicktodialPoste,
        required this.datelastlogin,
        required this.datepreviouslogin,
        this.iplastlogin,
        this.ippreviouslogin,
        required this.datestartvalidity,
        required this.dateendvalidity,
        this.photo,
        this.lang,
        required this.rights,
        this.userGroupList,
        required this.conf,
        required this.users,
        this.parentof,
        required this.accountancyCode,
        this.thm,
        this.tjm,
        this.salary,
        this.salaryextra,
        this.weeklyhours,
        required this.color,
        required this.dateemployment,
        required this.dateemploymentend,
        this.defaultCExpTaxCat,
        this.refEmployee,
        this.nationalRegistrationNumber,
        this.defaultRange,
        this.fkWarehouse,
        required this.validateFieldsErrors,
        this.importKey,
        required this.arrayOptions,
        this.arrayLanguages,
        this.contactsIds,
        this.linkedObjects,
        this.linkedObjectsIds,
        required this.linkedObjectsFullLoaded,
        this.canvas,
        this.fkProject,
        this.fkProjet,
        this.user,
        this.origin,
        this.originId,
        required this.ref,
        this.refExt,
        this.status,
        this.countryId,
        required this.countryCode,
        this.regionId,
        this.barcodeType,
        this.barcodeTypeCoder,
        this.modeReglementId,
        this.condReglementId,
        this.demandReasonId,
        this.transportModeId,
        this.lastMainDoc,
        this.fkBank,
        this.fkAccount,
        this.notePublic,
        required this.notePrivate,
        this.name,
        required this.lastname,
        required this.firstname,
        this.civilityId,
        this.dateCreation,
        this.dateValidation,
        this.dateModification,
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
        required this.listeLimit,
    });

    String id;
    String statut;
    String employee;
    String? civilityCode;
    String gender;
    String birth;
    String email;
    String? personalEmail;
    List<dynamic> socialnetworks;
    String job;
    String signature;
    String address;
    String zip;
    String town;
    dynamic stateId;
    String officePhone;
    String officeFax;
    String userMobile;
    String? personalMobile;
    String admin;
    String login;
    String entity;
    int datec;
    int datem;
    dynamic socid;
    dynamic contactId;
    dynamic fkMember;
    String? fkUser;
    dynamic fkUserExpenseValidator;
    dynamic fkUserHolidayValidator;
    dynamic clicktodialUrl;
    dynamic clicktodialLogin;
    dynamic clicktodialPoste;
    dynamic datelastlogin;
    dynamic datepreviouslogin;
    String? iplastlogin;
    String? ippreviouslogin;
    String datestartvalidity;
    String dateendvalidity;
    dynamic photo;
    dynamic lang;
    Rights rights;
    dynamic userGroupList;
    Conf conf;
    List<dynamic> users;
    dynamic parentof;
    String accountancyCode;
    dynamic thm;
    dynamic tjm;
    dynamic salary;
    dynamic salaryextra;
    dynamic weeklyhours;
    String color;
    String dateemployment;
    String dateemploymentend;
    dynamic defaultCExpTaxCat;
    String? refEmployee;
    String? nationalRegistrationNumber;
    dynamic defaultRange;
    dynamic fkWarehouse;
    List<dynamic> validateFieldsErrors;
    dynamic importKey;
    List<dynamic> arrayOptions;
    dynamic arrayLanguages;
    dynamic contactsIds;
    dynamic linkedObjects;
    dynamic linkedObjectsIds;
    List<dynamic> linkedObjectsFullLoaded;
    dynamic canvas;
    dynamic fkProject;
    dynamic fkProjet;
    dynamic user;
    dynamic origin;
    dynamic originId;
    String ref;
    dynamic refExt;
    dynamic status;
    dynamic countryId;
    String countryCode;
    dynamic regionId;
    dynamic barcodeType;
    dynamic barcodeTypeCoder;
    dynamic modeReglementId;
    dynamic condReglementId;
    dynamic demandReasonId;
    dynamic transportModeId;
    dynamic lastMainDoc;
    dynamic fkBank;
    dynamic fkAccount;
    String? notePublic;
    String notePrivate;
    dynamic name;
    String lastname;
    String firstname;
    dynamic civilityId;
    dynamic dateCreation;
    dynamic dateValidation;
    dynamic dateModification;
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
    int listeLimit;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        statut: json["statut"],
        employee: json["employee"],
        civilityCode: json["civility_code"],
        gender: json["gender"],
        birth: json["birth"],
        email: json["email"],
        personalEmail: json["personal_email"],
        socialnetworks: List<dynamic>.from(json["socialnetworks"].map((x) => x)),
        job: json["job"],
        signature: json["signature"],
        address: json["address"],
        zip: json["zip"],
        town: json["town"],
        stateId: json["state_id"],
        officePhone: json["office_phone"],
        officeFax: json["office_fax"],
        userMobile: json["user_mobile"],
        personalMobile: json["personal_mobile"],
        admin: json["admin"],
        login: json["login"],
        entity: json["entity"],
        datec: json["datec"],
        datem: json["datem"],
        socid: json["socid"],
        contactId: json["contact_id"],
        fkMember: json["fk_member"],
        fkUser: json["fk_user"],
        fkUserExpenseValidator: json["fk_user_expense_validator"],
        fkUserHolidayValidator: json["fk_user_holiday_validator"],
        clicktodialUrl: json["clicktodial_url"],
        clicktodialLogin: json["clicktodial_login"],
        clicktodialPoste: json["clicktodial_poste"],
        datelastlogin: json["datelastlogin"],
        datepreviouslogin: json["datepreviouslogin"],
        iplastlogin: json["iplastlogin"],
        ippreviouslogin: json["ippreviouslogin"],
        datestartvalidity: json["datestartvalidity"],
        dateendvalidity: json["dateendvalidity"],
        photo: json["photo"],
        lang: json["lang"],
        rights: Rights.fromJson(json["rights"]),
        userGroupList: json["user_group_list"],
        conf: Conf.fromJson(json["conf"]),
        users: List<dynamic>.from(json["users"].map((x) => x)),
        parentof: json["parentof"],
        accountancyCode: json["accountancy_code"],
        thm: json["thm"],
        tjm: json["tjm"],
        salary: json["salary"],
        salaryextra: json["salaryextra"],
        weeklyhours: json["weeklyhours"],
        color: json["color"],
        dateemployment: json["dateemployment"],
        dateemploymentend: json["dateemploymentend"],
        defaultCExpTaxCat: json["default_c_exp_tax_cat"],
        refEmployee: json["ref_employee"],
        nationalRegistrationNumber: json["national_registration_number"],
        defaultRange: json["default_range"],
        fkWarehouse: json["fk_warehouse"],
        validateFieldsErrors: List<dynamic>.from(json["validateFieldsErrors"].map((x) => x)),
        importKey: json["import_key"],
        arrayOptions: List<dynamic>.from(json["array_options"].map((x) => x)),
        arrayLanguages: json["array_languages"],
        contactsIds: json["contacts_ids"],
        linkedObjects: json["linked_objects"],
        linkedObjectsIds: json["linkedObjectsIds"],
        linkedObjectsFullLoaded: List<dynamic>.from(json["linkedObjectsFullLoaded"].map((x) => x)),
        canvas: json["canvas"],
        fkProject: json["fk_project"],
        fkProjet: json["fk_projet"],
        user: json["user"],
        origin: json["origin"],
        originId: json["origin_id"],
        ref: json["ref"],
        refExt: json["ref_ext"],
        status: json["status"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        regionId: json["region_id"],
        barcodeType: json["barcode_type"],
        barcodeTypeCoder: json["barcode_type_coder"],
        modeReglementId: json["mode_reglement_id"],
        condReglementId: json["cond_reglement_id"],
        demandReasonId: json["demand_reason_id"],
        transportModeId: json["transport_mode_id"],
        lastMainDoc: json["last_main_doc"],
        fkBank: json["fk_bank"],
        fkAccount: json["fk_account"],
        notePublic: json["note_public"],
        notePrivate: json["note_private"],
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
        userValid: json["user_valid"],
        userValidation: json["user_validation"],
        userValidationId: json["user_validation_id"],
        userClosingId: json["user_closing_id"],
        userModification: json["user_modification"],
        userModificationId: json["user_modification_id"],
        specimen: json["specimen"],
        listeLimit: json["liste_limit"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "statut": statut,
        "employee": employee,
        "civility_code": civilityCode,
        "gender": gender,
        "birth": birth,
        "email": email,
        "personal_email": personalEmail,
        "socialnetworks": List<dynamic>.from(socialnetworks.map((x) => x)),
        "job": job,
        "signature": signature,
        "address": address,
        "zip": zip,
        "town": town,
        "state_id": stateId,
        "office_phone": officePhone,
        "office_fax": officeFax,
        "user_mobile": userMobile,
        "personal_mobile": personalMobile,
        "admin": admin,
        "login": login,
        "entity": entity,
        "datec": datec,
        "datem": datem,
        "socid": socid,
        "contact_id": contactId,
        "fk_member": fkMember,
        "fk_user": fkUser,
        "fk_user_expense_validator": fkUserExpenseValidator,
        "fk_user_holiday_validator": fkUserHolidayValidator,
        "clicktodial_url": clicktodialUrl,
        "clicktodial_login": clicktodialLogin,
        "clicktodial_poste": clicktodialPoste,
        "datelastlogin": datelastlogin,
        "datepreviouslogin": datepreviouslogin,
        "iplastlogin": iplastlogin,
        "ippreviouslogin": ippreviouslogin,
        "datestartvalidity": datestartvalidity,
        "dateendvalidity": dateendvalidity,
        "photo": photo,
        "lang": lang,
        "rights": rights.toJson(),
        "user_group_list": userGroupList,
        "conf": conf.toJson(),
        "users": List<dynamic>.from(users.map((x) => x)),
        "parentof": parentof,
        "accountancy_code": accountancyCode,
        "thm": thm,
        "tjm": tjm,
        "salary": salary,
        "salaryextra": salaryextra,
        "weeklyhours": weeklyhours,
        "color": color,
        "dateemployment": dateemployment,
        "dateemploymentend": dateemploymentend,
        "default_c_exp_tax_cat": defaultCExpTaxCat,
        "ref_employee": refEmployee,
        "national_registration_number": nationalRegistrationNumber,
        "default_range": defaultRange,
        "fk_warehouse": fkWarehouse,
        "validateFieldsErrors": List<dynamic>.from(validateFieldsErrors.map((x) => x)),
        "import_key": importKey,
        "array_options": List<dynamic>.from(arrayOptions.map((x) => x)),
        "array_languages": arrayLanguages,
        "contacts_ids": contactsIds,
        "linked_objects": linkedObjects,
        "linkedObjectsIds": linkedObjectsIds,
        "linkedObjectsFullLoaded": List<dynamic>.from(linkedObjectsFullLoaded.map((x) => x)),
        "canvas": canvas,
        "fk_project": fkProject,
        "fk_projet": fkProjet,
        "user": user,
        "origin": origin,
        "origin_id": originId,
        "ref": ref,
        "ref_ext": refExt,
        "status": status,
        "country_id": countryId,
        "country_code": countryCode,
        "region_id": regionId,
        "barcode_type": barcodeType,
        "barcode_type_coder": barcodeTypeCoder,
        "mode_reglement_id": modeReglementId,
        "cond_reglement_id": condReglementId,
        "demand_reason_id": demandReasonId,
        "transport_mode_id": transportModeId,
        "last_main_doc": lastMainDoc,
        "fk_bank": fkBank,
        "fk_account": fkAccount,
        "note_public": notePublic,
        "note_private": notePrivate,
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
        "user_valid": userValid,
        "user_validation": userValidation,
        "user_validation_id": userValidationId,
        "user_closing_id": userClosingId,
        "user_modification": userModification,
        "user_modification_id": userModificationId,
        "specimen": specimen,
        "liste_limit": listeLimit,
    };
}

class Conf {
    Conf();

    factory Conf.fromJson(Map<String, dynamic> json) => Conf(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Rights {
    Rights({
        required this.user,
    });

    UserClass user;

    factory Rights.fromJson(Map<String, dynamic> json) => Rights(
        user: UserClass.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
    };
}

class UserClass {
    UserClass({
        required this.user,
        required this.self,
        required this.userAdvance,
        required this.selfAdvance,
        required this.groupAdvance,
    });

    Conf user;
    Conf self;
    Conf userAdvance;
    Conf selfAdvance;
    Conf groupAdvance;

    factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        user: Conf.fromJson(json["user"]),
        self: Conf.fromJson(json["self"]),
        userAdvance: Conf.fromJson(json["user_advance"]),
        selfAdvance: Conf.fromJson(json["self_advance"]),
        groupAdvance: Conf.fromJson(json["group_advance"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "self": self.toJson(),
        "user_advance": userAdvance.toJson(),
        "self_advance": selfAdvance.toJson(),
        "group_advance": groupAdvance.toJson(),
    };
}
