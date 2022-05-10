-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 04:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptop store`
--
CREATE DATABASE IF NOT EXISTS `laptop store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laptop store`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCardPayments` (IN `idIN` INT(11))  DELETE FROM `payment_by_card` WHERE `payment_by_card`.`id` = idIN AND `payment_by_card`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCashPayments` (IN `idIN` INT(11))  DELETE FROM `payment_by_cash` WHERE `payment_by_cash`.`id` = idIN AND `payment_by_cash`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCPU` (IN `idIN` INT(11))  DELETE FROM `cpu` WHERE `cpu`.`id` = idIN AND `cpu`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCustomer` (IN `idIN` INT(11))  DELETE FROM `customer` WHERE `customer`.`id` = idIN AND `customer`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDiscounts` (IN `idIN` INT(11))  DELETE FROM `discounts` WHERE `discounts`.`id` = idIN AND `discounts`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteGPU` (IN `idIN` INT(11))  DELETE FROM `gpu` WHERE `gpu`.`id` = idIN AND `gpu`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteInventory` (IN `idIN` INT(11))  DELETE FROM `inventory` WHERE `inventory`.`id` = idIN AND `inventory`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteLocation` (IN `idIN` INT(11))  DELETE FROM `location` WHERE `location`.`id` = idIN AND `location`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOrders` (IN `idIN` INT(11))  DELETE FROM `orders` WHERE `orders`.`id` = idIN AND `orders`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOrders_x_Products` (IN `idIN` INT(11))  DELETE FROM `orders_x_products` WHERE `orders_x_products`.`id` = idIN AND `orders_x_products`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deletePayment_Type` (IN `idIN` INT(11))  DELETE FROM `payment_type` WHERE `payment_type`.`id` = idIN AND `payment_type`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteProducts` (IN `idIN` INT(11))  DELETE FROM `product` WHERE `product`.`id` = idIN AND `product`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteRam` (IN `idIN` INT(11))  DELETE FROM `ram` WHERE `ram`.`id` = idIN AND `ram`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteReviews` (IN `idIN` INT(11))  DELETE FROM `reviews` WHERE `reviews`.`id` = idIN AND `reviews`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteShippingAddresses` (IN `idIN` INT(11))  DELETE FROM `shipping_address` WHERE `shipping_address`.`id` = idIN AND `shipping_address`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteStores` (IN `idIN` INT(11))  DELETE FROM `stores` WHERE `stores`.`id` = idIN AND `stores`.`is_deleted` = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCardPayments` ()  SELECT * FROM `payment_by_card` WHERE
`payment_by_card`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCashPayments` ()  SELECT * from `payment_by_cash` WHERE
`payment_by_cash`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCPU` ()  SELECT * FROM `cpu` WHERE
`cpu`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCustomers` ()  SELECT * FROM `customer` WHERE
`customer`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllDiscounts` ()  SELECT * FROM `discounts` WHERE
`discounts`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllGPU` ()  SELECT * FROM `gpu` WHERE
`gpu`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllInventory` ()  SELECT * FROM `inventory` WHERE
`inventory`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllLocations` ()  SELECT * from `location` WHERE
`location`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllOrders` ()  SELECT * FROM `orders` WHERE
`orders`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllOrders_x_Products` ()  SELECT * FROM `orders_x_products` WHERE
`orders_x_products`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPayment_types` ()  SELECT * FROM `payment_type` WHERE
`payment_type`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllProducts` ()  SELECT * FROM `product` WHERE
`product`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllRams` ()  SELECT * FROM `ram` WHERE
`ram`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllReviews` ()  SELECT * FROM `reviews` WHERE
`reviews`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllShipping_addresses` ()  SELECT * FROM `shipping_address` WHERE
`shipping_address`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllStores` ()  SELECT * FROM `stores` WHERE
`stores`.`is_deleted` = 0$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getCardPaymentsById` (IN `idIN` INT(11))  SELECT * FROM `payment_by_card` WHERE
`payment_by_card`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getCashPaymentsById` (IN `idIN` INT(11))  SELECT * FROM `payment_by_cash` WHERE
`payment_by_cash`.`id` = idIn$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getCPUById` (IN `idIN` INT(11))  SELECT * FROM `cpu` WHERE `cpu`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getCustomerPhoneByEmail` (OUT `phoneOUT` VARCHAR(255) CHARSET utf8mb4, IN `emailIN` VARCHAR(255) CHARSET utf8mb4)  SELECT `customer`.`phone` INTO phoneOUT FROM `customer` WHERE `customer`.`email`= emailIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getCustomerPhoneByName` (IN `fnameIN` VARCHAR(255) CHARSET utf8mb4, IN `lnameIN` VARCHAR(255) CHARSET utf8mb4)  SELECT `customer`.`phone` FROM `customer` WHERE `customer`.`first_name` = fnameIN AND `customer`.`last_name` = lnameIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getCustomersById` (IN `idIN` INT(11))  SELECT * FROM `customer` WHERE `customer`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getDiscountsById` (IN `idIN` INT(11))  SELECT * from `discounts` WHERE `discounts`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getGPUById` (IN `idIN` INT(11))  SELECT * FROM `gpu` WHERE
`gpu`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getInventoryById` (IN `idIN` INT(11))  SELECT * FROM `inventory` WHERE
`inventory`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getLocationById` (IN `idIN` INT(11))  SELECT * FROM `location` WHERE
`location`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrdersById` (IN `idIN` INT(11))  SELECT * FROM `orders` WHERE
`orders`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrder_x_ProductsById` (IN `idIN` INT(11))  SELECT * from `orders_x_products` WHERE
`orders_x_products`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getPaymentTypeById` (IN `idIN` INT(11))  SELECT * FROM `payment_type` WHERE
`payment_type`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductByRam` (IN `idIN` INT(11))  SELECT * FROM `product` WHERE `product`.`RAM_id` = (SELECT `ram`.`id` FROM `ram` WHERE `ram`.`id` = idIN)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductsByCPU` (IN `idIN` INT(11))  SELECT * FROM `product` WHERE `product`.`CPU_id` = (SELECT `cpu`.`id` FROM `cpu` WHERE `cpu`.`id` = idIN)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductsByGPU` (IN `idIN` INT(11))  SELECT * FROM `product` WHERE `product`.`GPU_id` = (SELECT `gpu`.`id` FROM `gpu` WHERE `gpu`.`id` = idIN)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductsById` (IN `idIN` INT(11))  SELECT * FROM `product` WHERE
`product`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getRamsById` (IN `idIN` INT(11))  SELECT * FROM `ram` WHERE
`ram`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getReviewsById` (IN `idIN` INT(11))  SELECT * FROM `reviews` WHERE
`reviews`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getShipping_AddressesById` (IN `idIN` INT(11))  SELECT * FROM `shipping_address` WHERE
`shipping_address`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStoresById` (IN `idIN` INT(11))  SELECT * FROM `stores` WHERE
`stores`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `groupByInventory` ()  SELECT * FROM `inventory` WHERE `inventory`.`amount` < 500
GROUP BY `inventory`.`product_id`, `inventory`.`date_of_arrival`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InnerJoinInventory` (IN `idIN` INT(11))  SELECT `product`.`name`, `inventory`.`date_of_arrival`, `inventory`.`amount` FROM `product` INNER JOIN `inventory` ON `inventory`.`product_id` = `product`.`id` WHERE `product`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InnerJoinOrders` (IN `idIN` INT(11))  SELECT `orders`.`id` AS order_id,`customer`.`id` AS customer_id, `customer`.`first_name`,`customer`.`last_name`, `orders`.`date`, `orders`.`product_id` FROM `orders` INNER JOIN `customer` ON `orders`.`customer_id`= `customer`.`id` WHERE `customer`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InnerJoinProducts` (IN `idIN` INT(11))  SELECT `product`.`name`, `product`.`screen_size`, `product`.`storage_type`, `product`.`battery`, `product`.`resolution`,`product`.`storage_capacity`,`product`.`OS`, `cpu`.`name` AS cpu_name, `gpu`.`name` AS gpu_name, `ram`.`memory_size` FROM `product` INNER JOIN `cpu` ON `product`.`id` = `cpu`.`id` INNER JOIN `gpu` ON `product`.`id` = `gpu`.`id` INNER JOIN `ram` ON `product`.`id` = `ram`.`id` WHERE `product`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `leftJoinCustomer` (IN `idIN` INT(11))  SELECT `customer`.`first_name`,`customer`.`last_name`, `orders`.`id` AS order_id, `orders`.`date` FROM `customer` LEFT JOIN `orders` ON `customer`.`id` = `orders`.`customer_id` WHERE `customer`.`id` = idIN ORDER BY `customer`.`first_name`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteCardPayment` (IN `idIN` INT(11))  UPDATE `payment_by_card` SET `payment_by_card`.`is_deleted` = 1 WHERE `payment_by_card`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteCashPayment` (IN `idIN` INT(11))  UPDATE `payment_by_cash` SET `payment_by_cash`.`is_deleted` = 1 WHERE `payment_by_cash`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteCPU` (IN `idIN` INT(11))  UPDATE `cpu` SET `cpu`.`is_deleted` = 1 WHERE
`cpu`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteCustomers` (IN `idIN` INT(11))  UPDATE `customer` SET `customer`.`is_deleted` = 1
WHERE `customer`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteDiscounts` (IN `idIN` INT(11))  UPDATE `discounts` SET `discounts`.`is_deleted` = 1
WHERE `discounts`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteGPU` (IN `idIN` INT(11))  UPDATE `gpu` SET `gpu`.`is_deleted` = 1 WHERE `gpu`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteInventory` (IN `idIN` INT(11))  UPDATE `inventory` SET `inventory`.`is_deleted` = 1 WHERE `inventory`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteLocations` (IN `idIN` INT(11))  UPDATE `location` SET `location`.`is_deleted` = 1
WHERE `location`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteOrders` (IN `idIN` INT(11))  UPDATE `orders` SET `orders`.`is_deleted` = 1 WHERE `orders`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteOrders_x_Products` (IN `idIN` INT(11))  UPDATE `orders_x_products` SET `orders_x_products`.`is_deleted` = 1 WHERE `orders_x_products`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeletePayment_Type` (IN `idIN` INT(11))  UPDATE `payment_type` SET `payment_type`.`is_deleted` = 1 WHERE `payment_type`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteProducts` (IN `idIN` INT(11))  UPDATE `product` SET `product`.`is_deleted` = 1 WHERE `product`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteRam` (IN `idIN` INT(11))  UPDATE `ram` SET `ram`.`is_deleted` = 1 WHERE `ram`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteReviews` (IN `idIN` INT(11))  UPDATE `reviews` SET `reviews`.`is_deleted` = 1 WHERE `reviews`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteShippingAddresses` (IN `idIN` INT(11))  UPDATE `shipping_address` SET `shipping_address`.`is_deleted` = 1 WHERE `shipping_address`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logDeleteStores` (IN `idIN` INT(11))  UPDATE `stores` SET `stores`.`is_deleted` = 1 WHERE `stores`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maxInventory` ()  SELECT `inventory`.`product_id`,`inventory`.`date_of_arrival`, MAX(`inventory`.`amount`) AS largest_stock
FROM `inventory` WHERE `inventory`.`amount` = (SELECT MAX(`inventory`.`amount`) FROM `inventory`)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `rightJoinCustomer` (IN `idIN` INT(11))  SELECT `customer`.`first_name`,`customer`.`last_name`, `reviews`.`review`, `reviews`.`rating` FROM `customer` RIGHT JOIN `reviews` ON `customer`.`id` = `reviews`.`customer_id` WHERE `customer`.`id` = idIN ORDER BY `customer`.`first_name`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCardPayment` (IN `idIN` INT(11), IN `cNumberIN` VARCHAR(255) CHARSET utf8mb4, IN `exDateIN` DATE, IN `cvvIN` INT(11), IN `cNameIN` VARCHAR(255) CHARSET utf8mb4, IN `deleteIN` BOOLEAN)  UPDATE `payment_by_card` SET `payment_by_card`.`card_number` = cNumberIN, `payment_by_card`.`card_expiry_date` = exDateIN, `payment_by_card`.`cvv` = cvvIN, `payment_by_card`.`card_holder_name` = cNameIN, `payment_by_card`.`is_deleted` = deleteIN
WHERE `payment_by_card`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCashPayment` (IN `idIN` INT(11), IN `valueIN` INT(11), IN `deleteIN` BOOLEAN)  UPDATE `payment_by_cash` SET `payment_by_cash`.`value` = valueIN, `payment_by_cash`.`is_deleted` = deleteIN
WHERE `payment_by_cash`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCPU` (IN `nameIN` VARCHAR(255) CHARSET utf8mb4, IN `manufacturerIN` VARCHAR(255) CHARSET utf8mb4, IN `frequencyIN` INT, IN `coresIN` INT(11), IN `threadsIN` INT(11), IN `cacheIN` INT(11), IN `deleteIN` BOOLEAN, IN `idIN` INT(11))  UPDATE `cpu` SET `cpu`.`name` = nameIN, `cpu`.`manufacturer` = manufacturerIN, `cpu`.`frequency` = frequencyIN, `cpu`.`cores` = coresIN, `cpu`.`threads` = threadsIN, `cpu`.`cache` = cacheIN, `cpu`.`is_deleted` = deleteIN WHERE `cpu`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCustomer` (IN `idIN` INT(11), IN `fNameIN` VARCHAR(255) CHARSET utf8mb4, IN `lName` VARCHAR(255) CHARSET utf8mb4, IN `DOBIN` DATE, IN `emailIN` VARCHAR(255) CHARSET utf8mb4, IN `pwIN` VARCHAR(255) CHARSET utf8mb4, IN `sAddIN` INT(11), IN `deleteIN` BOOLEAN, IN `phoneIN` VARCHAR(255) CHARSET utf8mb4)  UPDATE `customer` SET `customer`.`first_name` = fNameIN, `customer`.`last_name` = lNameIN, `customer`.`DOB` = DOBIN, `customer`.`email` = emailIN, `customer`.`encrypted_passwords` = pwIN, `customer`.`phone` = phoneIN, `customer`.`shipping_address_id` = sAddIN, `customer`.`is_deleted` = deleteIN
WHERE `customer`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateDiscounts` (IN `idIN` INT(11), IN `percentIN` INT(11), IN `exDateIN` DATETIME, IN `deleteIN` BOOLEAN)  UPDATE `discounts` SET `discounts`.`discount_percent` = percentIN, `discounts`.`discount_expiry_date` = exDateIN, `discounts`.`is_deleted` = deleteIN
WHERE `discounts`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateGPU` (IN `idIN` INT(11), IN `nameIN` VARCHAR(255) CHARSET utf8mb4, IN `manufacturerIN` VARCHAR(255) CHARSET utf8mb4, IN `frequencyIN` DOUBLE, IN `sizeIN` INT(11), IN `typeIN` VARCHAR(255) CHARSET utf8mb4, IN `powerIN` INT(11), IN `deleteIN` BOOLEAN)  UPDATE `gpu` SET `gpu`.`name` = nameIN, `gpu`.`manufacturer` = manufacturerIN, `gpu`.`frequency` = frequencyIN, `gpu`.`memory_size` = sizeIN, `gpu`.`memory_type` = typeIN, `gpu`.`power` = powerIN, `gpu`.`is_deleted` = deleteIN
WHERE `gpu`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateInventory` (IN `idIN` INT(11), IN `productIN` INT(11), IN `dateIN` DATE, IN `amountIN` INT(11), IN `deleteIN` BOOLEAN)  UPDATE `inventory` SET `inventory`.`product_id` = productIN, `inventory`.`date_of_arrival` = dateIN, `inventory`.`amount` = amountIN, `inventory`.`is_deleted` = deleteIN WHERE
`inventory`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateLocation` (IN `idIN` INT(11), IN `cityIN` VARCHAR(255) CHARSET utf8mb4, IN `streetIN` VARCHAR(255) CHARSET utf8mb4, IN `zipcodeIN` VARCHAR(255) CHARSET utf8mb4, IN `deleteIN` BOOLEAN)  UPDATE `location` SET `location`.`city` = cityIN, `location`.`street_name` = streetIN, `location`.`zip_code` = zipcodeIN, `location`.`is_deleted` = deleteIN
WHERE `location`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateOrders` (IN `idIN` INT(11), IN `customerIN` INT(11), IN `paymentIN` INT(11), IN `dateIN` DATE, IN `productIN` INT(11), IN `discountIN` INT(11), IN `deleteIN` BOOLEAN)  UPDATE `orders` SET `orders`.`customer_id` = customerIN, `orders`.`payment_type_id` = paymentIN, `orders`.`date` = dateIN, `orders`.`product_id` = productIN, `orders`.`discounts_id` = discountIN, `orders`.`is_deleted` = deleteIN
WHERE `orders`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateOrders_x_Products` (IN `idIN` INT(11), IN `orderIN` INT(11), IN `productIN` INT(11), IN `deleteIN` BOOLEAN)  UPDATE `orders_x_products` SET `orders_x_products`.`order_id` = orderIN, `orders_x_products`.`product_id` = productIN, `orders_x_products`.`is_deleted` = deleteIN
WHERE `orders_x_products`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePaymentType` (IN `idIN` INT(11), IN `cardIN` INT(11), IN `cashIN` INT(11), IN `taxIN` INT(11), IN `deleteIN` BOOLEAN)  UPDATE `payment_type` SET `payment_type`.`payment_by_card_id` = cardIN, `payment_type`.`payment_by_cash_id` = cashIN, `payment_type`.`tax` = taxIN, `payment_type`.`is_deleted` = deleteIN WHERE `payment_type`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProducts` (IN `idIN` INT(11), IN `deleteIN` BOOLEAN, IN `priceIN` INT(11), IN `categoryIN` VARCHAR(255) CHARSET utf8mb4, IN `sSizeIN` VARCHAR(255) CHARSET utf8mb4, IN `ramIN` INT(11), IN `sTypeIN` VARCHAR(255) CHARSET utf8mb4, IN `sCapacityIN` INT(11), IN `batteryIN` INT(11), IN `bTypeIN` VARCHAR(255) CHARSET utf8mb4, IN `cpuIN` INT(11), IN `gpuIN` INT(11), IN `colorIN` VARCHAR(255) CHARSET utf8mb4, IN `weightIN` DOUBLE, IN `brandIN` VARCHAR(255) CHARSET utf8mb4, IN `osIN` ENUM('Windows 10','Windows 11','Windows 7') CHARSET utf8mb4, IN `descriptionIN` VARCHAR(255) CHARSET utf8mb4, IN `resolutionIN` VARCHAR(255) CHARSET utf8mb4, IN `mNumberIN` VARCHAR(255) CHARSET utf8mb4, IN `uManualIN` VARCHAR(255) CHARSET utf8mb4)  UPDATE `product` SET `product`.`name` = nameIN, `product`.`price` = priceIN, `product`.`category` = categoryIN, `product`.`screen_size` = sSizeIN, `product`.`RAM_id` = ramIN, `product`.`storage_type` = sTypeIN, `product`.`storage_capacity` = sCapacityIN, `product`.`battery` = batteryIN, `product`.`battery_type` = bTypeIN, `product`.`CPU_id` = cpuIN, `product`.`GPU_id` = gpuIN, `product`.`color` = colorIN, `product`.`weight` = weightIN, `product`.`brand` = brandIN, `product`.`OS` = osIN, `product`.`description` = descriptionIN, `product`.`resolution` = resolutionIN, `product`.`model_number` = mNumberIN, `product`.`user_manual` = uManualIN, `product`.`is_deleted` = deleteIN
WHERE `product`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateRam` (IN `idIN` INT(11), IN `nameIN` VARCHAR(255) CHARSET utf8mb4, IN `manufacturerIN` VARCHAR(255) CHARSET utf8mb4, IN `speedIN` INT(11), IN `sizeIN` INT(11), IN `typeIN` VARCHAR(255) CHARSET utf8mb4, IN `deleteIN` BOOLEAN)  UPDATE `ram` SET `ram`.`name` = nameIN, `ram`.`manufacturer` = manufacturerIN, `ram`.`memory_speed` = speedIN, `ram`.`memory_size` = sizeIN, `ram`.`memory_type` = typeIN, `ram`.`is_deleted` = deleteIN WHERE `ram`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateReviews` (IN `idIN` INT(11), IN `reviewIN` VARCHAR(255) CHARSET utf8mb4, IN `customerIN` INT(11), IN `ratingIN` INT(11), IN `deleteIN` INT(11))  UPDATE `reviews` SET `reviews`.`review` = reviewIN, `reviews`.`customer_id` = customerIN, `reviews`.`rating` = ratingIN, `reviews`.`is_deleted` = deleteIN
WHERE `reviews`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateShippingAddress` (IN `idIN` INT(11), IN `sNameIN` VARCHAR(255) CHARSET utf8mb4, IN `sNumberIN` INT(11), IN `aDetailsIN` VARCHAR(255) CHARSET utf8mb4, IN `cityIN` VARCHAR(255) CHARSET utf8mb4, IN `zipcodeIN` VARCHAR(255) CHARSET utf8mb4, IN `deleteIN` BOOLEAN)  UPDATE `shipping_address` SET `shipping_address`.`street_name` = sNameIN, `shipping_address`.`street_no` = sNumberIN, `shipping_address`.`address_details` = aDetailsIN, `shipping_address`.`city` = cityIN, `shipping_address`.`zip_code` = zipcodeIN, `shipping_address`.`is_deleted` = deleteIN
WHERE `shipping_address`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateStores` (IN `idIN` INT(11), IN `deleteIN` BOOLEAN, IN `bNameIN` VARCHAR(255), IN `phoneIN` VARCHAR(255), IN `emailIN` VARCHAR(255), IN `locationIN` INT(11))  UPDATE `stores` SET `stores`.`branch_name` = bNameIN, `stores`.`phone` = phoneIN, `stores`.`email` = emailIN, `stores`.`location_id` = locationIN, `stores`.`is_deleted` = deleteIN
WHERE `stores`.`id` = idIN$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `wildcardProducts` (IN `mNumberIN` VARCHAR(255) CHARSET utf8mb4)  SELECT * FROM `product` WHERE `product`.`model_number` LIKE CONCAT('%',mNumberIN,'%')$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `frequency` double DEFAULT NULL,
  `cores` int(11) DEFAULT NULL,
  `threads` int(11) DEFAULT NULL,
  `cache` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `name`, `manufacturer`, `frequency`, `cores`, `threads`, `cache`, `is_deleted`) VALUES
(1, 'Intel Core i3-1005g1', 'Intel', 1.2, 2, 4, 4, 0),
(2, 'Intel Core i5-1035g1', 'Intel', 1, 4, 8, 6, 0),
(3, 'Intel Core i7-10870H', 'Intel', 2.2, 8, 16, 16, 0),
(4, 'Intel Core i3-1115G4E', 'Intel', 2.2, 2, 4, 6, 0),
(5, 'Intel Core i5-11400F', 'Intel', 2.6, 6, 12, 12, 0),
(6, 'Intel Core i7-11700K', 'Intel', 3.6, 8, 16, 16, 0),
(7, 'Intel Core i3-1220P', 'Intel', 3.3, 10, 12, 12, 0),
(8, 'Intel Core i5-1250PE', 'Intel', 3.2, 12, 16, 12, 0),
(9, 'Intel Core i7-1265UE', 'Intel', 3.5, 10, 12, 12, 0),
(10, 'Intel Core i9-10850K', 'Intel', 3.6, 10, 20, 20, 0),
(11, 'Intel Core i9-11900H', 'Intel', 4.9, 8, 16, 24, 0),
(12, 'Intel Core i9-12900KS', 'Intel', 4, 16, 24, 30, 0),
(13, 'Intel Core i3-10100Y', 'Intel', 1.2, 2, 4, 4, 0),
(14, 'Intel Core i5-1155G7', 'Intel', 2.6, 6, 12, 12, 0),
(15, 'Intel Core i7-1155G7', 'Intel', 2.6, 6, 12, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_passwords` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `DOB`, `email`, `encrypted_passwords`, `phone`, `shipping_address_id`, `is_deleted`) VALUES
(1, 'Bob', 'Ziroll', '2001-05-10', 'myemail@gmail.com', 'anything', '+36123456789', 1, 0),
(2, 'John', 'Doe', '2012-04-11', 'myemail2@gmail.com', 'anything', '+36123456789', 1, 0),
(3, 'James', 'Charles', '2012-04-11', 'myemail3@gmail.com', 'anything', '+36123456789', 1, 0),
(4, 'Robert', 'Decaprio', '2012-04-11', 'myemail4@gmail.com', 'anything', '+36123456789', 1, 0),
(5, 'Johnny', 'Depp', '2012-04-11', 'myemail5@gmail.com', 'anything', '+36123456789', 1, 0),
(6, 'John', 'Marston', '2012-04-11', 'myemail6@gmail.com', 'anything', '+36123456789', 1, 0),
(7, 'Arthur', 'Morgan', '2012-04-11', 'myemail7@gmail.com', 'anything', '+36123456789', 1, 0),
(8, 'Micheal', 'Stanley', '2012-04-11', 'myemail8@gmail.com', 'anything', '+36123456789', 1, 0),
(9, 'Trever', 'Philips', '2012-04-11', 'myemail9@gmail.com', 'anything', '+36123456789', 1, 0),
(10, 'Thomas', 'Eddison', '2012-04-11', 'myemail10@gmail.com', 'anything', '+36123456789', 1, 0),
(11, 'Franklin', 'Clinton', '2012-04-11', 'myemail11@gmail.com', 'anything', '+36123456789', 1, 0),
(12, 'George', 'Bush', '2012-04-11', 'myemail12@gmail.com', 'anything', '+36123456789', 1, 0),
(13, 'Ryan', 'Renalds', '2012-04-11', 'myemail13@gmail.com', 'anything', '+36123456789', 1, 0),
(14, 'Jason', 'Stathom', '2012-04-11', 'myemail14@gmail.com', 'anything', '+36123456789', 1, 0),
(15, 'Micheal', 'Scott', '2012-04-11', 'myemail15@gmail.com', 'anything', '+36123456789', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `discount_percent` int(11) DEFAULT NULL,
  `discount_expiry_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount_percent`, `discount_expiry_date`, `is_deleted`) VALUES
(1, 50, '2022-04-28 23:27:27', 0),
(2, 10, '2022-04-28 23:27:27', 0),
(3, 20, '2022-04-28 23:27:27', 0),
(4, 30, '2022-04-28 23:27:27', 0),
(5, 40, '2022-04-28 23:27:27', 0),
(6, 60, '2022-04-28 23:27:27', 0),
(7, 70, '2022-04-28 23:27:27', 0),
(8, 80, '2022-04-28 23:27:27', 0),
(9, 90, '2022-04-28 23:27:27', 0),
(10, 99, '2022-04-28 23:27:27', 0),
(11, 35, '2022-04-28 23:27:27', 0),
(12, 45, '2022-04-28 23:27:27', 0),
(13, 75, '2022-04-28 23:27:27', 0),
(14, 15, '2022-04-28 23:27:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `frequency` double DEFAULT NULL,
  `memory_size` int(11) DEFAULT NULL,
  `memory_type` varchar(255) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`id`, `name`, `manufacturer`, `frequency`, `memory_size`, `memory_type`, `power`, `is_deleted`) VALUES
(1, 'Nvidia RTX 3090', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(2, 'Nvidia RTX 3090 ti', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(3, 'Nvidia RTX 3080 ti', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(4, 'Nvidia RTX 3080', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(5, 'Nvidia RTX 3070', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(6, 'Nvidia RTX 3070 ti', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(7, 'Nvidia RTX 3050 ti', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(8, 'Nvidia RTX 3050', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(9, 'Nvidia RTX 2080', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(10, 'Nvidia RTX 2080 ti', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(11, 'Nvidia GTX 1060', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(12, 'Nvidia GTX 1650', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(13, 'Nvidia GTX 1070', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(14, 'Nvidia GTX 1080', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0),
(15, 'Nvidia GT 1030', 'Nvidia', 1.7, 24, 'GDDR6X', 350, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `date_of_arrival` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `date_of_arrival`, `amount`, `is_deleted`) VALUES
(1, 1, '2022-04-01', 100, 0),
(2, 2, '2022-04-01', 200, 0),
(3, 3, '2022-04-01', 500, 0),
(4, 4, '2022-04-01', 2000, 0),
(5, 5, '2022-04-01', 100, 0),
(6, 6, '2022-04-01', 100, 0),
(7, 7, '2022-04-01', 100, 0),
(8, 8, '2022-04-01', 100, 0),
(9, 9, '2022-04-01', 1500, 0),
(10, 10, '2022-04-01', 100, 0),
(11, 11, '2022-04-01', 5000, 0),
(12, 12, '2022-04-01', 100, 0),
(13, 13, '2022-04-01', 100, 0),
(14, 14, '2022-04-01', 100, 0),
(15, 15, '2022-04-01', 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `city`, `street_name`, `zip_code`, `is_deleted`) VALUES
(1, 'Pecs', 'Szanto kovacs janos', '7633', 0),
(2, 'Budapest', 'Rakotzi Utca', '7633', 0),
(3, 'Pecs', 'Rakotzi Utca', '7633', 0),
(4, 'Pecs', 'Edison utca', '7633', 0),
(5, 'Budapest', 'Edison utca', '7633', 0),
(6, 'Budapest', 'Korhaz ter', '7633', 0),
(7, 'Pecs', 'Korhaz ter', '7633', 0),
(8, 'Pecs', 'Arkad', '7633', 0),
(9, 'Budapest', 'Arkad', '7633', 0),
(10, 'Budapest', 'Petofi utca', '7633', 0),
(11, 'Pecs', 'Petofi utca', '7633', 0),
(12, 'Pecs', 'uranvaros', '7633', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `discounts_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `payment_type_id`, `date`, `product_id`, `discounts_id`, `is_deleted`) VALUES
(1, 2, 1, '2022-04-01', 1, 1, 0),
(2, 3, 2, '2022-04-01', 2, 2, 0),
(3, 4, 3, '2022-04-01', 3, NULL, 0),
(4, 5, 3, '2022-04-01', 3, NULL, 0),
(5, 6, 5, '2022-04-01', 4, NULL, 0),
(6, 7, 5, '2022-04-01', 4, NULL, 0),
(7, 8, 6, '2022-04-01', 5, 6, 0),
(8, 9, 6, '2022-04-01', 5, 6, 0),
(9, 10, 6, '2022-04-01', 6, 6, 0),
(10, 11, 9, '2022-04-01', 7, 12, 0),
(11, 12, 9, '2022-04-01', 7, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_x_products`
--

CREATE TABLE `orders_x_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_x_products`
--

INSERT INTO `orders_x_products` (`id`, `order_id`, `product_id`, `is_deleted`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 0),
(3, 3, 3, 0),
(4, 4, 4, 0),
(5, 4, 5, 0),
(6, 5, 5, 0),
(7, 5, 6, 0),
(8, 6, 6, 0),
(9, 6, 7, 0),
(10, 6, 8, 0),
(11, 7, 8, 0),
(12, 8, 8, 0),
(13, 10, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_by_card`
--

CREATE TABLE `payment_by_card` (
  `id` int(11) NOT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `card_expiry_date` date DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `card_holder_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_by_card`
--

INSERT INTO `payment_by_card` (`id`, `card_number`, `card_expiry_date`, `cvv`, `card_holder_name`, `is_deleted`) VALUES
(1, '5321804198775678', '2027-04-01', 333, 'John Doe', 0),
(2, '5321804198775678', '2027-04-01', 333, 'Johnny Depp', 0),
(3, '5321804198775678', '2027-04-01', 333, 'James Charles', 0),
(4, '5321804198775678', '2027-04-01', 333, 'Robert Decaprio', 0),
(5, '5321804198775678', '2027-04-01', 333, 'John Marston', 0),
(6, '5321804198775678', '2027-04-01', 333, 'Arthur Morgan', 0),
(7, '5321804198775678', '2027-04-01', 333, 'Micheal Stanley', 0),
(8, '5321804198775678', '2027-04-01', 333, 'Trever Philips', 0),
(9, '5321804198775678', '2027-04-01', 333, 'Thomos Eddison', 0),
(10, '5321804198775678', '2027-04-01', 333, 'Franklin Clinton', 0),
(11, '5321804198775678', '2027-04-01', 333, 'Ryan Renalds', 0),
(12, '5321804198775678', '2027-04-01', 333, 'Jason Statham', 0),
(13, '5321804198775678', '2027-04-01', 333, 'Micheal Scott', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_by_cash`
--

CREATE TABLE `payment_by_cash` (
  `id` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_by_cash`
--

INSERT INTO `payment_by_cash` (`id`, `value`, `is_deleted`) VALUES
(1, 1000, 0),
(2, 500, 0),
(3, 1500, 0),
(4, 2000, 0),
(5, 2500, 0),
(6, 3000, 0),
(7, 3500, 0),
(8, 4000, 0),
(9, 4500, 0),
(10, 5000, 0),
(11, 100, 0),
(12, 200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `payment_by_card_id` int(11) DEFAULT NULL,
  `payment_by_cash_id` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `payment_by_card_id`, `payment_by_cash_id`, `tax`, `is_deleted`) VALUES
(1, 1, NULL, 27, 0),
(2, 2, NULL, 27, 0),
(3, 3, NULL, 27, 0),
(4, 4, NULL, 27, 0),
(5, 5, NULL, 27, 0),
(6, 6, NULL, 27, 0),
(7, 7, NULL, 27, 0),
(8, NULL, 5, 27, 0),
(9, NULL, 6, 27, 0),
(10, NULL, 7, 27, 0),
(11, NULL, 8, 27, 0),
(12, NULL, 11, 27, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `screen_size` varchar(255) DEFAULT NULL,
  `RAM_id` int(11) DEFAULT NULL,
  `storage_type` varchar(255) DEFAULT NULL,
  `storage_capacity` int(11) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `battery_type` varchar(255) DEFAULT NULL,
  `CPU_id` int(11) DEFAULT NULL,
  `GPU_id` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `OS` enum('Windows 10','Windows 11','Windows 7') DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `model_number` varchar(255) DEFAULT NULL,
  `user_manual` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `category`, `screen_size`, `RAM_id`, `storage_type`, `storage_capacity`, `battery`, `battery_type`, `CPU_id`, `GPU_id`, `color`, `weight`, `brand`, `OS`, `description`, `resolution`, `model_number`, `user_manual`, `is_deleted`) VALUES
(1, 'ASUS VivoBook Pro 15 OLED', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 4, 1, 'Black', 3.64, 'Asus', 'Windows 11', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(2, 'ASUS VivoBook Pro 14 OLED', 1000, 'Gaming', '15.6', 2, 'SSD', 512, 60, 'Lithium-ion', 10, 1, 'Black', 3.64, 'Asus', 'Windows 11', 'Asus laptop gaming hehe', '1920x1080', '‎F3500QC-DB71', 'link goes here', 0),
(3, 'HP Pavilion Gaming 15', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 1, 'Black', 3.64, 'Asus', 'Windows 11', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(4, 'Acer Nitro 5', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 1, 'Black', 3.64, 'Asus', 'Windows 11', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(5, 'Dell G5', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 1, 'Black', 3.64, 'Asus', 'Windows 11', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(6, 'Dell G3 15', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 1, '', 3.64, 'Asus', 'Windows 11', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(7, 'Asus TUF Dash F15', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(8, 'Asus ROG Zephyrus G14', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(9, 'Dell Alienware', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(10, 'Lenovo Ideapad Gaming 3', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(11, 'Lenovo Legion 5', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, '', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(12, 'MSI GS66 Stealth', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(13, 'Acer Predator', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(14, 'Asus ROG Stix', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0),
(15, 'Razer Blade', 1000, 'Gaming', '15.6', 1, 'SSD', 512, 60, 'Lithium-ion', 10, 9, 'Black', 3.64, 'Asus', 'Windows 10', 'Asus laptop gaming hehe', '1920x1080', '‎M3500QC-DB71', 'link goes here', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `memory_speed` int(11) DEFAULT NULL,
  `memory_size` int(11) DEFAULT NULL,
  `memory_type` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`id`, `name`, `manufacturer`, `memory_speed`, `memory_size`, `memory_type`, `is_deleted`) VALUES
(1, 'Corsair Vengeance RGB PRO 16GB', 'Corsair', 3200, 8, 'DDR4', 0),
(2, 'G.Skill. Trident Z RGB', 'G.Skill', 3200, 8, 'DDR4', 0),
(3, 'Kingston. HyperX Predator', 'Kingston', 3200, 8, 'DDR4', 0),
(4, 'Kingston. HyperX Fury', 'Kingston', 3200, 8, 'DDR4', 0),
(5, 'Corsair. Dominator Platinum RGB', 'Corsair', 3200, 8, 'DDR4', 0),
(6, 'HyperX. Fury RGB', 'HyperX', 3200, 8, 'DDR4', 0),
(7, 'Adata Spectrix D80', 'Adata', 3200, 8, 'DDR4', 0),
(8, 'G.Skill TridentZ Royal', 'G.Skill', 3200, 8, 'DDR4', 0),
(9, 'Crucial Ballistix Sport', 'Crucial', 3200, 8, 'DDR4', 0),
(10, 'Silicon Power Zenith PowerX', 'Silicon', 3200, 8, 'DDR4', 0),
(11, 'Corsair Vengeance LPX', 'Corsair', 3200, 8, 'DDR4', 0),
(12, 'G.Skill TridentZ Royal', 'G.Skill', 3200, 8, 'DDR4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `customer_id`, `rating`, `is_deleted`) VALUES
(1, 'Excellent 5 stars', 1, 5, 0),
(2, 'Excellent 5 stars', 2, 5, 0),
(3, 'Excellent 5 stars', 3, 5, 0),
(4, 'Excellent 5 stars', 4, 5, 0),
(5, 'Excellent 5 stars', 5, 5, 0),
(6, 'Excellent 5 stars', 6, 5, 0),
(7, 'Excellent 5 stars', 7, 5, 0),
(8, 'Excellent 5 stars', 8, 5, 0),
(9, 'Excellent 5 stars', 9, 5, 0),
(10, 'Excellent 5 stars', 10, 5, 0),
(11, 'Excellent 5 stars', 11, 5, 0),
(12, 'Excellent 5 stars', 12, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `id` int(11) NOT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `street_no` int(11) DEFAULT NULL,
  `address_details` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`id`, `street_name`, `street_no`, `address_details`, `city`, `zip_code`, `is_deleted`) VALUES
(1, 'szanto kovacs janos', 1, 'pte szanto kollegium', 'pecs', '7633', 0),
(2, 'bozorkany utca', 1, 'bozorkany kollegium', 'pecs', '7633', 0),
(3, 'maria utca', 1, 'flat', 'pecs', '7633', 0),
(4, 'veres peter utca', 1, 'flat', 'pecs', '7633', 0),
(5, 'petofi utca', 1, 'flat', 'pecs', '7633', 0),
(6, 'korhaz ter', 1, 'flat', 'pecs', '7633', 0),
(7, 'uranvaros', 1, 'flat', 'pecs', '7633', 0),
(8, 'eidson utca', 1, 'flat', 'pecs', '7633', 0),
(9, 'Near arkad', 1, 'flat', 'pecs', '7633', 0),
(10, 'Near arkad', 1, 'flat', 'budapest', '7633', 0),
(11, 'korhaz ter', 1, 'flat', 'budapest', '7633', 0),
(12, 'veres peter utca', 1, 'flat', 'budapest', '7633', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `branch_name`, `phone`, `email`, `location_id`, `is_deleted`) VALUES
(1, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 1, 0),
(2, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 2, 0),
(3, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 7, 0),
(4, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 6, 0),
(5, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 8, 0),
(6, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 10, 0),
(7, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 12, 0),
(8, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 10, 0),
(9, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 6, 0),
(10, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 10, 0),
(11, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 3, 0),
(12, 'Laptop Mart', '+36123456789', 'myemail@gmail.com', 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_address_id` (`shipping_address_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_type_id` (`payment_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `discounts_id` (`discounts_id`);

--
-- Indexes for table `orders_x_products`
--
ALTER TABLE `orders_x_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment_by_card`
--
ALTER TABLE `payment_by_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_by_cash`
--
ALTER TABLE `payment_by_cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_by_cash_id` (`payment_by_cash_id`),
  ADD KEY `payment_by_card_id` (`payment_by_card_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CPU_id` (`CPU_id`),
  ADD KEY `GPU_id` (`GPU_id`),
  ADD KEY `RAM_id` (`RAM_id`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gpu`
--
ALTER TABLE `gpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_x_products`
--
ALTER TABLE `orders_x_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_by_card`
--
ALTER TABLE `payment_by_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_by_cash`
--
ALTER TABLE `payment_by_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`shipping_address_id`) REFERENCES `shipping_address` (`id`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`discounts_id`) REFERENCES `discounts` (`id`);

--
-- Constraints for table `orders_x_products`
--
ALTER TABLE `orders_x_products`
  ADD CONSTRAINT `orders_x_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orders_x_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD CONSTRAINT `payment_type_ibfk_1` FOREIGN KEY (`payment_by_cash_id`) REFERENCES `payment_by_cash` (`id`),
  ADD CONSTRAINT `payment_type_ibfk_2` FOREIGN KEY (`payment_by_card_id`) REFERENCES `payment_by_card` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CPU_id`) REFERENCES `cpu` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`GPU_id`) REFERENCES `gpu` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`RAM_id`) REFERENCES `ram` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
