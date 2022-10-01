const express = require("express");
const app = express();
const port = 5000;
const greeting = "Hello world";

app.get("/", (req, res) => res.send({ greeting }));
app.listen(port, () => console.log(`Listening on port ${port}`));
