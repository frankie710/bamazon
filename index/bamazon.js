var inquirer = require('inquirer');
var mysql = require('mysql');
var items = [];

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password1',
    database: 'bamazonDB'
})

connection.connect(function (err) {
    if (err)
        throw err;
    start();
});

function start() {
    console.log(('Welcome to Bamazon! \n Products'));
    connection.query('SELECT * FROM products', (err, result) => {
        if (err)
            throw (err);
        var items = result;
        console.log(items);
    });

    inquirer.prompt([{
        name: 'name',
        type: 'input',
        message: 'Please enter the ID of the product you wish to purchase.',
        validate: function (value) {
            if (!isNaN(value)) {
                if (parseInt(value) >= 0 && parseInt(value) <= 9) {
                    return true
                }
                else {
                    return false
                }
            }
        }
    },
    {
        name: "quantity",
        type: "input",
        message: "How many would you like to buy?",
        validate: function (value) {
            if (!isNaN(value)) {
                return true
            }
            else {
                return false
            }
        }
    }
    ]).then(function (purchase) {
        //console.log(items[name].Price);
        // var total = ((items[(purchase.name)].Price) * parseInt(purchase.quantity));
        // if (items[(purchase.name)].StockQuantity >= parseInt(purchase.quantity)) {
        //     connection.query('UPDATE products SET ? WHERE ?', [
        //         {Stock_Quantity: (items[(purchase.name)].Stock_Quantity - parseInt(purchase.quantity))},
        //         {id: purchase.name}
        //     ], function (err, result) {
        //         if (err) throw err;
        //         console.log('\n Your purchase is successful! The total cost of your purchase is $' + total + '.');
        //     });
        // } else {
        //     console.log('\n There is insufficient quantity for the items you wish to purchase, sorry!');
        // }
    });
    connection.end();
};


