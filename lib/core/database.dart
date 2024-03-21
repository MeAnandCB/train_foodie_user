class DatabaseData {
  // default admin user and pass
  final String adminUser = 'admin';
  final String adminPass = 'Admin@123';

  // static List<Map<String, dynamic>> foodDummyData = [
  //   {
  //     'id': 1,
  //     'name': 'Puttu and Kadala Curry',
  //     'hotelName': 'Hotel Aryaas',
  //     'hotelDescription':
  //         'Renowned for authentic Kerala cuisine. Delight in the traditional flavors of Kerala at Hotel Aryaas, where every dish tells a story of rich heritage and culinary expertise.',
  //     'hotelImage':
  //         'https://images.pexels.com/photos/2344264/pexels-photo-2344264.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //     'location': 'Trivandrum',
  //     'rating': 4.5,
  //     'image': [
  //       'https://1.bp.blogspot.com/-JGyAE4ptLxM/YUstnJt39gI/AAAAAAAATxk/pLss1pRKDyspt6lO7P3y0xJruTReaRnuQCNcBGAsYHQ/s640/Kadala-Curry.JPG',
  //       'https://1.bp.blogspot.com/-JGyAE4ptLxM/YUstnJt39gI/AAAAAAAATxk/pLss1pRKDyspt6lO7P3y0xJruTReaRnuQCNcBGAsYHQ/s640/Stew-Appam.JPG',
  //       'https://1.bp.blogspot.com/-JGyAE4ptLxM/YUstnJt39gI/AAAAAAAATxk/pLss1pRKDyspt6lO7P3y0xJruTReaRnuQCNcBGAsYHQ/s640/Fish-Curry-Rice.JPG',
  //       'https://1.bp.blogspot.com/-JGyAE4ptLxM/YUstnJt39gI/AAAAAAAATxk/pLss1pRKDyspt6lO7P3y0xJruTReaRnuQCNcBGAsYHQ/s640/Thalassery-Biriyani.JPG',
  //       'https://1.bp.blogspot.com/-JGyAE4ptLxM/YUstnJt39gI/AAAAAAAATxk/pLss1pRKDyspt6lO7P3y0xJruTReaRnuQCNcBGAsYHQ/s640/Parotta-Chicken-Curry.JPG',
  //     ],
  //   },
  //   {
  //     'id': 2,
  //     'name': 'Dosa and Sambar',
  //     'hotelName': 'Hotel Sagar',
  //     'hotelDescription':
  //         'Famous for its South Indian delicacies. Experience the essence of South India with every bite at Hotel Sagar, where tradition meets innovation to create culinary masterpieces.',
  //     'hotelImage':
  //         'https://assets-global.website-files.com/5c6d6c45eaa55f57c6367749/65046bf150d1abb7e5911702_x-65046bcfdc4f0.webp',
  //     'location': 'Bangalore',
  //     'rating': 4.2,
  //     'image': [
  //       'https://images.pexels.com/photos/2565009/pexels-photo-2565009.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/1169150/pexels-photo-1169150.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/247685/pexels-photo-247685.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //     ]
  //   },
  //   {
  //     'id': 3,
  //     'name': 'Masala Dosa',
  //     'hotelName': 'Hotel Ruchi',
  //     'hotelDescription':
  //         'A perfect blend of spices and flavors. Indulge in the tantalizing taste of Masala Dosa at Hotel Ruchi, where every bite is a journey through the vibrant streets of Chennai.',
  //     'hotelImage':
  //         'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
  //     'location': 'Chennai',
  //     'rating': 4.4,
  //     'image': [
  //       'https://images.pexels.com/photos/189355/pexels-photo-189355.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/1356202/pexels-photo-1356202.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/2742027/pexels-photo-2742027.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/3663092/pexels-photo-3663092.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //       'https://images.pexels.com/photos/1481831/pexels-photo-1481831.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  //     ]
  //   },
  // ];
  static List<Map<String, dynamic>> userHistory = [];

  static List<String> trainNames = [
    'Rajdhani Express',
    'Shatabdi Express',
    'Duronto Express',
    'Garib Rath Express',
    'Humsafar Express',
    'Gatimaan Express',
    'Tejas Express',
    'Vande Bharat Express',
    'Antyodaya Express',
    'Uday Express'
  ];
  static List<String> stopNames = [
    'Station 1',
    'Station 2',
    'Station 3',
    'Station 4',
    'Station 5',
    'Station 6',
    'Station 7',
    'Station 8',
    'Station 9',
    'Station 10'
  ];

  static List<Map<String, dynamic>> usernames = [
    {
      'name': 'Arun Kumar',
      'email': 'john.doe@example.com',
      'gender': 'Male',
    },
    {
      'name': 'Deepa Nair',
      'email': 'jane.doe@example.com',
      'gender': 'Female',
    },
    {
      'name': 'Anjali Suresh',
      'email': 'alice.smith@example.com',
      'gender': 'Female',
    },
    {
      'name': 'Rahul Menon',
      'email': 'bob.johnson@example.com',
      'gender': 'Male',
    },
    {
      'name': 'Meera Pillai',
      'email': 'emma.brown@example.com',
      'gender': 'Female',
    },
    {
      'name': 'Sandeep Kumar',
      'email': 'michael.williams@example.com',
      'gender': 'Male',
    },
    {
      'name': 'Divya Nair',
      'email': 'olivia.jones@example.com',
      'gender': 'Female',
    },
    {
      'name': 'Vishnu Menon',
      'email': 'william.davis@example.com',
      'gender': 'Male',
    },
    {
      'name': 'Sneha Sreekumar',
      'email': 'sophia.wilson@example.com',
      'gender': 'Female',
    },
    {
      'name': 'Pranav Nair',
      'email': 'james.taylor@example.com',
      'gender': 'Male',
    },
  ];

  //vendor data

  static List<Map<dynamic, dynamic>> vendorData = [];
}
