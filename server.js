const express = require('express')

const app = express();

app.use(express.static('lumiashop'));

app.listen(5500, () => console.log('Listening on http://127.0.0.1:5500/'));