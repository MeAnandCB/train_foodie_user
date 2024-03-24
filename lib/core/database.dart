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
    "Thiruvananthapuram Central",
    "Kollam Junction",
    "Kayamkulam Junction",
    "Chengannur",
    "Kottayam",
    "Ernakulam Junction (South)",
    "Thrissur",
    "Aluva",
    "Kozhikode (Calicut)",
    "Kannur Junction",
  ];
  static List<String> tamilNaduStations = [
    "Chennai Central",
    "Chennai Egmore",
    "Coimbatore Junction",
    "Madurai Junction",
    "Tiruchirappalli Junction",
    "Salem Junction",
    "Tirunelveli Junction",
    "Vellore Cantonment",
    "Tiruppur",
    "Erode Junction",
  ];
  static List<String> goaStations = [
    "Vasco da Gama Flutter",
    "Madgaon Junction Flutter",
    "Thivim Flutter",
    "Karmali Flutter",
    "Cansaulim Flutter",
    "Sanvordem Curchorem Flutter",
    "Pernem Flutter",
    "Canacona Flutter",
    "Dabolim Flutter",
    "Colva Flutter",
  ];
  static List<String> delhiStations = [
    "New Delhi",
    "Old Delhi Junction",
    "Hazrat Nizamuddin",
    "Anand Vihar Terminal",
    "Delhi Sarai Rohilla",
    "Delhi Cantt",
    "Shahdara Junction",
    "Okhla",
    "Ghaziabad Junction",
    "Faridabad",
  ];
  static List<String> gujaratStations = [
    "Ahmedabad Junction",
    "Vadodara Junction",
    "Surat",
    "Rajkot Junction",
    "Bhavnagar Terminus",
    "Jamnagar",
    "Junagadh Junction",
    "Bhuj",
    "Anand Junction",
    "Vapi",
  ];
  static List<String> rajasthanStations = [
    "Jaipur Junction",
    "Jodhpur Junction",
    "Ajmer Junction",
    "Udaipur City",
    "Bikaner Junction",
    "Kota Junction",
    "Alwar Junction",
    "Sikar Junction",
    "Bhilwara",
    "Falna",
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
              "https://www.foodandwine.com/thmb/nesQwmMJ6zA4Fb0TtAThMwdn56g=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/steakhouse-style-rib-eyes-ft-recipe1118-235f4532bcf948efa82aab8065bb98d8.jpg",
          "product_name": "Gourmet Steak",
          "product_price": "149.99"
        },
        {
          "pro_images":
              "https://www.modernhoney.com/wp-content/uploads/2024/01/Best-Chocolate-Cake-2-crop-scaled.jpg",
          "product_name": "Decadent Chocolate Cake",
          "product_price": "119.50"
        },
        {
          "pro_images":
              "https://littleferrarokitchen.com/wp-content/uploads/2012/05/Julia-Childs-Lobster-Thermidor.jpg",
          "product_name": "Lobster Thermidor",
          "product_price": "179.75"
        },
        {
          "pro_images":
              "https://www.lakeshorelady.com/wp-content/uploads/2021/02/mushroom-risotto-8.jpg",
          "product_name": "Truffle Risotto",
          "product_price": "130.99"
        },
        {
          "pro_images":
              "https://www.simplyrecipes.com/thmb/ca3Pl7UTi6LWnfpsfrtXIupPerc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2014__12__prime-rib-horiz-a-1600-14ea76a0cde84a699d30ac611fe11b0c.jpg",
          "product_name": "Prime Rib",
          "product_price": "159.50"
        },
        {
          "pro_images":
              "https://img.freepik.com/premium-photo/colorful-tropical-fruit-platter-with-slices-pineapple-watermelon-mango_925062-112.jpg",
          "product_name": "Exotic Fruit Platter",
          "product_price": "110.75"
        },
        {
          "pro_images":
              "https://hips.hearstapps.com/hmg-prod/images/delish-filet-mignon-horizontal-1541189043.jpeg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*",
          "product_name": "Filet Mignon",
          "product_price": "145.99"
        },
        {
          "pro_images":
              "https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg",
          "product_name": "Luxury Burger",
          "product_price": "129.99"
        },
        {
          "pro_images":
              "https://www.melskitchencafe.com/wp-content/uploads/2023/01/updated-lava-cakes7.jpg",
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
              "https://handletheheat.com/wp-content/uploads/2023/12/easy-tiramisu-recipe.jpg",
          "product_name": "Tiramisu",
          "product_price": "110.75"
        },
        {
          "pro_images":
              "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FEdit%2F2022-12-Lobster-Thermidor%2Flobster-thermidor-3",
          "product_name": "Lobster Thermidor",
          "product_price": "175.99"
        },
        {
          "pro_images":
              "https://thefoodieglobetrotter.com/wp-content/uploads/2020/05/Takeout-Kit-Italian-Mushroom-Truffle-Risotto-Meal-Kit.jpg",
          "product_name": "Truffle Risotto",
          "product_price": "130.50"
        },
        {
          "pro_images":
              "https://img.onmanorama.com/content/dam/mm/en/lifestyle/health/images/2023/5/3/kuzhi-manthi.jpg",
          "product_name": "Chicken Manthi",
          "product_price": "145.75"
        },
        {
          "pro_images":
              "https://www.nestleprofessional.in/sites/default/files/2022-07/Fried-Rice.jpg",
          "product_name": "Rice",
          "product_price": "180.99"
        },
        {
          "pro_images":
              "https://static01.nyt.com/images/2023/04/14/multimedia/14KOMOLAFE-rex1-chapa-mzjb-copy/14KOMOLAFE-rex1-chapa-mzjb-superJumbo.jpg",
          "product_name": "Chappathi",
          "product_price": "190.50"
        },
        {
          "pro_images":
              "https://media-cdn.tripadvisor.com/media/photo-m/1280/17/67/6a/54/porotta-and-fish-curry.jpg",
          "product_name": "Porotta meen curry",
          "product_price": "500.75"
        }
      ]
    },
  ];
}
