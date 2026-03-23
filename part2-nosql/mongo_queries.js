// OP1: insertMany() – insert all 3 documents
db.products.insertMany([
  {
    product_id: "E001",
    name: "Laptop",
    category: "Electronics",
    price: 55000,
    specs: { brand: "Dell", warranty: "1 year", voltage: "220V" }
  },
  {
    product_id: "C001",
    name: "T-Shirt",
    category: "Clothing",
    price: 1200,
    details: { size: "L", color: "Black", material: "Cotton" }
  },
  {
    product_id: "G001",
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: "2024-01-10",
    details: { nutrition: "Calcium rich", quantity: "1L" }
  }
]);

// OP2: find() – retrieve all Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() – retrieve all Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne() – add discount_percent field
db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() – index on category
db.products.createIndex({ category: 1 });
