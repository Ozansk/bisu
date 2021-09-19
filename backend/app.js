var express = require("express");
var dotenv = require("dotenv");
var cors = require('cors');

dotenv.config({ path: './.env' })
const app = express();
const port = 5000;

app.use(express.json());
app.use(express.urlencoded({
  extended: false
}));
app.use(cors());
app.use(function(req, res, next) {

    //to allow cross domain requests to send cookie information.
    res.header('Access-Control-Allow-Credentials', true);
    
    // origin can not be '*' when crendentials are enabled. so need to set it to the request origin
    res.header('Access-Control-Allow-Origin',  req.headers.origin);
    
    // list of methods that are supported by the server
    res.header('Access-Control-Allow-Methods','OPTIONS,GET,PUT,POST,DELETE');
    
    res.header('Access-Control-Allow-Headers', 'X-Requested-With, X-HTTP-Method-Override, Content-Type, Accept, X-XSRF-TOKEN');
    
        next();
});

app.get("/", (req, res) =>{
    res.redirect('/api/getCustomerInfo');
})

app.use('/api', require('./routes/api'));

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}/`);
  });
