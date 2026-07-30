const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
    res.send("Hello World from Sunil Version 1!");
});

app.listen(PORT, () => {
    console.log(`Application running on port ${PORT}`);
});