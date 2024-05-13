-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 13. maj 2024 ob 18.23
-- Različica strežnika: 10.4.32-MariaDB
-- Različica PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `cookie_rookie`
--

-- --------------------------------------------------------

--
-- Struktura tabele `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Odloži podatke za tabelo `category`
--

INSERT INTO `category` (`cid`, `cat_name`) VALUES
(1, 'American'),
(2, 'Spanish'),
(4, 'North-Indian'),
(7, 'South-Indian'),
(8, 'Italian'),
(9, 'Chinese');

-- --------------------------------------------------------

--
-- Struktura tabele `comments`
--

CREATE TABLE `comments` (
  `rid` int(11) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `feedback` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `recipe`
--

CREATE TABLE `recipe` (
  `rid` int(11) NOT NULL,
  `rname` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `ingredients` text NOT NULL,
  `recipe` text NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Odloži podatke za tabelo `recipe`
--

INSERT INTO `recipe` (`rid`, `rname`, `category`, `uemail`, `date`, `ingredients`, `recipe`, `rating`, `description`, `image`) VALUES
(48, 'Baby Corn Manchurian Dry ', 'chinese', 'pyz@cookieroockie.com', '2019-04-11 00:33:00', '    200gm Baby Corns\r\n    1/4 Cup Maida (Plain Flour)\r\n    2 Tablespoons Corn Flour\r\n    1 Teaspoon Ginger-Garlic paste\r\n    1/2 Teaspoon Soy Sauce\r\n    1/2 Teaspoon Black Pepper Powder, or to taste\r\n    1/2 Teaspoon Salt, or to taste\r\n    1/2 Cup Water\r\n    Oil for Frying', 'Wash and rinse the baby corn and cut them into 2 pieces.\r\n\r\nIn a large bowl, mix Maida, Corn Flour, Ginger-Garlic paste, Soy Sauce, Black Pepper Powder and Salt along with some water to make a thick batter of coating consistency.\r\n\r\nAdd the baby corn in the batter and coat them completely.\r\n\r\nDeep fry the baby corn in hot oil till they become crispy and golden brown.\r\n\r\nTo make the sauce, heat oil in a pan or wok.\r\n\r\nAdd finely chopped onions and spring onions and fry till they turn translucent.\r\n\r\nNow add the Soy Sauce, Vinegar, Red Chilli Sauce and Tomato Ketchup.\r\ndd the fried Baby Corn to the sauce and toss to coat them completely.\r\n\r\nSeason the Baby Corn with Salt and Pepper. Mix well and cook for a minute.\r\n\r\nBaby Corn Manchurian is ready. Garnish with Spring Onion Greens and serve it hot.\r\n\r\nAlso see more recipes like Dry Veg Manchurian, Gobi Manchurian (Cauliflower Manchurian), Idli Manchurian and Veg Spring Rolls.', 0, 'Baby Corn Manchurian is a very popular vegetarian dish from Indo-Chinese cuisine which is made from deep fried Baby Corn dumplings tossed in Chinese sauces.', '48.jpg'),
(49, 'Veg Hakka Noodles', 'chinese', 'pyz@cookieroockie.com', '2019-04-11 00:38:50', ' Pack (300 gm) of Hakka Noodles\r\n1/2 Cup Onion, thinly sliced\r\n1/2 Cup Colored Capsicum (Bell Pepper), thinly sliced\r\n1/2 Cup Cabbage, shredded\r\n1/2 Cup Carrots, shredded\r\n3-4 Stems Spring Onions, chopped\r\n3-4 Cloves of Garlic, grated\r\n1 Green Chilli, finely chopped\r\n2 Teaspoons Soy Sauce\r\n1 Teaspoon Vinegar\r\n1 Teaspoon Green Chilli Sauce\r\n1 Teaspoon Red Chilli Sauce\r\n1/2 Teaspoon Salt, or to taste\r\n1/2 Teaspoon Black Pepper Powder\r\n1 Tablespoon Oil', 'Boil 2 cups of water in a vessel. Add 1 teaspoon Oil in the water which will prevent the noodles from sticking to each other. Also add a pinch of Salt so that it gets absorbed in the noodles while cooking. Add the noodles to the water and cook them according to the instructions on the pack till they are tender.\r\nWhen the noodles are cooked, drain the hot water and place them in a colander. Lightly hand toss them to separate the noodle strands and run the noodles under cold water to stop the cooking process, so the noodles do not become mushy.\r\nYou can prepare the gravy while the noodles are cooking. Heat 2 tablespoons of oil in a wok (kadhai). Add grated Garlic & finely chopped Green Chillies and fry them.\r\nThen add thinly sliced Onions and colored Bell Peppers (Capsicum).\r\nAlso add shredded Cabbage and Carrots along with chopped Spring Onion whites.\r\nToss the vegetables lightly for a few minutes, stir frying them on high heat till they are cooked but still crunchy. Do not cook overcook the vegetables.\r\nAdd Soy Sauce, Vinegar, Green Chilli Sauce and Red Chilli Sauce. Also add Black Pepper Powder and Salt to taste.\r\nToss lightly to mix the sauces with the vegetables.\r\nAdd boiled noodles to the vegetables and toss to coat the noodles.\r\nAdd boiled noodles to the vegetables and toss to coat the noodles.\r\nFinally add some finely chopped Spring Onion Greens for garnish.\r\nveg Hakka Noodles are ready. They can be served as a standalone meal or with a side dish like Veg Manchurian or Gobi Manchurian.', 0, 'Veg Hakka Noodles is an Indo-Chinese preparation that is made by tossing boiled noodles and stir fried vegetables in Chinese sauces.', '49.jpg'),
(63, 'Classic Juicy Hamburger Recipe', 'American', 'admin@gmail.com', '2024-05-13 17:39:48', '1 ½ teaspoons ground black pepper\r\n1 teaspoon salt\r\n2 teaspoons paprika\r\n½ teaspoon brown sugar\r\n¼ teaspoon garlic powder\r\n¼ teaspoon onion powder\r\n¼ teaspoon cayenne pepper\r\nTOPPINGS:\r\nheese: cheddar cheese, or your favorite kind.\r\nLettuce leaves.\r\nTomato: beefsteak tomatoes are preferred, but any will work.\r\nOnion: Red or white onion, thinly sliced.\r\nPickle slices.\r\nCondiments: ketchup, mustard, BBQ sauce, Thousand island dressing, Ranch dressing, homemade Chick-fil A Sauce.', '1. Prep seasoning.  Combine all spices in a bowl. Set aside.\r\n\r\n2. Form patties. Divide ground chuck into 6 equal portions and gently form into ½ inch thick patties that are wider than the burger buns (as they will shrink).  Use your thumb to press an indentation into the center of each patty. Cover and set aside.\r\n\r\n3. Grill. Just before cooking, sprinkle seasoning over the patties, then place on hot grill, indent-side up. Close grill lid and cook for 3-4 minutes, until the bottom of the burger is seared and juices are accumulating on top of the burger. Flip and cook an additional 3-4 minutes or until the beef reaches 160 degrees F. If adding cheese, place cheese slices on burgers during the last minute of cooking.\r\n\r\nTwo process photos of hamburger patties cooking on a grill, then cheese added, melted on top.4. Serve. Remove patties to a plate and allow to rest for a few minutes before serving in a bun, with toppings.', 0, 'A classic, juicy Hamburger Recipe made with ground chuck, a simple burger seasoning, and all of the classic burger toppings. Plus, tips for preparing the meat and cooking the burgers to they are tender and juicy!', '63.jpg'),
(64, 'Homemade Pizza & Pizza Dough', 'Italian', 'admin@gmail.com', '2024-05-13 17:44:37', 'For the pizza dough\r\n\r\n1 1/2 cups (355 ml) warm water (105°F-115°F)\r\n1 package (2 1/4 teaspoons) active dry yeast\r\n3 3/4 cups (490g) bread flour\r\n2 tablespoons extra virgin olive oil (omit if cooking pizza in a wood-fired pizza oven)\r\n2 teaspoons kosher salt\r\n1 teaspoon sugar\r\nFor making the pizza and toppings\r\n\r\nExtra virgin olive oil\r\nCornmeal (to help slide the pizza onto the pizza stone)\r\nTomato sauce (smooth or pureed)\r\nFirm mozzarella cheese, grated\r\nFresh soft mozzarella cheese, separated into small clumps\r\nFontina cheese, grated\r\nParmesan cheese, grated\r\nFeta cheese, crumbled\r\nMushrooms, very thinly sliced if raw, otherwise first sautéed\r\nBell peppers, stems and seeds removed, very thinly sliced\r\nItalian pepperoncini, thinly sliced\r\nItalian sausage, cooked ahead and crumbled\r\nSliced black olives\r\nChopped fresh basil\r\nBaby arugula, tossed in a little olive oil, added as pizza comes out of the oven\r\nPesto\r\nPepperoni, thinly sliced\r\nOnions, thinly sliced raw or caramelized\r\nHam, thinly sliced', 'Making the Pizza Dough\r\nProof the yeast:\r\nPlace the warm water in the large bowl of a heavy duty stand mixer. Sprinkle the yeast over the warm water and let it sit for 5 minutes until the yeast is dissolved.\r\n\r\nAfter 5 minutes stir if the yeast hasn\'t dissolved completely. The yeast should begin to foam or bloom, indicating that the yeast is still active and alive.\r\n\r\n(Note that if you are using \"instant yeast\" instead of \"active yeast\", no proofing is required. Just add to the flour in the next step.)\r\n\r\nMake and knead the pizza dough:\r\nAdd the flour, salt, sugar, and olive oil, and using the mixing paddle attachment, mix on low speed for a minute. Then replace the mixing paddle with the dough hook attachment.\r\n\r\nKnead the pizza dough on low to medium speed using the dough hook about 7-10 minutes.\r\n\r\nIf you don\'t have a mixer, you can mix the ingredients together and knead them by hand.\r\n\r\nThe dough should be a little sticky, or tacky to the touch. If it\'s too wet, sprinkle in a little more flour.\r\n\r\nLet the dough rise:\r\nSpread a thin layer of olive oil over the inside of a large bowl. Place the pizza dough in the bowl and turn it around so that it gets coated with the oil.\r\n\r\nAt this point you can choose how long you want the dough to ferment and rise. A slow fermentation (24 hours in the fridge) will result in more complex flavors in the dough. A quick fermentation (1 1/2 hours in a warm place) will allow the dough to rise sufficiently to work with.\r\n\r\nCover the dough with plastic wrap.\r\n\r\nFor a quick rise, place the dough in a warm place (75°F to 85°F) for 1 1/2 hours.\r\n\r\nFor a medium rise, place the dough in a regular room temperature place (your kitchen counter will do fine) for 8 hours. For a longer rise, chill the dough in the refrigerator for 24 hours (no more than 48 hours).\r\n\r\nThe longer the rise (to a point) the better the flavor the crust will have.\r\n\r\nPreparing the Pizzas\r\nPreheat the pizza stone (or pizza pan or baking sheet):\r\nPlace a pizza stone on a rack in the lower third of your oven. Preheat the oven to 475°F for at least 30 minutes, preferably an hour. If you don\'t have a pizza stone, you can use a pizza pan or a thick baking sheet; you need something that will not warp at high temperatures.\r\n\r\nDivide the dough into 2 balls:\r\nRemove the plastic cover from the dough. Dust your hands with flour and push the dough down so it deflates a bit. Divide the dough in half.\r\n\r\nForm 2 round balls of dough. Place each in its own bowl, cover with plastic and let sit for 15 minutes (or up to 2 hours).\r\n\r\nPrep the toppings:\r\nPrepare your desired toppings. Note that you are not going to want to load up each pizza with a lot of toppings as the crust will end up not crisp that way.\r\n\r\nAbout a third a cup each of tomato sauce and cheese would be sufficient for one pizza. One to two mushrooms thinly sliced will cover a pizza.\r\n\r\nFlatten the dough ball, and stretch out into a round:\r\nWorking one ball of dough at a time, take one ball of dough and flatten it with your hands on a lightly floured work surface.\r\n\r\nStarting at the center and working outwards, use your fingertips to press the dough to 1/2-inch thick. Turn and stretch the dough until it will not stretch further.\r\n\r\nLet the dough relax 5 minutes and then continue to stretch it until it reaches the desired diameter—10 to 12 inches.\r\n\r\nTreat the dough gently!\r\n\r\nYou can also hold up the edges of the dough with your fingers, letting the dough hang and stretch, while working around the edges of the dough.\r\n\r\nIf a hole appears in your dough, place the dough on a floured surface and push the dough back together to seal the hole.\r\n\r\nUse your palm to flatten the edge of the dough where it is thicker. Pinch the edges if you want to form a lip.\r\n\r\nBrush the dough top with olive oil:\r\nUse your fingertips to press down and make dents along the surface of the dough to prevent bubbling. Brush the top of the dough with olive oil (to prevent it from getting soggy from the toppings). Let rest another 10 to 15 minutes.\r\n\r\nRepeat with the second ball of dough.\r\n\r\nSprinkle the pizza peel with cornmeal, put flattened dough on top:\r\nLightly sprinkle your pizza peel (or flat baking sheet) with cornmeal. (The corn meal will act as little ball bearings to help move the pizza from the pizza peel into the oven.)\r\n\r\nTransfer one prepared flattened dough to the pizza peel.\r\n\r\nIf the dough has lost its shape in the transfer, lightly shape it to the desired dimensions.\r\n\r\nSpread with tomato sauce and sprinkle with toppings:\r\nSpoon on the tomato sauce, sprinkle with cheese, and place your desired toppings on the pizza. Be careful not to overload the pizza with too many toppings, or your pizza will be soggy.\r\n\r\nSlide pizza into the oven:\r\nSprinkle some cornmeal on the baking stone in the oven (watch your hands, the oven is hot!). Gently shake the peel to see if the dough will easily slide, if not, gently lift up the edges of the pizza and add a bit more cornmeal.\r\n\r\nSlide the pizza off of the peel and onto the baking stone in the oven.\r\n\r\nBake:\r\nBake pizza in the 475°F oven, one at a time, until the crust is browned and the cheese is golden, about 10 to 15 minutes. If you want, toward the end of the cooking time you can sprinkle on a little more cheese.', 0, 'Make perfect pizza at home with this pizza recipe, including an easy pizza dough recipe.', '64.png'),
(65, 'Chicken Curry', 'South-Indian', 'admin@gmail.com', '2024-05-13 17:47:09', 'Boneless, Skinless Chicken Breasts: A lean protein option that absorbs the curry flavors well.\r\nCurry Powder: A complex blend of spices including turmeric, cumin, coriander, and others that gives the curry its distinctive warm, aromatic flavor.\r\nOnion, Garlic, Ginger: This trio adds depth and forms the foundational flavor of the curry.\r\nChicken Broth: Forms the savory base of the curry sauce.\r\nCornstarch: Used to thicken the sauce.\r\nFrozen Peas: Add color, texture, and sweetness to the dish, offering a nice contrast to the savory and spicy elements of the curry.\r\nPlain Greek Yogurt: Adds creaminess and a slight tang to the curry sauce, balancing the spices and enriching the texture.\r\nCilantro: Brings a fresh flavor that complements the rich and spicy notes of the curry beautifully.', 'Begin by cutting the chicken into 1/4-inch slices. The best way is to cut each breast in half lengthwise, then slice on the diagonal. Don’t make yourself crazy over it, but try to make each piece about the same size; this ensures that they cook evenly. Next, season the chicken with salt, pepper and curry powder.\r\n\r\nSeasoned chicken in a glass bowl.\r\nHeat some vegetable oil in a large skillet, then briefly sauté the chicken until it is lightly browned but still pink in spots.\r\n\r\nChicken cooking in a skillet on a stovetop.\r\nChicken cooking in a skillet on a stovetop.\r\nTransfer the partially cooked chicken to a clean bowl, then add the onions to the pan and cook until soft and translucent.\r\n\r\nSkillet of onions on a stovetop.\r\nAdd the ginger, garlic, and more curry powder and sauté until fragrant.\r\n\r\nSeasoned onions on a stovetop.\r\nAdd the chicken stock and cornstarch to the vegetables.\r\n\r\nSkillet with onions and chicken stock.\r\nCook until the sauce is thickened, then add the chicken back to the pan, along with the frozen peas and simmer until the chicken is just cooked.\r\n\r\nChicken, peas, chicken stock, and other ingredients in a skillet.\r\nAdd the Greek yogurt and fresh chopped cilantro.\r\n\r\nDollop of Greek yogurt in a skillet with chicken and peas.\r\nStir until combined.', 0, 'Whip up a one-skillet chicken curry, brimming with vibrant peas and rich flavors, all in just 30 minutes—a weeknight winner!', '65.jpg'),
(66, 'Spanish Paella', 'Spanish', 'admin@gmail.com', '2024-05-13 17:49:04', 'Produce: onion, bell pepper, garlic, tomatoes, parsley, frozen peas.\r\nSpices: bay leaf, paprika, saffron, salt and pepper.\r\nSaffron: this may be the most important ingredient, so it’s best to buy high quality. If your grocery store doesn’t carry it, try an International food market, or Amazon. If necessary, substitute 1 teaspoon saffron powder.\r\nSeafood: jumbo shrimp, mussels, calamari.\r\nChicken thighs: I prefer thighs to breasts in the recipe since they don’t dry out as easily during longer cook times.\r\nOlive Oil: Spanish olive oil , or any good quality olive oil.\r\nWhite wine.\r\nSpanish Rice: See my notes below about the rice, and possible substitutions.\r\nChicken Broth: Authentic paella would include making your own fish stock from the discarded shells of seafood. I usually substitute chicken broth, for convenience.', '1. Sauté:  Add olive oil to a skillet over medium heat. Add onion, bell peppers and garlic and sauté until onion is translucent. Add chopped tomato, bay leaf, paprika, saffron, salt and pepper. Stir and cook for 5 minutes.\r\n\r\n2. Add white wine.  Cook for 10 minutes.\r\n\r\n3. Add chicken & rice.  Add chopped parsley and cook for 1 minute.\r\n\r\n4. Add broth.  Pour the broth slowly all around the pan and jiggle the pan to get the rice into an even layer. (Do not stir the mixture going forward!). Bring mixture to a boil. Reduce heat to medium low. Give the pan a gentle shake back and forth once or twice during cooking.\r\n\r\nA skillet with sautéing vegetables, chicken and rice, then broth added to make paella.5. Cook uncovered: Cook paella uncovered for 15-18 minutes, then nestle the shrimp, mussels and calamari into the mixture, sprinkle peas on top and continue to cook (without stirring) for about 5 more minutes. Watch for most of the liquid to be absorbed and the rice at the top nearly tender. (If for some reason your rice is still uncooked, add ¼ cup more water or broth and continue cooking).\r\n\r\nPaella rice cooking in a pan, then mussels, shrimp and calamari added.6. Cover and let rest.  Remove pan from heat and cover pan with a lid or tinfoil. Place a kitchen towel over the lid and allow to rest for 10 minutes.\r\n\r\n7. Serve. Garnish with fresh parsley and lemon slices. Serve.\r\n\r\n', 0, 'You can make a delicious, authentic Paella–the most popular dish of Spain–in your own kitchen with simple ingredients like rice, saffron, vegetables, chicken, and seafood. If you love cooking International food, you will fall in love with this comforting dish! ', '66.jpg');

-- --------------------------------------------------------

--
-- Struktura tabele `requested_recipe`
--

CREATE TABLE `requested_recipe` (
  `rid` int(11) NOT NULL,
  `rname` varchar(30) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `recipe` text NOT NULL,
  `ingredients` text NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `user`
--

CREATE TABLE `user` (
  `email` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Odloži podatke za tabelo `user`
--

INSERT INTO `user` (`email`, `uname`, `contact`, `password`) VALUES
('arpitpatel27071997@gmail.com', 'Arpit Patel', '7016941415', 'QXJwaXQxMjM0'),
('miha@mail.com', 'miha', '123', 'X1JpczEyMzQ1Njc='),
('neki@mail.com', 'neki', '333', 'X1JpczEyMzQ1Njc='),
('paddss@sgsg.ddo', 'Parth', '949+59+59+', 'UGFydGhANTg='),
('parthp582000@gmail.com', 'Parth', '9727254298', 'UGFydGg1ODIw'),
('patelpreet612@gmail.com', 'Preet Patel', '9265602997', 'UHJlZXQxMjk='),
('rajpanchal544@gmail.com', 'Raj Panchal', '7874716190', 'UmFqNTEy');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indeksi tabele `comments`
--
ALTER TABLE `comments`
  ADD KEY `comment_rid_constraint` (`rid`),
  ADD KEY `comment_email_constraint` (`uemail`);

--
-- Indeksi tabele `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indeksi tabele `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`rid`);

--
-- Indeksi tabele `requested_recipe`
--
ALTER TABLE `requested_recipe`
  ADD PRIMARY KEY (`rid`);

--
-- Indeksi tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT tabele `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT tabele `recipe`
--
ALTER TABLE `recipe`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT tabele `requested_recipe`
--
ALTER TABLE `requested_recipe`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comment_email_constraint` FOREIGN KEY (`uemail`) REFERENCES `user` (`email`),
  ADD CONSTRAINT `comment_rid_constraint` FOREIGN KEY (`rid`) REFERENCES `recipe` (`rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
