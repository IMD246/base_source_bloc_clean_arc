import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required int id,
    required String name,
    required String logo,
    String? banner,
    String? description,
    String? address,
    String? phone,
    String? email,
  }) = _Company;
}

enum CompanyType {
  startup,
  smallOrMedium,
  enterprise,
  govermentAgency,
  univercity,
  incubatorOrAccelerator,
  municipalityOrMetro,
}

extension CompanyTypeExt on CompanyType {
  int get value {
    switch (this) {
      case CompanyType.startup:
        return 1;
      case CompanyType.smallOrMedium:
        return 2;
      case CompanyType.enterprise:
        return 3;
      case CompanyType.govermentAgency:
        return 4;
      case CompanyType.univercity:
        return 5;
      case CompanyType.incubatorOrAccelerator:
        return 6;
      case CompanyType.municipalityOrMetro:
        return 7;
      default:
        return 0;
    }
  }

  String get displayName {
    switch (this) {
      case CompanyType.startup:
        return 'Startup';
      case CompanyType.smallOrMedium:
        return 'Small / Medium Enterprise';
      case CompanyType.enterprise:
        return 'Enterprise';
      case CompanyType.govermentAgency:
        return 'Goverment Agency';
      case CompanyType.univercity:
        return 'Univercity or College';
      case CompanyType.incubatorOrAccelerator:
        return 'Bussiness Incubator or Accelerator';
      case CompanyType.municipalityOrMetro:
        return 'Municipality or Metro';
      default:
        return '';
    }
  }
}

enum ProductType { product, service }

extension ProductTypeExt on ProductType {
  int get value {
    switch (this) {
      case ProductType.product:
        return 1;
      case ProductType.service:
        return 2;
      default:
        return 0;
    }
  }

  String get displayName {
    switch (this) {
      case ProductType.product:
        return 'Product';
      case ProductType.service:
        return 'Service';
      default:
        return '';
    }
  }
}
