INSERT INTO seasons (name) VALUES
('Winter'),
('Spring'),
('Summer'),
('Fall');

INSERT INTO spirits (name) VALUES
('Vodka'),
('Rum'),
('Tequila'),
('Mezcal'),
('Whiskey'),
('Bourbon'),
('Gin');

-- INSERT INTO seasons_spirits (season_id, spirit_id) VALUES
-- (1, 1),
-- (1, 2),
-- (1, 3),
-- (1, 4),
-- (1, 5),
-- (1, 6),
-- (1, 7),
-- (2, 1),
-- (2, 2),
-- (2, 3),
-- (2, 4),
-- (2, 5),
-- (2, 6),
-- (2, 7),
-- (3, 1),
-- (3, 2),
-- (3, 3),
-- (3, 4),
-- (3, 5),
-- (3, 6),
-- (3, 7),
-- (4, 1),
-- (4, 2),
-- (4, 3),
-- (4, 4),
-- (4, 5),
-- (4, 6),
-- (4, 7);

INSERT INTO cocktails (name, ingredients, directions, img_url, season_id, spirit_id) VALUES
-- Vodka (Winter, Spring, Summer, Fall)
('St. Dill Martini', '2 oz. Vodka; 1 oz. Pickle Brine; Splash of Dry Vermounth; 10-12 Mustard Seeds', 'Add all ingredients to a shaker and shake well with ice. Strain into a chilled martini glass. Garnish with a large sprig of dill.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2013/images/2013-04/7-recipe_pickle-martini-cocktail_500x750.jpg?itok=vvSZmnBE', 1, 1),
('Modern Royale', '1 oz. Vodka; 1 oz. St. Germain; 0.25 oz. Fresh Grapefruit Juice; 0.25 oz. Fresh Lemon Juice; 0.25 Fresh Lime Juice; 1 oz. Brut Champagne', 'Combine all ingredients except champagne in shaker with ice. Shake well and strain into chilled coupe glass. Top with champagne. Garnish with lavender sprig.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2013/recipe_modern-royale-cocktail_500x750.jpg?itok=dAKIx4iE', 2, 1),
('The Pink Kitty', '1.5 oz. Vestal Vodka; 0.75 oz. Fresh Orange Juice; 0.5 oz. Fresh Lime Juice; 0.5 oz. Simple Syrup; (1:1); 2 oz. Pomegranate Seeds (Fresh Juiced)', 'Shake and strain over rocks with a skewered orange wheel (optional garnish).', 'http://kellyoshiro.com/wp-content/uploads/2012/01/pomegrante-signature-cocktail.jpg', 3, 1),
('Danitys Cranberry Gimlet', '2 oz. Citrus Vodka; 0.75 Fresh Lime Juice; 0.75 Unsweetened Cranberry Juice; 0.5 oz. Agave Nectar', 'Combine all ingredients in shaker and shake well with ice. Strain into a chilled coupe glass. Garnish with fresh cranberries or a lemon twist.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2013/2013-11/recipe_cranberry-gimlet_500x750.jpg?itok=-ezrRigo', 4, 1),
-- Rum (Winter, Spring, Summer, Fall)
('Rum Old Fashioned', '2.5 oz. Caña Brava 7-Year-Old Añeja Reserva Rum; 1 Brown Sugar Cube; 0.25 oz. Cold Water; 3 dashed Angostura Bitters; 2 dashes Orange Bitters', 'Muddle sugar, bitters and water in the bottom ofa mixing glass until sugar is dissolved. Add rum, ice and stir for 1 minute. Pour into double Old-Fashioned glass over large cube of ice. Twist an orange peel over the drink and drop it in.', 'http://gardenandgun.com/wp-content/uploads/2017/01/GG0117_cocktails_21-806x1100.jpg', 1, 2),
('Old Cuban', '1.5 oz. Bacardí 8 Años Rum; 2/3 oz. Simple Syrup; 0.5 oz. Fresh Lime Juice; 6 Mint Leaves; 2 dashes Angostura Bitters; 2 oz. Prosecco', 'Combine simple syrup, lime juice and mint leaves in a shaker and gently muddle. Then add rum, bitters and ice. Shake well and strain into chilled coupe glass. Top with prosecco. Garnish with fresh mint leaves.', 'http://cdn.chilledmagazine.com/wp-content/uploads/2016/12/BACARDI-Old-Cuban.jpg', 2, 2),
('Queens Park Swizzle', '2 oz. White Rum; 0.5 Simply Syrup; 0.75 oz. Fresh Lime Juice; 5 Fresh Mint Leaves; 1 oz. Prosecco; 3 dashes Angostura Bitters', 'Add mint leaves, simple syrup and lime juice to Highball glass. Muddle until the mint breaks apart. Add rum and ice to fill 0.75 of the glass. Top with prosecco. Add 3 dashes of bitters. Garnish with mint spring. Best to use crushed ice with this cocktail if possible!', 'http://tikiloungetalk.com/wp-content/uploads/2011/07/queens-park-swizzle.jpg', 3, 2),
('Bacardí Friendsgiving Rum Punch', '0.5 oz. Bacardí Gold Rum; 0.5 oz. Bacardí Superior Rum; 1.5 oz. Fresh Apple Cider; 1 oz Lemonade (sweetened); 0.25 tsp. Pumpkin Pie Spice', 'Combine all ingredients in a shaker with ice and shake well. Strain over rocks glass with fresh ice. Garnish with a cinnamon stick and an apple slice.', 'http://del.h-cdn.co/assets/16/34/480x720/apple-pie-on-the-rocks-1.jpg', 4, 2),
-- Tequila (Winter, Spring, Summer, Fall)
('Turmeric Fizz', '1 oz. Cazadores Tequila Reposado; 1 oz. Dolin Dry Vermouth; 1 oz. Tumeric Syrup; 0.5 oz. Fresh Lemon Juice; 0.25 oz. Fresh Orange Juice; 2 oz. Soda', 'Add cubed ice to glass (Teku), add juices and soda. Garnish with blood orange slice.', 'http://images.dailyhive.com/20170111124346/Screen-Shot-2017-01-11-at-12.40.23-PM.png', 1, 3),
('The Bell Garden', '1.5 oz. Tapatio Tequila; 3.4 oz. Fresh Lime Juice; 0.75 oz. Grapefruit Juice; 0.5 Cocchi Americano; 0.5 oz. Honey', 'Shake and strain into chilled Nick & Nora glass. Garnish with an orange twist (optional garnish).', 'https://s-media-cache-ak0.pinimg.com/564x/7a/c9/4f/7ac94f2403835558dc202608505ea17a.jpg', 2, 3),
('Melatarita', '1.25 oz. Blanco Tequila; 2 oz. Honeydew Juice; 0.5 oz.Fresh Lime Juice; 0.5 oz. Fresh Lemon Juice; 0.5 oz. Triple Sec; 0.25 oz. Agave', 'Shake ingredients in shaker. Pour into Margarita glass. Top with prosecco. Garnish with a lime and mint (optional mint garnish).', 'https://s-media-cache-ak0.pinimg.com/236x/bf/1e/b6/bf1eb682842ee031ccd1ce6e3da42fd5.jpg', 3, 3),
('The Truffle Pig', '1 oz. Añejo Tequila; 0.5 cup Honey; 2 Rosemary Sprigs; 1 Cinnamon Stick; 2 oz. Hen of the Woods Mushrooms; 1 tsp. Ground Cinnamon; 1 tsp. Sugar; 0.25 tsp. Salt; 1 oz. Fresh Lemon Juice', 'Bring 0.5 cup each honey and water, 2 rosemary springs and 1 cinnamon stick to a boil in saucepan. Let syrup cool and strain. Brown 2 oz.hen of the woods mushrooms in a dry skillet; let cool. Mix 1 tsp. each ground cinnamon and sugar and 0.25 tsp. salt on a plate. Dip rim of serving glass in a shallow plate filled with lemon juice and dip in sugar mixture. Muddle all but 1 of the mushrooms with 1 oz. each syrup and lemon juice ina shaker. Add 2 oz. tequila and ice. Shake and strain into glass. Garnish with remaining mushroom.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2014/Fungus-Cocktails_2000x3000.jpg?itok=CI7zIvqh', 4, 3),
-- Mezcal (Winter, Spring, Summer, Fall)
('Moradita', '2 tbsp. Beet Purée; 0.75 oz. Triple Sec; 0.5 oz. Jalapeño-infused Mezcal; 0.25 oz. Fresh Lime Juice', 'Combine all ingredients in a shaker filled with ice. Shake well and strain into a chilled coupe glass.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/beet-margarita_2000x1500.jpg?itok=gOVkVDS7&fc=50,50', 1, 4),
('Fennel Delight', '1.5 oz. Mezcal, 3 Slices Fennel (thinly sliced); 0.5 oz. Fresh Lemon Juice; 0.25 oz. Simple Surip; 2 oz. Fresh Grapefruit Juice', 'Muddle fennel with lemon juice and simple syrup in a cocktail shaker. Add grapefruit juice, mezcal and ice and shake well. Strain into a chilled coupe glass. Garnish with fennel.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2014/2014-03/recipe_fennel-delight_1000x1500.jpg?itok=yEneyhM6', 2, 4),
('Beverly Fix', '2 oz. El Silencio Espadin Mezcal; 0.75 oz. Cold Pressed Pineapple Juice; 3.4 oz. Fresh Lime Juice; 0.75 oz. Orgeat; 1 piece Serrano Pepper', 'Muddle serrano pepper in shaker. Add rest of ingredients, shake and strain into rocks glass filled with ice. Garnish with a lime wheel and cherry.', 'http://www.chilipeppermadness.com/media/k2/items/cache/46276ded2fdd3245a9a8536c50ae55dd_M.jpg', 3, 4),
('Devils Garden', '1.5 Chipotle-infused Mezcal; 4-6 Mint Leaves; 0.75 oz. Fresh Lime Juice; 0.75 Agave Nectar; 0.5 Cynar (For the Chipotle-infused Mezcal: 1 Dried Chipotle Pepper; 1 cup Mezcal)', 'For the Chipotle-infused Mezcal: Toast one dried chipotle in a pan over high heat until it begin to smoke slightly, then remove from heat. Place the pepper in a sealable jar, add mezcal, tightly cover and let sit overnight. Remove. For the Cocktail: Add all ingredients to a shaker with ice. Shake well and strain into a chilled coupe glass. Garnish with a mint sprout head.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2013/images/2011-08/7-devils_garden_400.jpg?itok=Q1J6VL_4', 4, 4),
-- Whiskey (Winter, Spring, Summer, Fall)
('Rock Your Face Off Toddy', '2 oz. Mister Katz Rock & Rye (or homemade); 1 tsp. Fresh Lemon Juice; 1 tsp. Honey Syrup (Mix 2 parts honey with 1 part water); 1 dash Fee Brothers Whiskey Barrel Bitters', 'Add ingredients to a toddy or 6 oz. juice glass. Add 3 oz. of hot water and stir. Garnish with a half-lemon wheel in the glass. For prime serving experience, serve cocktail using a french press.', 'http://www.thecookierookie.com/wp-content/uploads/2016/01/cold-remedy-hot-toddy-6-of-8.jpg', 1, 5),
('Blackberried Sour', '2 oz. Whiskey; 5 Blackberries; 5 Mint Leaves; 0.75 Simple Syrup; 0.5 Fresh Lime Juice; 0.5 Fresh Lemon Juice; 1 oz. Sparkling Rose', 'Muddle raspberries and mint leaves in julep cup. To a cocktail shaker, add whiskey (Bulleit Bourbon pictured; use Bulleit Rye Whiskey instead), simple syrup, lime juice and lemon juice. Shake well and add to glass (optional: serve in julep glass). Stir until combined. Add crushed ice until the glass is over-filled. Top with prosecco. Add mint head sprig.', 'https://s-media-cache-ak0.pinimg.com/564x/a3/17/18/a31718de7926648ca5a9b4e8291ebe34.jpg', 2, 5),
('Whiskey Rock-a-Roller', '3 oz. Whiskey; 2 tbsp. Sugar; 5 Raspberries; 1 oz. Fresh Lemon Juice; 0.5 Strawberry Liqueur; 4 dashes Rhubarb Bitters', 'Crush sugar and 4 raspberries in a cocktail shaker. Add the rest of the ingredients and fill with ice. Shake and strain into a chilled old-fashioned glass filled with ice. Garnish with raspberries and mint sprig.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2012/images/2012-03/7-SAV146-WhiskeyRockaRoller-400x679.jpg?itok=Q9MpTn4e', 3, 5),
('Autumn Smash', '2 oz. Whiskey; 0.5 oz. Fresh Lemon Juice; 0.75 Maple Syrup; 1.5 Fuji Apple Juice; 1 Fig; 3 Thai Basil Leaves', 'Muddle the fig and basil, add remaining ingredients, add ice and shake. Strain over fresh ice in a rocks glass. Garnish with two thai basil leaves and half a fig (fig not necessary for garnish but suggested).', 'http://withfoodandlove.com/wp-content/uploads/2016/08/basil-fig-vodka-smash-15.jpg', 4, 5),
-- Bourbon (Winter, Spring, Summer, Fall)
('Hold Back the River', '1.5 oz. Angels Envy Bourbon; 0.75 oz. Red River Cream Liqueur; 0.5 Amontillado sherry; 0.5 oz. black chai honey; 2 pinches ground cinnamon; 2 dashes Scrappys Chocolate Bitters', 'Combine all ingredients, shake and strain into coupe glass. Garnish with microplaned cinnamon, cinnamon stick and rosemary.', 'https://s-media-cache-ak0.pinimg.com/564x/8d/40/67/8d4067cefd4279833a72e5f540c5a92e.jpg', 1, 6),
('Peachy', '2 oz. Bourbon; 1.5 oz. Fresh Lemon Juice; 1.5 oz. Peach Syrup; Sparkling Water (For the Peach Syrup: 1 Chopped Peach up with Pit Removed; 1 cup Water; 1 cup Sugar)', 'Add all ingredients to a cocktail shaker and shake well with ice. Pour into rocks glass filled with ice. Garnish with roasted peach (optional: mint sprig garnish). For the Peach Syrup: place all ingredients in a saucepan over medium-heat. Mash up the peaches. Bring to a simmer, and simmer for ten minutes. Allow to cool and strain into a glass contianer for keeping.', 'http://www.onesweetmess.com/wp-content/uploads/2012/06/Peach-Bourbon-OF-3329.jpg', 2, 6),
('Kentucky Buck', '2 oz. Bourbon; 1 Chopped Strawberry; 0.75 oz. Fresh Lemon Juice; 0.5 oz. Simple Syrup; 2 dashes Angostura Bitters; 2 oz. Ginger Beer', 'Muddle chopped strawberry, lemon juice and simple syrup in a cocktail shaker. Add bourbon, bitters and ice. Shake and strain into an ice-filled highball glass. Top with ginger beer. Garnish with a strawberry slice.', 'http://www.avenuecalgary.com/Mixer-SapporoMargarita-c2286305(1).jpeg', 3, 6),
('I Know What You Did Laz Fall', '2 oz. Chai Tea-infused Bourbon; 2 oz. Persimmon Juice; 0.75 oz. Simply Syrup; 0.5 oz. Lemon Juice; 3 dashes Angostura Bitters', 'Steep bourbon with chai tea bags for 2 hours. Remove tea bags. Add all incredients to shaker filled with ice. Shake well and strain over fresh ice in a rocks glass. Garnish with star anise.', 'http://absente.com/New/wp-content/uploads/2012/11/north_star-1024x680.jpg', 4, 6),
-- Gin (Winter, Spring, Summer, Fall)
('Ginnys Revenge', '2 oz. Gin; 1 oz. Chambord; 0.5  oz. Rosemary-infused Simple Syrup (Miz 1 part water with 1 part granulated sugar and add rosemary spring); 0.75 oz. Fresh Lemon Juice; 1 oz. Pomegranate Juice; dash Fresh Orange Juice', 'Add ingredients to a shaker. Shake with ice until chiled. Pour over large ice cubes. Garnish with pomegranate seeds and rosemary stick. Optional: toast and grind roasted orange peel; add Himalayan Pink Salt; serve as cocktail rim garnish', 'http://www.displacedhousewife.com/wp-content/uploads/2015/12/IMG_8412-1024x1024.jpg', 1, 7),
('The Outlaw', '1.5 oz. Dry Town Gin; 0.75 oz. Fresh Lime Juice; 0.75 oz. Amaro; 3 oz. Ginger Beer', 'Combine all ingredients in a Collins glass. Fill with ice. Garnish with a lime wheel.', 'https://vinepair.com/wp-content/uploads/2017/03/collins-michael.jpg', 2, 7),
('The Fascinator', '1/3 oz. French Dry Vermounth; 2/3 oz. Dry Gin; 2 dashes Absinthe', '1/3 oz. French Dry Vermounth; 2/3 oz. Dry Gin; 2 dashes Absinthe', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2015/drink-1_1000x677_0.jpg?itok=KagMRlgd', 3, 7),
('Amber Negroni', '0.5 oz. Gin; 0.5 oz. Amaro; 1 oz. Lillet Blanc; 1 oz. Fresh Lemon Juice; 3 dashes Bittermens burlesque bitters', 'Combine all ingredients in a cocktail shaker filled with ice. Shake vigorously and strain into a martini glass. Garnish with a rosemary sprig.', 'http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/import/2014/2014-03/recipe_amber-negroni_500x750_0.jpg?itok=IndGrN_o', 4, 7);

-- INSERT INTO spirits_cocktails (spirit_id, cocktail_id) VALUES
-- (1, 1),
-- (1, 2),
-- (1, 3),
-- (1, 4),
-- (2, 5),
-- (2, 6),
-- (2, 7),
-- (2, 8),
-- (3, 9),
-- (3, 10),
-- (3, 11),
-- (3, 12),
-- (4, 13),
-- (4, 14),
-- (4, 15),
-- (4, 16),
-- (5, 17),
-- (5, 18),
-- (5, 19),
-- (5, 20),
-- (6, 21),
-- (6, 22),
-- (6, 23),
-- (6, 24),
-- (7, 25),
-- (7, 26),
-- (7, 27),
-- (7, 28);

