const express = require('express');
const app = express();
const Sequelize = require('sequelize');

/* DB_CONFIG */
const DB_HOST = 'localhost';
const DB_NAME = 'node_test';
const DB_USER = 'root';
const DB_PASSWORD = '';

const sequelize = new Sequelize(DB_NAME, DB_USER, DB_PASSWORD, {
    host: DB_HOST,
    dialect: 'mysql',
});
const helpers = require('./helpers');
const db = require('./src/db');

app.set("twig options", {
    allow_async: true, // Allow asynchronous compiling
    strict_variables: false
});

sequelize
    .authenticate()
    .then(() => {
        console.log('Connection has been established successfully.');
    })
    .catch(err => {
        console.error('Unable to connect to the database:', err);
    });

app.use('/css', express.static('css'));
app.use('/src', express.static('src'));

app.get('/', (req, res) => {
    res.render('delay.twig', {
        message: "Delay"
    });
});

app.get('/counter', (req, res) => {
    res.render('counter.twig', {
        message: "Counter"
    });
});

app.get('/users', (req, res) => {
    db.User.findAll({
        where: {
            id: {
                [Sequelize.Op.gte]: 20
            }
        },
        limit: 20
    }).then((users) => {
        res.render('users.twig', {
            users: users,
        });
    }).catch((err) => {
        console.log(err);
    });
});

app.get('/exchanges', (req, res) => {
    helpers.getExchangeByDay(7).then((data) => {
        let exchanges = [];
        if (data[0].error) {
            res.render('exchanges.twig', {
                error: 'Oops! Refresh the page later!'
            });
        } else {
            data.map(item => {
                exchanges.push({date: item[0].exchangedate, usd: item[0].rate, eur: item[1].rate})
            });
            res.render('exchanges.twig', {
                exchanges: exchanges,
                message: 'Exchanges'
            });
        }
    });
});

app.get('/api/exchanges', (req, res) => {
    helpers.getExchangeByDay(7).then((data) => {
        let json = [];
        data.map(item => {
            json.push({date: item[0].exchangedate, usd: item[0].rate, eur: item[1].rate})
        });
        res.json(json);
    });
});

app.get('/api/users', (req, res) => {
    let count = 20;
    if (req.query.count !== undefined && req.query.count !== '') {
        count = req.query.count;
    }
    db.User.findAll({
        where: {
            id: {
                [Sequelize.Op.gte]: 20
            }
        },
        limit: parseInt(count)
    }).then((users) => {
        res.json(users);
    }).catch((err) => {
        console.log(err);
    });
});

app.use((req, res, next) => {
    res.status(404).render('404.twig');
});

app.listen(3000, () => console.log('Listening port 3000!'));
