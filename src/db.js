const Sequelize = require('sequelize');
const sequelize = new Sequelize('node_test', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
});
const User = sequelize.define('users', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: Sequelize.STRING,
    email: {type: Sequelize.STRING, unique: true},
    status: Sequelize.BOOLEAN,
});
module.exports = {
    User
};
