const fs = require('fs');
const path = require('path');
const Sequelize = require('sequelize');
const basename = path.basename(__filename);
const db = require('db.js');
const models = {};

models.conn = db();

fs.readdirSync(__dirname).filter(file => {
    return (file.indexOf('.') !== 0) && (file !== basename) && (file.slice(-3) === '.js');
  }).forEach(file => {
    const model = models.conn['import'](path.join(__dirname, file));
    const name = file.split('.')[0];
    models[name] = model;
  });

// Add model relationships here


module.exports = models;

