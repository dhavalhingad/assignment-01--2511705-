// OP1: insertMany()
db.products.insertMany([
  {
    product_id: "E101",
    name: "Laptop",
    category: "Electronics",
    price: 60000
  },
  {
    product_id: "C101",
    name: "T-Shirt",
    category: "Clothing",
    price: 1200
  },
  {
    product_id: "G101",
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: new Date("2024-12-30")
  }
]);

// OP2: find Electronics > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: Groceries expiring before 2025
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne()
db.products.updateOne(
  { product_id: "E101" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex()
db.products.createIndex({ category: 1 });
// This index improves search performance when filtering by category