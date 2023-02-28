const express = require("express");
const router = express.Router();
const multer = require("multer");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const checkDocAuth = require("../middleware/check-docAuth");

const Employee = require('../models/employee');

router.post("/signup",(req,res,next)=>{
  bcrypt.hash(req.body.password, 10)
    .then(hash => {
      const employee = new Employee({
        name : req.body.name,
        contact : req.body.contact,
        email : req.body.email,
        password : hash,
        role: req.body.role
      });

      employee.save()
        .then(result =>{
          res.status(201).json({
            message : 'Employee Account created!',
            result: result
          });
        })

        .catch(err =>{
          res.status(500).json({
            error :err
          });
        });
    })

});

router.post("/login" , (req, res ,  next)=>{
  let fetchedUser;
  Employee.findOne({email: req.body.email}).then(user=>{
    if(!user){
      return res.status(401).json({
        message: "Auth failed"
      });
    }
    fetchedUser=user;
    return bcrypt.compare(req.body.password, user.password);
  })
  .then(result =>{
    if(!result){
      return res.status(401).json({
        message: "Auth failed"
      });
    }
    const token = jwt.sign(
      {email: fetchedUser.email , userId : fetchedUser ._id, name:fetchedUser.name, contact:fetchedUser.contact , docId:fetchedUser.docId} ,
      'this_is_the_webToken_secret_keys' ,
      { expiresIn : "1h"}
      );
      res.status(200).json({
        token: token,
        expiresIn: 3600,
        name: fetchedUser.name,
        email: fetchedUser.email,
        contact: fetchedUser.contact,
        role: fetchedUser.role,
      });
  })
  .catch(err =>{
    return res.status(401).json({
      message: "Auth failed"
    });
  });
})

router.get("/getEmployeeData",(req,res,next)=>{
  Employee.find().then(documents=>{
    res.status(200).json({
      message : 'Get all employee sucessfully',
      doctors :documents
    });
  });
});

router.get("/:id",(req,res,next)=>{
  Employee.findById(req.params.id).then(employee =>{
    if(employee){
      res.status(200).json(employee);
    }else{
      res.status(200).json({message:'employee not found'});
    }
  });
});

router.put("/:id",(req,res,next)=>{
  bcrypt.hash(req.body.password, 10)
  .then(hash => {
    const employee = new Employee({
      _id: req.body.id,
      name: req.body.name,
      email: req.body.email,
      contact: req.body.contact,
      password: hash,
      role: req.body.role
    });

    Employee.updateOne({_id: req.params.id}, employee)
  .then(result => {
    console.log(result);
    res.status(200).json({message : "Update employee Successful !"});
  })
  .catch(err =>{
    res.status(500).json({
    error :err
   });
});

})
});

router.delete("/:id",(req, res, next) => {
  Employee.deleteOne({ _id: req.params.id }).then(result => {
    console.log(result);
    res.status(200).json({ message: 'Employee deleted!' });
  });
});

router.get("/shoppingcart",(req,res,next)=>{

  console.log("sdfkjashdfjh");
});


module.exports = router;
