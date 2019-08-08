const moment = require('moment');
const requestify = require('requestify');

exports.getExchangeByDay = async function (days) {
    let exchanges = [];
    for (let i = 0; i < days; i++) {
        const date = moment(new Date()).subtract(i, 'days').format('YYYYMMDD');
        await requestify.get('https://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?&date=' + date + '&json').then(res => {
            exchanges.push(res.getBody().filter(item => item.cc == 'USD' || item.cc == 'EUR'));
        }).catch(function (err) {
            exchanges[0] = {error: 'err'};
        });
    }
    return exchanges;
};
