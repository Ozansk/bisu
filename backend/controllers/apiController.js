const mysql = require("mysql");

const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE,
    dateStrings: true,
});


exports.CustomerInfo = async (req, res) => {
    number = req.params.phoneNumber;
    db.query("SELECT * FROM subscription WHERE phoneNumber = ?", [number], (err,results)=>{
        if (err){
            res.status(500).json({message:"Sunucu hatası. Lütfen tekrar deneyin."})
        }
        else if(results[0]){
            res.status(200).send(JSON.stringify(results));
        }
        else{
            res.status(403).json({message:"Belirtilen telefona ait kayıt bulunamamıştır."});
        }
    });
}

exports.SubscriptionOrders = async (req, res) => {
    id = req.params.subscriptionId;
    db.query("SELECT * FROM orders WHERE subscriptionId = ?", [id], (err,results)=>{
        if (err){
            res.status(500).json({message:"Sunucu hatası. Lütfen tekrar deneyin."})
        }
        else if(results[0]){
            res.status(200).send(JSON.stringify(results));
        }
        else{
            res.status(403).json({message:"Belirtilen telefona ait kayıt bulunamamıştır."});
        }
    });
}