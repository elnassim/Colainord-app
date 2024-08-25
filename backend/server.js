const express = require('express');
const app = express();
const authRoutes = require('./authRoutes');
const productRoutes = require('./productRoutes');
const PORT = 8090;

app.use(express.json());

app.use('/auth', authRoutes);
app.use('/products', productRoutes);

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
