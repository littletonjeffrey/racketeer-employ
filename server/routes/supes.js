const express = require('express');
const router = express.Router();
const supesController = require('../controllers/supesController');

router.get('/', supesController.view);




module.exports = router;