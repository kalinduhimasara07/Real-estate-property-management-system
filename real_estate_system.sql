-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 09:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'sample@mail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'admin2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `aid` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `size` decimal(10,0) DEFAULT NULL,
  `bed` int(2) DEFAULT NULL,
  `bath` int(2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(15) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`aid`, `uid`, `title`, `city`, `size`, `bed`, `bath`, `description`, `price`, `tel`, `date_time`, `status`) VALUES
(39, 46, 'Luxury House for Sale in Battaramulla', 'Battaramulla', 17, 5, 4, 'Highly Residential area \r\n\r\nfaceful 20feet carpet road \r\n\r\nfatafice location .\r\n\r\nmodern architecture designed 3st super luxury house for sale in nugegoda heat.\r\n\r\nnugegoda highly Residential area very important place.\r\n\r\n5 Bedrooms with AC\r\n\r\n4 Bathrooms with hot water \r\n\r\n300 meters to nugegoda bustan \r\n\r\n250 Royal International shcool\r\n\r\n700 meters to Railway station .\r\n\r\n17 perchas land exten \r\n\r\n4500.0 sqft \r\n\r\nnow 90% finishing maximum  after 2 month Expected complete .\r\n\r\nspacious living dining sitting t v lobby areas\r\n\r\nfull equipped modern pantry copboard with kitchen .\r\n\r\nwet kitchen .\r\n\r\nmaid room with wash room\r\n\r\ndriver quvartes .\r\n\r\nlaundry room .\r\n\r\nvisitors room.\r\n\r\nentertainment area .\r\n\r\nswimming pool .\r\n\r\nover looking house front large garden area \r\n\r\nlarge varandha area \r\n\r\n2 cars can be parked in the garage \r\n\r\nextra 3:vehicle parking garden area \r\n\r\nc c t v camara system .\r\n\r\nlarge Rollershutter door .wicket gate \r\n\r\n3  phace electricity \r\n\r\nall facilites available .near\r\n\r\nprice 170 mn\r\n\r\nnegotiable please call genuine buyers only \r\n\r\n call thanks', 170000000, '0352345678', '2024-07-27 19:05:09', 1),
(40, 45, 'Brand New Super Luxury House For Sale In Thalawathugoda', 'Thalawathugoda', 14, 4, 4, ' Bathrooms: 4\r\n\r\n Bedrooms: 4\r\n\r\n Land Area: 14.2 perches\r\n\r\nFloor Area: 4675 sqft\r\n\r\n \r\n\r\nBrand New Super Luxury House for Sale in Hokandara**\r\n\r\nAddress:** Hokandara, Thalawathugoda\r\n\r\n**Bedrooms:** 4  \r\n\r\n**Bathrooms:** 4  \r\n\r\n**House Size:** 4,675.0 sqft  \r\n\r\n**Land Size:** 14.2 perches (~ Total square feet 4675 plus)  \r\n\r\n**Key Features:**\r\n\r\n- Architect designed house with a traditional touch of Geoffrey Bawa style, mixed with contemporary architecture.\r\n\r\n- Friendly neighborhood with professionals.\r\n\r\n- Facing a paddy field and a rubber estate next to a reserved land.\r\n\r\n- 5 minutes to Athurugiriya highway interchange and 3km to Thalawathugoda junction.\r\n\r\n- 20ft wide road and it\'s the last house in the lane (100m).\r\n\r\n**Property Details:**\r\n\r\n- 3 stories with a rooftop.\r\n\r\n- 30x8 ft swimming pool with jacuzzi.\r\n\r\n- 4 bedrooms with en suite bathrooms.\r\n\r\n- Master suite with walk-in closet and a spacious bathroom.\r\n\r\n- Open plan living, dining, and modern pantry.\r\n\r\n- Wet kitchen.\r\n\r\n- Service passage.\r\n\r\n- Powder toilet.\r\n\r\n- Maids\' quarters.\r\n\r\n- TV lobby.\r\n\r\n- Office/study room.\r\n\r\n- Rooftop Bar.\r\n\r\n- Home gym.\r\n\r\n- Utility room.\r\n\r\n**Additional Amenities:**\r\n\r\n- Spacious Rooftop overlooking the paddy field.\r\n\r\n- Teak wood floors, doors, and windows.\r\n\r\n- Powder-coated aluminum door windows.\r\n\r\n- Parking for 2 vehicles and ample parking outside the house.\r\n\r\n- Landscaped garden.\r\n\r\n- CCTV cameras.\r\n\r\n- All rooms are air-conditioned, and the living area consists of central AC.\r\n\r\n- The house is to be sold with all custom-made furniture and electrical appliances including two washing machines, fridge, cooker, etc.\r\n\r\nPrice\r\n\r\n125llion\r\n\r\n(1250lakhs) \r\n\r\nNegotiable			\r\n\r\nCall for Seen on appointments Genuine Buyers Only.\r\n\r\nNO BROKERS\r\n', 125000000, '0372345678', '2024-07-27 19:09:29', 1),
(41, 44, 'Brand New Super Luxury House For Sale In Piliyandala', 'Piliyandala', 15, 4, 4, '\r\n(WE HAVE UPLOADED ONLY FEW PICTURES HERE. VISIT OUR WEBSITE OR CALL FOR MORE DETAILS, PHOTOS & PROPERTIES. THANK YOU.)\r\n\r\nwww.platinumproperties.lk\r\n\r\nFull Album:-\r\n\r\n(Copy & paste the link)\r\n\r\nVisit our official website for more exclusive properties:- | platinumproperties.lk\r\n\r\n......................................\r\n\r\nBrand New Super Luxury House For Sale In Piliyandala Town \r\n\r\nLocated in a Serene,Secure and a Highly Residential Environment in Piliyandala Gonamodiththa Road area, which is ideal for an Exemplary Living.\r\n\r\nProperty Features:-\r\n\r\n4 Spacious Bedrooms with A/C Provisions.\r\n\r\n4 Fully Equipped Bathrooms with Hot Water.\r\n\r\nLand Extent -  6.4 Perches.\r\n\r\nFloor Area - 3500+ Sqft.\r\n\r\nSpacious living & dining area.\r\n\r\nKitchen with modern pantry.\r\n\r\nJack wood doors & windows \r\n\r\nScenic rooftop\r\n\r\n1km to Piliyandala Town\r\n\r\n2km to Piliyandala Clock tower\r\n\r\n50m to Piliyandala-Gonamaditta (795) bus route\r\n\r\n \r\n\r\nAll the banks, ATMs, hospitals , super markets, restaurants, retail stores, jogging tracks and many other urban facilities are all around within 1km radius.\r\n\r\nPrice :- 35 Million Rupees.\r\n\r\n(Price can be negotiated after inspection)\r\n\r\n* Special bank loan can be arranged for the lowest interest rate.\r\n\r\n* All the documents are clear.\r\n\r\nDon\'t miss this valuable chance. \r\n\r\nVisit our official website\r\n\r\n www.platinumproperties.lk\r\n\r\nor \r\n\r\nCall our 24x7 Hotlines \r\n\r\nfor more details.', 250000000, '0412345678', '2024-07-27 19:15:17', 1),
(42, 43, 'Five Bedroom Luxury House for Sale in Nugegoda', 'Nugegoda', 15, 5, 5, 'Land & Floor Area:\r\n\r\n- 14.8 perches (over 6000 sq. ft)\r\n\r\n___________________\r\n\r\nBedrooms:\r\n\r\n- 5\r\n\r\n- Wooden flooring\r\n\r\n- All bedrooms with AC (inverter)\r\n\r\n- Wardrobes\r\n\r\n- KDK ceiling fans\r\n\r\n- TV and telephone connections in all rooms\r\n\r\n___________________\r\n\r\nBathrooms:\r\n\r\n- 5 (attached)\r\n\r\n- Italian fittings\r\n\r\n- Solar hot water\r\n\r\n- Shower cubicles\r\n\r\n- Rain and waterfall system shower\r\n\r\n___________________\r\n\r\nIndoor Specifications:\r\n\r\n- Eye-catching VIP living area (wooden, A/C)\r\n\r\n- Two sitting areas (Up-stair & Downstair)\r\n\r\n- Dining area open to a beautiful backyard\r\n\r\n- Bar & covered entertainment area\r\n\r\n- Upstairs TV lounge\r\n\r\n- Kumbuk stairway\r\n\r\n- Gym area, shrine & laundry room\r\n\r\n___________________\r\n\r\nOutdoor Specifications:\r\n\r\n- Backyard with beautiful garden and fish pond\r\n\r\n- Rooftop with panoramic view (covered & two levels)\r\n\r\n- Entertainment area with separate staircase access\r\n\r\n- Separate servant & driver facilities (2 rooms, 2 toilets & 2 baths)\r\n\r\n___________________\r\n\r\nSpecial Description:\r\n\r\n- Solar Net Metering System (6 KVA)\r\n\r\n- 10 Kv Diesel Generator\r\n\r\n- Double Bricked Walls (9 inches)\r\n\r\n- All windows and doors are first-class timber\r\n\r\n- Modern imported light fittings\r\n\r\n- 3-phase electricity\r\n\r\n- Sliding French windows\r\n\r\n- Pipe-borne and well water with sump & overhead water tanks with covers\r\n\r\n- CCTV system\r\n\r\n- Landline telephone\r\n\r\n- Lightning protector\r\n\r\n- KDK ceiling fans\r\n\r\n- Tiled roof\r\n\r\n- Garden lamps\r\n\r\n___________________\r\n\r\nKitchen / Pantry:\r\n\r\n- Manual & electric touch system Italian pantry\r\n\r\n- Pantry includes dishwasher, cooker, cooker hood, oven, and exhauster\r\n\r\n- Separate pantry with stainless steel top part\r\n\r\n- Backyard kitchen for outside cooking purposes\r\n\r\n___________________\r\n\r\nParking:\r\n\r\n- Covered garage with parking space for 4 vehicles\r\n\r\n___________________\r\n\r\nBoundaries:\r\n\r\n- Surrounded by well-built walls with 2 remote & wooden wicket gate\r\n\r\n___________________\r\n\r\nAccess road:\r\n\r\n- 20 Feet wide dead-end road (carpet)\r\n\r\n- Very close proximity to High-level road\r\n\r\n___________________\r\n\r\nKey places:\r\n\r\n- Railway Station / Government Hospital\r\n\r\n- Jayawaradanapura University\r\n\r\n- Supermarkets / Banks / Restaurants\r\n\r\n- Fish & vegetable stall / Delkanda Pola\r\n\r\n___________________\r\n\r\nNearest cities:\r\n\r\n- Boralesgamuwa / Maharagama / Nugegoda\r\n\r\n- Embuldeniya / Mirihana / Udahamulla\r\n\r\n- Pepiliyana / Rattanapitiya / Wijerama', 160000000, '+94 75 234 5678', '2024-07-27 19:20:41', 1),
(43, 42, 'Luxury House for Sale in Yakkala', 'Yakkala', 20, 6, 5, 'Luxury House For Sale In Yakkala PRIME LOCATION.\r\n\r\n75 Perches & 6700 Sq Ft \r\n\r\n20 Ft Road\r\n\r\n700 M to Yakkala Town\r\n\r\n7 Bedrooms (A / C )\r\n\r\n6 Bathrooms ( Hot Water )\r\n\r\nModern Pantry \r\n\r\nSpacious Living / Dining Area\r\n\r\nBrick Walls\r\n\r\nSolar Hot Water\r\n\r\nParking Space\r\n\r\nRemote Roller Shutter & Wicket Gate \r\n\r\nWatchtower\r\n\r\nTwo Storey Servant House\r\n\r\nBeautiful garden \r\n\r\nPrice 150M \r\n\r\nKO-2174', 150000000, '0112345678', '2024-07-27 19:24:34', 1),
(44, 52, 'Luxury 5BR House for Sale in Nugegoda', 'Nugegoda', 33, 5, 5, 'Luxury 5BR House for Sale in Nugegoda\r\n\r\nNugegoda Luxury House for Sale in Prime location \r\n\r\n33 Perches\r\n\r\n7000 Sqft \r\n\r\n5 Bedroom \r\n\r\n5 Bathroom \r\n\r\nServant Room & Washroom available \r\n\r\n3 Stories House \r\n\r\n4 Covered Parking\r\n\r\nBuild Year 2016 \r\n\r\n- Less then 50 meters to the main road \r\n\r\n- â Waluvva type house \r\n\r\n- â Supermarket walking Distance \r\n\r\n275 Million (negotiable)', 275000000, '+94 763456789', '2024-08-02 13:07:03', 1),
(45, 43, 'Luxury 3 Story House For Sale In Pannipitiya', 'Pannipitiya', 8, 4, 4, 'Architecturally Designed Super Luxury 3 Story House For Sale In Hokandara Road, Pannipitiya \r\n\r\nIDEAL FOR RESIDENCE / RESIDENCE OFFICE OR ANY RESIDENTIAL WORK \r\n\r\nHIGHLY RESIDENTIAL AREA \r\n\r\n20 FEET WIDE ROAD FACING HOUSE \r\n\r\n150 Meter to Hokandara Road ( 993 )\r\n\r\n1.5 Km to Vidyala Junction ( 336 / 993 )\r\n\r\n1.5 Km to Moraketiya Junction ( High Level Road )\r\n\r\n3 Km to Thalawathugoda Junction \r\n\r\nLand Size 8 Perches \r\n\r\nHouse Size 4500 Sqft \r\n\r\n04 Air Condition Bed Rooms \r\n\r\n04 Solar Power Hot Water System Bathrooms \r\n\r\nGround Floor...\r\n\r\nVisitor\'s Bedroom \r\n\r\nCommon Bathroom \r\n\r\nLiving Area \r\n\r\nSitting Area \r\n\r\nDining Area \r\n\r\nModern Pantry ( Teak Timber )\r\n\r\nMaid Room & Bathroom \r\n\r\nLandscape Garden \r\n\r\nDouble Garage \r\n\r\n1st Floor...\r\n\r\nLarge Master Bedroom & Attached Bathroom \r\n\r\n02 Bedrooms With Balcony \r\n\r\nCommon Bathroom \r\n\r\nTv Lobby Area \r\n\r\n2nd Floor...\r\n\r\nEntertainment Area \r\n\r\nOpen Terrace ( 360Â° View )\r\n\r\nRoof Top \r\n\r\nBRICK WALL \r\n\r\nALL DOORS & WINDOWS TEAK TIMBER \r\n\r\nTEAK TIMBER STAIRCASE \r\n\r\nIMPORTED LIGHT FITTINGS \r\n\r\nAIR CONDITION \r\n\r\nSOLAR POWER HOT WATER SYSTEM \r\n\r\nCCTV SECURITY CAMERA SYSTEM \r\n\r\n3 PHASE ELECTRICITY \r\n\r\nTAP LINE WATER \r\n\r\n02 OVERHEAD WATER TANKS ( 1000L )\r\n\r\nPRESSURE PUMP \r\n\r\nClose to - Pannipitiya, Maharagama, Kottawa, Thalawathugoda \r\n\r\nClose By - Supermarkets, Hospital, Government & International Schools \r\n\r\nPrice \r\n\r\n89 Million \r\n\r\n( 890 Lakes )', 89000000, '0771231231', '2024-08-07 12:42:45', 1),
(46, 53, 'Five Bedroom Luxury House for Sale in Nugegoda', 'Nugegoda', 20, 6, 6, 'Land & Floor Area:\r\n\r\n- 14.8 perches (over 6000 sq. ft)\r\n\r\n___________________\r\n\r\nBedrooms:\r\n\r\n- 5\r\n\r\n- Wooden flooring\r\n\r\n- All bedrooms with AC (inverter)\r\n\r\n- Wardrobes\r\n\r\n- KDK ceiling fans\r\n\r\n- TV and telephone connections in all rooms\r\n\r\n___________________\r\n\r\nBathrooms:\r\n\r\n- 5 (attached)\r\n\r\n- Italian fittings\r\n\r\n- Solar hot water\r\n\r\n- Shower cubicles\r\n\r\n- Rain and waterfall system shower\r\n\r\n___________________\r\n\r\nIndoor Specifications:\r\n\r\n- Eye-catching VIP living area (wooden, A/C)\r\n\r\n- Two sitting areas (Up-stair & Downstair)\r\n\r\n- Dining area open to a beautiful backyard\r\n\r\n- Bar & covered entertainment area\r\n\r\n- Upstairs TV lounge\r\n\r\n- Kumbuk stairway\r\n\r\n- Gym area, shrine & laundry room\r\n\r\n___________________\r\n\r\nOutdoor Specifications:\r\n\r\n- Backyard with beautiful garden and fish pond\r\n\r\n- Rooftop with panoramic view (covered & two levels)\r\n\r\n- Entertainment area with separate staircase access\r\n\r\n- Separate servant & driver facilities (2 rooms, 2 toilets & 2 baths)\r\n\r\n___________________\r\n\r\nSpecial Description:\r\n\r\n- Solar Net Metering System (6 KVA)\r\n\r\n- 10 Kv Diesel Generator\r\n\r\n- Double Bricked Walls (9 inches)\r\n\r\n- All windows and doors are first-class timber\r\n\r\n- Modern imported light fittings\r\n\r\n- 3-phase electricity\r\n\r\n- Sliding French windows\r\n\r\n- Pipe-borne and well water with sump & overhead water tanks with covers\r\n\r\n- CCTV system\r\n\r\n- Landline telephone\r\n\r\n- Lightning protector\r\n\r\n- KDK ceiling fans\r\n\r\n- Tiled roof\r\n\r\n- Garden lamps\r\n\r\n___________________\r\n\r\nKitchen / Pantry:\r\n\r\n- Manual & electric touch system Italian pantry\r\n\r\n- Pantry includes dishwasher, cooker, cooker hood, oven, and exhauster\r\n\r\n- Separate pantry with stainless steel top part\r\n\r\n- Backyard kitchen for outside cooking purposes\r\n\r\n___________________\r\n\r\nParking:\r\n\r\n- Covered garage with parking space for 4 vehicles\r\n\r\n___________________\r\n\r\nBoundaries:\r\n\r\n- Surrounded by well-built walls with 2 remote & wooden wicket gate\r\n\r\n___________________\r\n\r\nAccess road:\r\n\r\n- 20 Feet wide dead-end road (carpet)\r\n\r\n- Very close proximity to High-level road\r\n\r\n___________________\r\n\r\nKey places:\r\n\r\n- Railway Station / Government Hospital\r\n\r\n- Jayawaradanapura University\r\n\r\n- Supermarkets / Banks / Restaurants\r\n\r\n- Fish & vegetable stall / Delkanda Pola\r\n\r\n___________________\r\n\r\nNearest cities:\r\n\r\n- Boralesgamuwa / Maharagama / Nugegoda\r\n\r\n- Embuldeniya / Mirihana / Udahamulla\r\n\r\n- Pepiliyana / Rattanapitiya / Wijerama', 160000000, '+94 75 234 5678', '2024-08-09 21:32:33', 1),
(47, 54, 'Super Luxury Brand-New House Battaramulla', 'Battaramulla', 20, 6, 6, 'Luxury Brand-New House With Swimming Pool \r\n\r\n* 15 p Land Extent\r\n\r\n* 5000 SQFT\r\n\r\n* Facing to a 20 Feet Carpeted Rd\r\n\r\n* House With a 25\' x 15\' Swimming Pool - Jet Nozzle - Bubble Massage\r\n\r\n* 5 Spacious Bedrooms \r\n\r\n* 5 Spacious Bathrooms  \r\n\r\n* Servant / Driver Quarters With Bathroom \r\n\r\n* Large Living With Pool View/ Open Fitted Pantry Made Out of TEAK WOOD/ Granite Top - Cooker Hood-4 Burner Hob\r\n\r\n* Large TV lobby Area/ Roof-Top/ Laundry Area/ Balconies For All the 1st Floor Rooms\r\n\r\n* Solid House With 9 inch Double Brick Walls \r\n\r\n* Entire House With Solid Teak Wood Box Framed Doors, Windows & \r\n\r\n   Frames \r\n\r\n* Titanium & White Washed Walls\r\n\r\n* Bathrooms With High-End Finishes Such As Marble Countertops/ \r\n\r\n   Cubicles / Hot Water Custom Cabinets/ Rocell Fixtures\r\n\r\n* Jacuzzi/ Sauna Bath\r\n\r\n* Bedrooms With AC  \r\n\r\n* 32\" by 32\" Lanka A Grade Tiles  \r\n\r\n* All 4 Sides Parapet Walls With Roller & Wicket Gate\r\n\r\n* 4 Large Vehicles Parking Space\r\n\r\n* Landscaped Garden \r\n\r\n* Asking Only Rs.130/= Million ( Negotiable )', 130000000, '+94 76 345 6789', '2024-08-09 22:33:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) NOT NULL,
  `aid` int(10) DEFAULT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL,
  `img5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `aid`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(18, 39, 'file_20240727190542_75759536.jpg', 'file_20240727190542_26282413.jpg', 'file_20240727190542_39797624.jpg', 'file_20240727190542_34597190.jpg', 'file_20240727190542_16981287.jpg'),
(19, 40, 'file_20240727191006_60870928.jpg', 'file_20240727191006_61359636.jpg', 'file_20240727191006_60184671.jpg', 'file_20240727191006_46261618.jpg', 'file_20240727191006_73540983.jpg'),
(20, 41, 'file_20240727191541_75228888.jpg', 'file_20240727191541_83261635.jpg', 'file_20240727191541_89003395.jpg', 'file_20240727191541_51819441.jpg', 'file_20240727191541_93905595.jpg'),
(21, 42, 'file_20240727192101_7951161.jpg', 'file_20240727192101_78910065.jpg', 'file_20240727192101_51767607.jpg', 'file_20240727192101_58580349.jpg', 'file_20240727192101_12296621.jpg'),
(22, 43, 'file_20240727192454_55841594.jpg', 'file_20240727192454_35858232.jpg', 'file_20240727192454_55707879.jpg', 'file_20240727192454_55374301.jpg', 'file_20240727192454_37606654.jpg'),
(23, 44, 'file_20240802130732_27372290.jpg', 'file_20240802130733_58609393.jpg', 'file_20240802130733_35412083.jpg', 'file_20240802130733_92573312.jpg', 'file_20240802130733_43891157.jpg'),
(24, 45, 'file_20240807124309_13987786.jpg', 'file_20240807124309_54593885.jpg', 'file_20240807124309_29849077.jpg', 'file_20240807124309_54166382.jpg', 'file_20240807124309_41336439.jpg'),
(25, 46, 'file_20240809213327_70311548.jpg', 'file_20240809213327_34229553.jpg', 'file_20240809213327_50408031.jpg', 'file_20240809213327_88628065.jpg', 'file_20240809213327_74719505.jpg'),
(26, 47, 'file_20240809223352_43440606.jpg', 'file_20240809223352_49569102.jpg', 'file_20240809223352_87551642.jpg', 'file_20240809223352_82005293.jpg', 'file_20240809223352_20475205.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pw` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `nic`, `tel`, `email`, `pw`) VALUES
(35, 'shehan chathuranga', '20124567', '0711211231', 'sehan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(36, 'amal samantha', '1332254566', '0712564525', 'test@mail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(37, 'Saman Bandara ', '198012345678', '0712345678', 'samanbandara@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(38, 'Nimal Silva', '199203456789', '0723456789', 'nimalsilva@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(39, 'Ajith Rathnayake', '200315678901', '075 456 7890', 'ajith.rathnayake@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(40, 'Chathura Abeysekara ', '198404567890', '076 567 8901', 'chathura.abeysekara@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(41, 'Dinesh Kumarasinghe', '199512345678', '0776789012', 'dinesh.kumarasinghe@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(42, 'Chandani Senanayake', '200623456789', '0112345678', 'chandani.senanayake@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(43, 'Kumari Samarasinghe', '198734567890', '0812345678', 'kumari.samarasinghe@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(44, 'Lakshmi Ekanayake', '199845678901', '0412345678', 'lakshmi.ekanayake@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(45, 'Manjula Jayawardena', '200956789012', '0372345678', 'manjula.jayawardena@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(46, 'Priyanka Gunawardena', '198067890123', '0352345678', 'priyanka.gunawardena@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(48, 'Amal Perera', '200191234567', '+94 71 123 4567', 'amal.perera@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(49, 'Nimalka Fernando', '200292345678', '+94 77 987 6543', 'nimalka.fernando@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(50, 'Sunil Jayasinghe', '200393456789', '+94 72 456 7890', 'sunil.jayasinghe@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(51, 'Chandani Silva', '200494567890', '+94 75 234 5678', 'chandani.silva@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(52, 'Ruwan Wijesinghe', '200595678901', '+94 76 345 6789', 'ruwan.wijesinghe@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(53, 'Nirosha Perera', '202495678901', '+94 75 234 5678', 'nirosha.perera@example.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(54, 'Indika Karunaratne', '202596789012', '+94 76 345 6789', 'indika.karunaratne@example.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aid` (`aid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `nic` (`nic`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
