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

  static List<Map<dynamic, dynamic>> vendorData = [
    {
      'id': 3,
      'name': 'Masala Dosa',
      'hotelName': 'Hotel and Restaurant Aryaas',
      'hotelDescription':
          "Hotel Aryas offers a blend of luxury and comfort in the heart of the city, boasting meticulously designed rooms and suites. Indulge in culinary delights at our signature restaurant and unwind by the rooftop pool with stunning views. Experience impeccable hospitality and personalized service throughout your stay at Hotel Aryas.",
      'hotelImage':
          'https://b.zmtcdn.com/data/pictures/2/901122/c0a316761fcb734b18814d1f9c315dce.jpg',
      'location': 'Chennai',
      'rating': 4.4,
      'images': [
        {
          "pro_images":
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Deluxe Burger",
          "product_price": "129.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Supreme Pizza",
          "product_price": "135.50"
        },
        {
          "pro_images":
              "https://imgs.search.brave.com/fscJ6rRQvIT-EA01rDMAeGmZ0EqBWs5D0_tXcZuhN7c/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc3F1YXJlc3Bh/Y2UtY2RuLmNvbS9j/b250ZW50L3YxLzUw/MjEyODcwODRhZTk1/NGVmZDMxZTlmNC8x/NTc0OTI0OTMyNTM5/LVBQU0Y2VFA2M08w/WERPRks5MTRSL1By/ZW1pdW0rTWFndXJv/LmpwZw",
          "product_name": "Premium Sushi Platter",
          "product_price": "150.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/983373/pexels-photo-983373.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Gourmet Pasta",
          "product_price": "111.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1059946/pexels-photo-1059946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Exotic Salad Bowl",
          "product_price": "108.50"
        }
      ]
    },
    {
      'id': 3,
      'name': 'Masala Dosa',
      'hotelName': 'Saravana Bhavan',
      'hotelDescription':
          "Saravana Bhavan invites you to savor the authentic flavors of South Indian cuisine in a vibrant and welcoming atmosphere. With a dedication to culinary traditions, every dish is crafted to perfection, ensuring a memorable dining experience",
      'hotelImage':
          'https://media-cdn.tripadvisor.com/media/photo-s/1a/1a/08/67/saravana-bhavan.jpg',
      'location': 'Chennai',
      'rating': 4.4,
      'images': [
        {
          "pro_images":
              "https://images.pexels.com/photos/2141993/pexels-photo-2141993.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Gourmet Steak",
          "product_price": "149.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/2646019/pexels-photo-2646019.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Decadent Chocolate Cake",
          "product_price": "119.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1633574/pexels-photo-1633574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Lobster Thermidor",
          "product_price": "179.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/2365598/pexels-photo-2365598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Truffle Risotto",
          "product_price": "130.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1398836/pexels-photo-1398836.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Prime Rib",
          "product_price": "159.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/2098704/pexels-photo-2098704.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Exotic Fruit Platter",
          "product_price": "110.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1559019/pexels-photo-1559019.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Filet Mignon",
          "product_price": "145.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Caviar",
          "product_price": "299.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Luxury Burger",
          "product_price": "129.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1639790/pexels-photo-1639790.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Molten Lava Cake",
          "product_price": "115.50"
        }
      ]
    },
    {
      'id': 3,
      'name': 'Masala Dosa',
      'hotelName': 'Royal Gardens Resort',
      'hotelDescription':
          "Escape to Royal Gardens Resort, where lush greenery meets unparalleled luxury. Immerse yourself in the tranquility of our sprawling gardens and unwind in elegantly appointed rooms and suites. Indulge in gourmet dining and rejuvenate at our spa, promising an unforgettable retreat.",
      'hotelImage':
          'https://b.zmtcdn.com/data/pictures/4/900844/38f49e4218803f0d328a22d0f3bf3452.jpg',
      'location': 'Chennai',
      'rating': 4.4,
      'images': [
        {
          "pro_images":
              "https://images.pexels.com/photos/262945/pexels-photo-262945.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Grilled Steak",
          "product_price": "120.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/616354/pexels-photo-616354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Seafood Platter",
          "product_price": "155.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/3609730/pexels-photo-3609730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Tiramisu",
          "product_price": "110.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/373464/pexels-photo-373464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Lobster Thermidor",
          "product_price": "175.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/819360/pexels-photo-819360.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Truffle Risotto",
          "product_price": "130.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/982612/pexels-photo-982612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Prime Rib",
          "product_price": "145.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/884612/pexels-photo-884612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Foie Gras",
          "product_price": "180.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/3845415/pexels-photo-3845415.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Filet Mignon",
          "product_price": "190.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1244521/pexels-photo-1244521.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Caviar",
          "product_price": "500.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/860733/pexels-photo-860733.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Wagyu Beef",
          "product_price": "350.99"
        }
      ]
    },
    {
      'id': 3,
      'name': 'Masala Dosa',
      'hotelName': 'Seaside Haven Hotel',
      'hotelDescription':
          "Seaside Haven Hotel offers a picturesque getaway by the ocean, with breathtaking views and serene ambiance. Relax in our comfortable accommodations and savor fresh, coastal-inspired cuisine at our seaside restaurant. Whether it's a romantic escape or a family vacation, create cherished memories at Seaside Haven Hotel.",
      'hotelImage':
          'https://b.zmtcdn.com/data/pictures/0/19759030/8d4d8715b0605c2dd7b805bbfc28c002.jpg?fit=around|960:500&crop=960:500;*,*',
      'location': 'Chennai',
      'rating': 4.4,
      'images': [
        {
          "pro_images":
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Premium Steak",
          "product_price": "159.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Lobster Thermidor",
          "product_price": "179.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/2290072/pexels-photo-2290072.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Truffle Risotto",
          "product_price": "145.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/983373/pexels-photo-983373.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Gourmet Seafood Platter",
          "product_price": "199.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1059946/pexels-photo-1059946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Caviar Dreams",
          "product_price": "299.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Decadent Chocolate Cake",
          "product_price": "129.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Filet Mignon",
          "product_price": "189.50"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/2290072/pexels-photo-2290072.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Luxurious Foie Gras",
          "product_price": "175.75"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/983373/pexels-photo-983373.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Exquisite Truffle Pasta",
          "product_price": "159.99"
        },
        {
          "pro_images":
              "https://images.pexels.com/photos/1059946/pexels-photo-1059946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          "product_name": "Deluxe Seafood Paella",
          "product_price": "229.50"
        }
      ]
    },
  ];
}
