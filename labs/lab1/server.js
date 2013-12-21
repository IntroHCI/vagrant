/**
 * Introduction to Human-Computer Interaction
 * Lab 1
 * --------------
 * Created by: Michael Bernstein
 * Last updated: December 2013
 */

// Express is a web framework for node.js
// that makes nontrivial applications easier to build
var express = require('express');
var app = express();

// Compress all pages we send across the wire
// so they transfer faster
app.use(express.compress());

// Return all pages in the /static directory
// whenever they are requested at '/'
// e.g., http://localhost:3000/index.html
// maps to /static/index.html on this machine
app.use(express.static(__dirname + '/static'));

// Start the server
app.listen(process.env.PORT || 3000);