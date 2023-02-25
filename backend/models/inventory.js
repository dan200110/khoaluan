const mongoose = require('mongoose');

const inventorySchema = mongoose.Schema({
  supplierId: {type: String , require:true},
  supplierName: {type: String , require:true},
  name: {type: String , require:true},
  quantity: {type: String , require:true},
  expireDate: {type: Date , require:true},
  price: {type: String , require:true},
  imagePath : { type: String , require: true}
})

module.exports = mongoose.model('Inventory',inventorySchema);
