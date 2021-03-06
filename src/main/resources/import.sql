INSERT INTO `favorite_db`.`size` (`label`) VALUES ('XS');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('S');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('M');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('L');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('XL');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('XXL');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('34');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('36');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('38');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('40');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('42');
INSERT INTO `favorite_db`.`size` (`label`) VALUES ('44');
INSERT INTO `favorite_db`.`design_type` (`label`) VALUES ('Broderie');
INSERT INTO `favorite_db`.`design_type` (`label`) VALUES ('Autocollant');
INSERT INTO `favorite_db`.`design_type` (`label`) VALUES ('Peinture');
INSERT INTO `favorite_db`.`design` (`id`, `color`, `name`, `price`, `size`, `design_type_label`) VALUES ('1', 'Noir', 'Basquiat', '4.99', '3', 'Peinture');
INSERT INTO `favorite_db`.`design` (`id`, `color`, `name`, `price`, `size`, `design_type_label`) VALUES ('2', 'Rose', 'Fleurs', '5.99', '2', 'Broderie');
INSERT INTO `favorite_db`.`design` (`id`, `color`, `name`, `price`, `size`, `design_type_label`) VALUES ('3', 'Rouge', 'Hourloupe', '3.99', '2', 'Autocollant');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('1', 'manteau_vue_globale', 'MANTEAU_CAPUCHE_1.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('2', 'manteau_detail_1', 'MANTEAU_CAPUCHE_2.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('3', 'manteau_detail_2', 'MANTEAU_CAPUCHE_3.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('4', 'manteau_detail_3', 'MANTEAU_CAPUCHE_4.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('5', 'pantalon_vue_globale', 'PANTALON_1.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('6', 'pantalon_detail', 'PANTALON_2.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('7', 'col_roule_vue_globale', 'PULL_COL_ROULE_1.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('8', 'col_roule_detail_1', 'PULL_COL_ROULE_2.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('9', 'col_rond_vue_globale', 'PULL_COLROND_1.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('10', 'col_rond_detail', 'PULL_COLROND_2.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('11', 'surchemise_vue_globale', 'SURCHEMISE_1.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('12', 'surchemise_detail_1', 'SURCHEMISE_2.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('13', 'surchemise_detail_2', 'SURCHEMISE_3.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('14', 'tshirt_vue_globale', 'T-SHIRT_1.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('15', 'tshirt_detail', 'T-SHIRT_2.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('16', 'basquiat_dino', 'BASQUIAT.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('17', 'broderie_fleurs', 'FLEURS.jpg');
INSERT INTO `favorite_db`.`photo` (`id`, `description`, `path`) VALUES ('18', 'dubuffet_hourloupe', 'HOURLOUPE.jpg');
INSERT INTO `favorite_db`.`product_type` (`name`) VALUES ('Manteaux & Vestes');
INSERT INTO `favorite_db`.`product_type` (`name`) VALUES ('Pulls');
INSERT INTO `favorite_db`.`product_type` (`name`) VALUES ('Chemises');
INSERT INTO `favorite_db`.`product_type` (`name`) VALUES ('TShirts');
INSERT INTO `favorite_db`.`product_type` (`name`) VALUES ('Pantalons');
INSERT INTO `favorite_db`.`product_type` (`name`) VALUES ('Jeans');
INSERT INTO `favorite_db`.`product_type` (`name`) VALUES ('Accessoires');
INSERT INTO `favorite_db`.`product` (`id`, `name`, `price`, `quantity`, `ref_creation_date`, `ref_deletion_date`, `reference`, `product_type_name`) VALUES ('1', 'Pull col rond', '49.99', '0', '2021-01-01', '2021-03-01', 'SS20Pu001', 'Pulls');
INSERT INTO `favorite_db`.`product` (`id`, `name`,`description`, `price`, `quantity`, `ref_creation_date`, `reference`, `product_type_name`) VALUES ('2', 'Parka','Vous prot??ge du vent et de la pluie pour vous garder au sec. Une parka confortable et fonctionnelle qui vous offre une grande libert?? de mouvement.', '89.99', '4', '2021-01-01', 'FW21MV005', 'Manteaux & Vestes');
INSERT INTO `favorite_db`.`product` (`id`, `name`,`description`, `price`, `quantity`, `ref_creation_date`, `reference`, `product_type_name`) VALUES ('3', 'Pantalon','Ce pantalon vous offre un confort et une l??g??ret?? exceptionnels. Un mod??le id??al pour vous suivre dans vos activit??s quotidiennes.', '44.99', '15', '2021-02-01', 'SS21Pa021', 'Pantalons');
INSERT INTO `favorite_db`.`product` (`id`, `name`,`description`, `price`, `quantity`, `ref_creation_date`, `reference`, `product_type_name`) VALUES ('4', 'Pull Col Roul??','Ce pull est confectionn?? en laine m??rinos, une mati??re ??l??gante et douce tr??s appr??ci??e ?? travers le monde.', '34.99', '2', '2021-02-01', 'FW21Pu006', 'Pulls');
INSERT INTO `favorite_db`.`product` (`id`, `name`,`description`, `price`, `quantity`, `ref_creation_date`, `reference`, `product_type_name`) VALUES ('5', 'Chemise Epaisse','Variez vos looks avec cette chemise oversize, en la portant comme une chemise classique ou comme une surchemise.', '49.99', '0', '2021-02-01', 'SS21C023', 'Chemises');
INSERT INTO `favorite_db`.`product` (`id`, `name`,`description`, `price`, `quantity`, `ref_creation_date`, `reference`, `product_type_name`) VALUES ('6', 'T-Shirt','Con??ue dans un souci de perfection, cette pi??ce apparemment simple est aussi exceptionnelle que durable. ', '15.99', '30', '2021-02-01', 'SS21T056', 'TShirts');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Centre avant');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Centre dos');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Epaule gauche');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Epaule droite');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Poche avant droite');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Poche avant gauche');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Poche arriere droite');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Poche arriere gauche');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Genou droit');
INSERT INTO `favorite_db`.`location` (`label`) VALUES ('Genou gauche');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('1', 'Centre avant', 'TShirts');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('2', 'Centre dos', 'TShirts');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('3', 'Epaule droite', 'TShirts');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('4', 'Epaule gauche', 'TShirts');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('5', 'Centre avant', 'Chemises');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('6', 'Centre dos', 'Chemises');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('7', 'Epaule droite', 'Chemises');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('8', 'Epaule gauche', 'Chemises');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('9', 'Centre avant', 'Pulls');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('10', 'Centre dos', 'Pulls');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('11', 'Epaule droite', 'Pulls');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('12', 'Epaule gauche', 'Pulls');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('13', 'Centre avant', 'Manteaux & Vestes');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('14', 'Centre dos', 'Manteaux & Vestes');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('15', 'Epaule droite', 'Manteaux & Vestes');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('16', 'Epaule gauche', 'Manteaux & Vestes');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('17', 'Poche avant droite', 'Jeans');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('18', 'Poche avant gauche', 'Jeans');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('19', 'Poche arriere droite', 'Jeans');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('20', 'Poche arriere gauche', 'Jeans');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('21', 'Poche avant droite', 'Pantalons');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('22', 'Poche avant gauche', 'Pantalons');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('23', 'Poche arriere droite', 'Pantalons');
INSERT INTO `favorite_db`.`product_type_location` (`id`, `location_label`, `product_type_name`) VALUES ('24', 'Poche arriere gauche', 'Pantalons');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('1', '0', '1', '34');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('2', '0', '1', '36');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('3', '0', '1', '38');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('4', '0', '1', '40');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('5', '0', '1', '42');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('6', '0', '1', '44');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('7', '1', '2', '34');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('8', '0', '2', '36');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('9', '2', '2', '38');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('10', '0', '2', '40');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('11', '1', '2', '42');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('12', '0', '2', '44');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('13', '1', '3', 'XS');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('14', '4', '3', 'S');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('15', '0', '3', 'M');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('16', '5', '3', 'L');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('17', '5', '3', 'XL');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('18', '0', '3', 'XXL');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('19', '1', '4', 'XS');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('20', '0', '4', 'S');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('21', '0', '4', 'M');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('22', '0', '4', 'L');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('23', '1', '4', 'XL');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('24', '0', '4', 'XXL');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('25', '0', '5', '34');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('26', '0', '5', '36');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('27', '0', '5', '38');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('28', '0', '5', '40');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('29', '0', '5', '42');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('30', '0', '5', '44');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('31', '5', '6', 'XS');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('32', '5', '6', 'S');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('33', '5', '6', 'M');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('34', '5', '6', 'L');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('35', '5', '6', 'XL');
INSERT INTO `favorite_db`.`stock` (`id`, `quantity`, `product_id`, `size_label`) VALUES ('36', '5', '6', 'XXL');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('1', '9');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('1', '10');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('2', '4');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('2', '3');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('2', '2');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('2', '1');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('3', '5');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('3', '6');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('4', '7');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('4', '8');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('5', '11');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('5', '12');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('5', '13');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('6', '14');
INSERT INTO `favorite_db`.`photos_products` (`product_id`, `photo_id`) VALUES ('6', '15');
INSERT INTO `favorite_db`.`photos_designs` (`photo_id`, `design_id`) VALUES ('16', '1');
INSERT INTO `favorite_db`.`photos_designs` (`photo_id`, `design_id`) VALUES ('17', '2');
INSERT INTO `favorite_db`.`photos_designs` (`photo_id`, `design_id`) VALUES ('18', '3');
INSERT INTO `favorite_db`.`status` (`id`, `name`) VALUES ('1', 'En attente');
INSERT INTO `favorite_db`.`status` (`id`, `name`) VALUES ('2', 'Annul??e');
INSERT INTO `favorite_db`.`status` (`id`, `name`) VALUES ('3', 'Valid??e');
INSERT INTO `favorite_db`.`status` (`id`, `name`) VALUES ('4', 'Envoy??e');
INSERT INTO `favorite_db`.`status` (`id`, `name`) VALUES ('5', 'Re??ue');
INSERT INTO `favorite_db`.`status` (`id`, `name`) VALUES ('6', 'Retour-renvoy??e');
INSERT INTO `favorite_db`.`status` (`id`, `name`) VALUES ('7', 'Retourn??e');
INSERT INTO `favorite_db`.`pay_mode` (`id`, `name`) VALUES ('1', 'Carte Bleue');
INSERT INTO `favorite_db`.`pay_mode` (`id`, `name`) VALUES ('2', 'Paypal');
INSERT INTO `favorite_db`.`vat` (`id`, `rate`) VALUES ('1', '0.2');
INSERT INTO `favorite_db`.`vat` (`id`, `rate`) VALUES ('2', '0.15');
INSERT INTO `favorite_db`.`vat` (`id`, `rate`) VALUES ('3', '0.055');
INSERT INTO `favorite_db`.`vat` (`id`, `rate`) VALUES ('4', '0.021');
INSERT INTO `favorite_db`.`vat` (`id`, `rate`) VALUES ('5', '0.0');
INSERT INTO `favorite_db`.`user_type` (`id`, `name`) VALUES ('1', 'G??rant');
INSERT INTO `favorite_db`.`user_type` (`id`, `name`) VALUES ('2', 'Administrateur');
INSERT INTO `favorite_db`.`user_type` (`id`, `name`) VALUES ('3', 'Client');
INSERT INTO `favorite_db`.`gender` (`id`, `name`) VALUES ('1', 'Femme');
INSERT INTO `favorite_db`.`gender` (`id`, `name`) VALUES ('2', 'Homme');
INSERT INTO `favorite_db`.`gender` (`id`, `name`) VALUES ('3', 'Autre');
INSERT INTO `favorite_db`.`city` (`id`, `name`, `zip_code`) VALUES ('1', 'Bordeaux', '33000');
INSERT INTO `favorite_db`.`city` (`id`, `name`, `zip_code`) VALUES ('2', 'Avignon', '84000');
INSERT INTO `favorite_db`.`city` (`id`, `name`, `zip_code`) VALUES ('3', 'Lyon', '69000');
INSERT INTO `favorite_db`.`user` (`id`, `email`, `login`, `password`, `subscribing_date`, `gender_id`, `user_type_id`) VALUES ('1', 'gerant@gmail.com', 'gerant', 'gerant', '2021-01-01', '2', '1');
INSERT INTO `favorite_db`.`user` (`id`, `email`, `login`, `password`, `subscribing_date`, `gender_id`, `user_type_id`) VALUES ('2', 'admin@gmail.com', 'admin', 'admin', '2021-01-01', '3', '2');
INSERT INTO `favorite_db`.`user` (`id`, `birth_date`, `email`, `login`, `name`, `password`, `phone_number`, `subscribing_date`, `surname`, `gender_id`, `user_type_id`) VALUES ('3', '1883-08-19', 'coco.chanel@gmail.com', 'coco', 'Chanel', 'coco', '01-02-03-04-05', '2021-02-01', 'Coco', '1', '3');
INSERT INTO `favorite_db`.`user` (`id`, `birth_date`, `email`, `login`, `name`, `password`, `phone_number`, `subscribing_date`, `surname`, `gender_id`, `user_type_id`) VALUES ('4', '1933-09-10', 'karl.lagerfeld@gmail.com', 'karl', 'Lagerfeld', 'karl', '02-03-04-05-06', '2021-02-03', 'Karl', '2', '3');
INSERT INTO `favorite_db`.`user` (`id`, `birth_date`, `email`, `login`, `name`, `password`, `phone_number`, `subscribing_date`, `surname`, `gender_id`, `user_type_id`) VALUES ('5', '1953-04-24', 'jeanpaul.gaultier@gmail.com', 'jeanpaul', 'Gaultier', 'jeanpaul', '03-04-05-06-07', '2021-02-04', 'Jean-Paul', '2', '3');
INSERT INTO `favorite_db`.`user` (`id`, `birth_date`, `email`, `login`, `name`, `password`, `phone_number`, `subscribing_date`, `surname`, `unsubscribing_date`, `gender_id`, `user_type_id`) VALUES ('6', '1905-01-21', 'christian.dior@gmail.com', 'christian', 'Dior', 'christian', '04-05-06-07-08', '2021-01-02', 'Christian', '2021-03-01', '2', '3');
INSERT INTO `favorite_db`.`address` (`id`, `name`, `street`, `city_id`, `user_id`) VALUES ('1', 'address1', '23 avenue de Merignac', '1', '3');
INSERT INTO `favorite_db`.`address` (`id`, `name`, `street`, `city_id`, `user_id`) VALUES ('2', 'address2', '12 place Gambetta', '1', '3');
INSERT INTO `favorite_db`.`address` (`id`, `name`, `street`, `city_id`, `user_id`) VALUES ('3', 'address1', '14 rue Saint Catherine', '1', '4');
INSERT INTO `favorite_db`.`address` (`id`, `name`, `street`, `city_id`, `user_id`) VALUES ('4', 'address2', '125 rue Carnot', '2', '4');
INSERT INTO `favorite_db`.`address` (`id`, `name`, `street`, `city_id`, `user_id`) VALUES ('5', 'address1', '36 rue Gasparin', '3', '5');
INSERT INTO `favorite_db`.`address` (`id`, `name`, `street`, `city_id`, `user_id`) VALUES ('6', 'address1', '25 rue Thiers', '2', '6');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `delivery_date`, `reference`, `shipping_date`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('1', '2021-02-01 16:14:32', '2021-02-06', 'CMD0001_USR00006', '2021-02-03 10:03:21', '121.94', '121.94', '6', '6', '1', '4', '6', '5');
INSERT INTO `favorite_db`.`command` (`id`, `cancel_date`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('2', '2021-02-05 12:04:57', '2021-02-04 11:12:42', 'CMD0002_USR00006', '117.96', '117.96', '6', '6', '1', '2', '6', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `delivery_date`, `delivery_return_date`, `reference`, `return_date`, `shipping_date`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('3', '2021-02-05 14:12:35', '2021-02-06 ', '2021-02-08', 'CMD0003_USR00006', '2021-02-10', '2021-02-06 09:25:31', '49.99', '49.99', '6', '6', '1', '7', '6', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `delivery_date`, `reference`, `shipping_date`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('4', '2021-02-01 15:25:12', '2021-02-06', 'CMD0001_USR00003', '2021-02-02 09:12:41', '117.95', '117.95', '1', '2', '1', '5', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('5', '2021-05-23 14:14:56', 'CMD0002_USR00003', '129.97', '129.97', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `shipping_date`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('6', '2021-05-23 14:14:56', 'CMD0003_USR00003', '2021-05-24', '149.94', '149.94', '2', '2', '1', '4', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('7', '2021-05-23 14:14:56', 'CMD0004_USR00003', '55.98', '55.98', '2', '1', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('8', '2021-05-23 14:14:56', 'CMD0005_USR00003', '187.96', '187.96', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('9', '2021-05-23 14:14:56', 'CMD0006_USR00003', '92.94', '92.94', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `delivery_date`, `reference`, `shipping_date`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('10', '2021-05-15 14:14:56', '2021-05-23', 'CMD0007_USR00003', '2021-05-17', '55.98', '55.98', '1', '2', '2', '5', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `delivery_date`, `delivery_return_date`, `reference`, `return_date`, `shipping_date`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('11', '2021-05-10 14:14:56', '2021-05-15', '2021-05-21', 'CMD0008_USR00003', '2021-05-17', '2021-05-11', '79.98', '79.98', '1', '2', '1', '7', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `cancel_date`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('12', '2021-05-24', '2021-05-23', 'CMD0009_USR00003', '196.93', '196.93', '1', '2', '1', '2', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('13', '2021-05-24 14:14:56', 'CMD0010_USR00003', '179.98', '179.98', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('14', '2021-05-25 14:14:56', 'CMD0011_USR00003', '212.93', '212.93', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('15', '2021-05-26 14:14:56', 'CMD0012_USR00003', '152.94', '152.94', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('16', '2021-05-27 14:14:56', 'CMD0013_USR00003', '229.97', '229.97', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('17', '2021-05-28 14:14:56', 'CMD0014_USR00003', '77.97', '77.97', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('18', '2021-05-29 14:14:56', 'CMD0015_USR00003', '49.99', '49.99', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('19', '2021-05-30 14:14:56', 'CMD0016_USR00003', '79.98', '79.98', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('20', '2021-05-31 14:14:56', 'CMD0017_USR00003', '184.96', '184.96', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`, `reference`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('21', '2021-06-01 14:14:56', 'CMD0018_USR00003', '257.95', '257.95', '1', '2', '1', '1', '3', '5');
INSERT INTO `favorite_db`.`command` (`id`, `creation_date`,`delivery_date`, `reference`,`return_date`,`shipping_date`, `tax_in_price`, `tax_out_price`, `delivery_address_id`, `facturation_address_id`, `pay_mode_id`, `status_id`, `user_id`, `vat_id`) VALUES ('22', '2021-06-01 14:14:56', '2021-06-03 14:14:56', 'CMD0022_USR00025','2021-06-03 20:14:56','2021-06-02 14:14:56', '384.97', '384.97', '1', '2', '1', '6', '3', '5');

INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('1', '60.97', '1', '2', '1', '36');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('2', '39.99', '2', '1', '2', '38');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('3', '25.99', '6', '3', '2', 'M');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('4', '49.99', '4', '1', '3', 'XL');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('5', '43.98', '2', '2', '4', '40');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('6', '89.99', '5', '1', '4', '42');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('7', '49.99', '1', '1', '5', '34');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('8', '39.99', '2', '2', '5', '42');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('9', '49.98', '3', '3', '6', 'XL');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('10', '55.98', '4', '1', '7', 'XS');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('11', '93.98', '5', '2', '8', '34');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('12', '30.98', '6', '3', '9', 'XS');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('13', '55.98', '1', '1', '10', '38');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('14', '39.99', '2', '2', '11', '44');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('15', '48.98', '3', '3', '12', 'XS');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('16', '49.99', '4', '1', '12', 'M');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('17', '89.99', '5', '2', '13', '38');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('18', '25.99', '6', '3', '14', 'S');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('19', '54.98', '1', '1', '14', '42');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('20', '39.99', '2', '2', '14', '36');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('21', '50.98', '3', '3', '15', 'M');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('22', '49.99', '4', '1', '16', 'L');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('23', '89.99', '5', '2', '16', '36');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('24', '25.99', '6', '3', '17', 'XS');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('25', '49.99', '1', '1', '18', '38');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('26', '39.99', '2', '2', '19', '40');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('27', '44.99', '3', '3', '20', 'S');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('28', '49.99', '4', '1', '20', 'L');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('29', '89.99', '5', '2', '21', '42');
INSERT INTO `favorite_db`.`article` (`id`, `price`, `product_id`, `quantity`,`command_id`, `size_label`) VALUES ('30', '25.99', '6', '3', '21', 'XL');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('1', '4.99', '1', '1', '14');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('2', '5.99', '1', '2', '15');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('3', '3.99', '5', '3', '14');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('4', '4.99', '9', '1', '13');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('5', '5.99', '10', '2', '15');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('6', '3.99', '11', '3', '14');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('7', '4.99', '12', '1', '16');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('8', '5.99', '13', '2', '6');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('9', '3.99', '15', '3', '13');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('10', '4.99', '19', '1', '14');
INSERT INTO `favorite_db`.`custom` (`id`, `price`, `article_id`, `design_id`, `product_type_location_id`) VALUES ('11', '5.99', '21', '2', '15');
