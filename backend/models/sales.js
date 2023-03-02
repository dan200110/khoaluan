const mongoose = require('mongoose');

const salesSchema = mongoose.Schema({
  drugId: {type: String , require:true},
  drugName: {type: String, require:true},
  price: {type: String , require:true},
  quantity: {type: String , require:true},
  dateTime: {type: Date, default: Date.now , require:true},
})

module.exports = mongoose.model('Sales',salesSchema);
