const mongoose = require('mongoose');
const uniqueValidator = require('mongoose-unique-validator');

const EmployeeSchema = mongoose.Schema({
  name: {type: String , require:true},
  contact: {type: String , require:true},
  email: {type: String , require:true, unique:true} ,
  role: {type: String , require:true},
  password: {type: String , require:true},
  dateTime: {type: Date, default: Date.now , require:true}
});

EmployeeSchema.plugin(uniqueValidator);

module.exports = mongoose.model('Employee',EmployeeSchema);
