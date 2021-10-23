
--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`customer_id`,`r_id`,`food_id`) USING BTREE,
  ADD KEY `r_id` (`r_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cupons`
--
ALTER TABLE `cupons`
  ADD PRIMARY KEY (`cupon_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `favourite_food`
--
ALTER TABLE `favourite_food`
  ADD PRIMARY KEY (`food_id`,`customer_id`,`r_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `favourite_restaurant`
--
ALTER TABLE `favourite_restaurant`
  ADD PRIMARY KEY (`customer_id`,`r_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`food_id`,`r_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`,`r_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `order_content`
--
ALTER TABLE `order_content`
  ADD PRIMARY KEY (`o_id`,`food_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `o_id` (`o_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`food_id`,`i_id`),
  ADD KEY `i_id` (`i_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `restaurant` (`r_id`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`);

--
-- Constraints for table `favourite_food`
--
ALTER TABLE `favourite_food`
  ADD CONSTRAINT `favourite_food_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `favourite_food_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`),
  ADD CONSTRAINT `favourite_food_ibfk_3` FOREIGN KEY (`r_id`) REFERENCES `restaurant` (`r_id`);

--
-- Constraints for table `favourite_restaurant`
--
ALTER TABLE `favourite_restaurant`
  ADD CONSTRAINT `favourite_restaurant_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `favourite_restaurant_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `restaurant` (`r_id`);

--
-- Constraints for table `food_item`
--
ALTER TABLE `food_item`
  ADD CONSTRAINT `food_item_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `recipe` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `restaurant` (`r_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `payments` (`p_id`);

--
-- Constraints for table `order_content`
--
ALTER TABLE `order_content`
  ADD CONSTRAINT `order_content_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`),
  ADD CONSTRAINT `order_content_ibfk_2` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`),
  ADD CONSTRAINT `order_content_ibfk_3` FOREIGN KEY (`r_id`) REFERENCES `restaurant` (`r_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`coupon_id`) REFERENCES `cupons` (`cupon_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`),
  ADD CONSTRAINT `payments_ibfk_4` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`);

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`i_id`) REFERENCES `ingredients` (`i_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`),
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`r_id`) REFERENCES `restaurant` (`r_id`);
