import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/my_Services/models/my_services_model.dart';
import 'package:home_saloon/app/core/resources/images/images_Path.dart';

class MyServicesProvider extends ChangeNotifier {
  List<MyServicesModel> myServicesModel = [
    // Hair Styling and Coloring
    MyServicesModel(
      serviceName: 'Hair Styling and Coloring',
      serviceType: 'Haircut and Styling',
      image: MyImagesPath.onBoarding_3,
      price: 3999.0,
      numberOfSlote: 1,
      details: 'Details for Haircut and Styling',
      inclusedService: [
        'Blowout',
        'Hair Coloring',
        'Hair Extensions',
        'Head Massage'
      ],
    ),
    // Manicure and Pedicure
    MyServicesModel(
      serviceName: 'Manicure and Pedicure',
      serviceType: 'Basic Manicure',
      image: MyImagesPath.onBoarding_3,
      price: 2499.0,
      numberOfSlote: 8,
      details: 'Details for Basic Manicure',
      inclusedService: [
        'Gel Manicure',
        'Basic Pedicure',
        'Spa Pedicure',
        'Massage'
      ],
    ),
    // Facial Treatments
    MyServicesModel(
      serviceName: 'Facial Treatments',
      serviceType: 'Basic Facial',
      image: MyImagesPath.onBoarding_3,
      price: 5999.0,
      numberOfSlote: 8,
      details: 'Details for Basic Facial',
      inclusedService: [
        'Anti-Aging Facial',
        'Acne Treatment Facial',
        'Hydrating Facial',
        'Relaxation facial',
      ],
    ),
    // Waxing Services
    MyServicesModel(
      serviceName: 'Waxing Services',
      serviceType: 'Full Body Waxing',
      image: MyImagesPath.onBoarding_3,
      price: 3499.0,
      numberOfSlote: 8,
      details: 'Details for Full Body Waxing',
      inclusedService: [
        'Eyebrow Waxing',
        'Full Body Massage',
        'Hollywood wax',
        'Leg wax',
        'Arm wax',
      ],
    ),
  ];
}
