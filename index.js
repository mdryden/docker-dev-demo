'use strict';

const express = require('express');


// App
const app = express();
app.get('/', (req, res) => {
    res.send('Hello, World!\n');
});


// This is special for cloud run - the usage contract specifies you must listen on the port they supply via the PORT environment variable
// For some other hosting environment, you could hardcode this.
// In dev, we will not provide the port variable, so the app will fall back to 8080
const port = process.env.PORT || 8080;
app.listen(port, () => {
    console.log(`Docker dev demo running on port ${port}`);
});
