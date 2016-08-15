# // server.js
# // where your node app starts

# // init project
# // https://www.npmjs.com/package/hyperweb-init

express = require 'express'
router = express.Router()
app = express()

coffeeMiddleware = require 'coffee-middleware'
engines = require 'consolidate'
bodyParser = require 'body-parser'
stylish = require 'stylish'
autoprefixer = require 'autoprefixer-stylus'

PORT = process.env.PORT

app.use(express.static('public'))

# sets up jade

app.engine('jade', engines.jade)

# sets up coffee-script support

app.use coffeeMiddleware
  bare: true
  src: "public"
require('coffee-script/register')

app.use bodyParser.urlencoded
  extended: false
app.use bodyParser.json()
app.use bodyParser.text()

# sets up stylus and autoprefixer

app.use stylish
  src: __dirname + '/public'
  setup: (renderer) ->
    renderer.use autoprefixer()
  watchCallback: (error, filename) ->
    if error
      console.log error
    else
      console.log "#{filename} compiled to css"

app.listen PORT, ->
  console.log "Your app is running on #{PORT}"

cors = require('cors');
app.use(cors());

routes = require('./routes')(router);

app.use '/community', router
app.use '/', router
