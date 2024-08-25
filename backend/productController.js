const db = require("./database");

exports.getAllProducts = (req, res) => {
  const query = "SELECT * FROM products";
  db.query(query, (err, results) => {
    if (err) throw err;
    res.json(results);
  });
};

// Define these functions
exports.createProduct = (req, res) => {
  // Add logic for creating a product
};

exports.updateProduct = (req, res) => {
  // Add logic for updating a product
};

exports.deleteProduct = (req, res) => {
  // Add logic for deleting a product
};

// Additional functions for create, update, and delete
