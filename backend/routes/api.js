const express = require("express");
const apiController = require("../controllers/apiController");
const router = express.Router();


router.get('/getCustomerInfo/:phoneNumber', apiController.CustomerInfo);
router.get('/getSubscriptionOrders/:subscriptionId', apiController.SubscriptionOrders);

module.exports = router;