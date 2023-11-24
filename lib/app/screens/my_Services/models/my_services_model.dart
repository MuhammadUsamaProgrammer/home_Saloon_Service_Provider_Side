class MyServicesModel {
  final String serviceName;
  final String serviceType;
  final String image;
  final double price;
  final int numberOfSlote;
  final String details;
  List<String> inclusedService;
  MyServicesModel({
    required this.serviceName,
    required this.serviceType,
    required this.image,
    required this.price,
    required this.numberOfSlote,
    required this.details,
    required this.inclusedService,
  });
}
