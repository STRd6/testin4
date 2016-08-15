computer = "https://cdn.hyperdev.com/us-east-1%3Acba180f4-ee65-4dfc-8dd5-f143280d3c10%2Fcomputer.svg"
recordPlayer = 'https://cdn.hyperdev.com/us-east-1%3Acba180f4-ee65-4dfc-8dd5-f143280d3c10%2Frecord-player.svg'
diamond = "https://cdn.hyperdev.com/us-east-1%3Acba180f4-ee65-4dfc-8dd5-f143280d3c10%2Fdiamond.svg"
clock = "https://cdn.hyperdev.com/us-east-1%3Acba180f4-ee65-4dfc-8dd5-f143280d3c10%2Fclock.svg"
education = "https://cdn.hyperdev.com/us-east-1%3Acba180f4-ee65-4dfc-8dd5-f143280d3c10%2Feducation.svg"
coffee = "https://cdn.hyperdev.com/us-east-1%3Acba180f4-ee65-4dfc-8dd5-f143280d3c10%2Fcoffee2.svg"
shapes = "https://cdn.hyperdev.com/us-east-1%3Acba180f4-ee65-4dfc-8dd5-f143280d3c10%2Fshapes.svg"

# projects and users -> db service later
# one category per project: constraint to encourage mindful categorization

module.exports =

  categories: -> [
      name: 'Start by Remixing'
      url: 'start-by-remixing'
      img: recordPlayer
      color: "#F09A55"
      description: "Start your project off right by remixing these templates."
      id: 1
    ,
      name: 'By HyperDev'
      url: 'by-hyperdev'
      img: computer
      color: "#FCF3B0"
      description: "Whimsical stuff your friends at HyperDev and Fog Creek made to avoid doing actual work."
      id: 2
      # + hyperdev marketing about site
      # + hd community site - this thing!
    ,
      name: 'Getting Started'
      url: 'getting-started'
      img: shapes
      color: "#2AB3B9"
      description: "Databases, emailing and more. The bread and butter basics of modern web dev."
      id: 3
    ,
      name: 'Learn to Code'
      url: 'learn-to-code'
      img: education
      color: "#FFD1C6"
      description: "Learn by doing, then breaking, then doing some more. You got this!"
      id: 4
    ,
      name: 'Tools for Work'
      url: 'tools-for-work'
      img: coffee
      color: "#689ACB"
      description: "Every business is a snowflake. Build and customize your own tools, chat bots and integrations."
      id: 5
    ,
      name: 'Community Picks'
      url: 'community-picks'
      img: diamond
      color: "#9DE0FC"
      description: "Complete apps doing the flyest things ✨"
      id: 6
  ]

  projects: -> [
      name: 'Memory!'
      projectId: 1 # ideally, all I'd to specify is this and the category
      editorUrl: 'coconut-firefly'
      appUrl: 'https://coconut-firefly.hyperdev.space/?theme=dog'
      likes: 26
      remixes: null
      description: 'Memory matching game with different themes for cards'
      users: [
        name: 'etamponi'
        avatar: 'https://avatars3.githubusercontent.com/u/578612?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'Kerbal Space Program'
      projectId: 2
      editorUrl: 'quasar-death'
      appUrl: 'https://quasar-death.hyperdev.space/'
      likes: 18
      remixes: null
      description: "Launch your spaceship into orbit. Don't die."
      users: [
        name: 'InPermutation'
        avatar: 'https://avatars0.githubusercontent.com/u/1096993?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'Pong Solo'
      projectId: 3
      editorUrl: 'crack-thumb'
      appUrl: 'https://crack-thumb.hyperdev.space/'
      likes: 5
      remixes: null
      description: "Play Pong against a brick wall; now even harder to beat!"
      users: [
        name: 'STRd6'
        avatar: 'https://avatars2.githubusercontent.com/u/18894?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'Fancy Soundboard'
      projectId: 4
      editorUrl: 'aquamarine-foot'
      appUrl: 'https://aquamarine-foot.hyperdev.space/'
      likes: 21
      remixes: null
      description: 'Click pictures, listen to sounds, celebrate'
      users: [
          name: 'STRd6'
          avatar: 'https://avatars2.githubusercontent.com/u/18894?v=3&s=48'
        ,
          name: 'pketh'
          avatar: 'https://avatars2.githubusercontent.com/u/877072?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'SVG Editor'
      projectId: 5
      editorUrl: 'jelly-snap'
      appUrl: 'https://jelly-snap.hyperdev.space/'
      likes: 3
      remixes: null
      description: "A thing for making SVG images. Draw with it."
      users: [
          name: 'InPermutation'
          avatar: 'https://avatars0.githubusercontent.com/u/1096993?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'HyperDev Tutorial'
      projectId: 6
      editorUrl: 'denim-warlock'
      appUrl: 'https://denim-warlock.hyperdev.space/'
      likes: 15
      remixes: null
      description: "An introduction to HyperDev to get you building your own apps"
      users: [
          name: 'nancyhawa'
          avatar: 'https://avatars2.githubusercontent.com/u/10010598?v=3&s=48'
      ]
      categoryId: 4
    ,  
      name: 'React Tutorial'
      projectId: 7
      editorUrl: 'shade-king'
      appUrl: 'https://shade-king.hyperdev.space/'
      likes: 4
      remixes: null
      description: "A simple but realistic comments box"
      users: [
        name: 'garethx'
        avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 4
    ,
      name: 'Data Dashboard'
      projectId: 8
      editorUrl: 'square-mare'
      appUrl: 'https://square-mare.hyperdev.space/'
      likes: 13
      remixes: null
      description: "Display data from Google Sheets"
      users: [
        name: 'garethx'
        avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 5
    ,
      name: 'Socket.io Chat'
      projectId: 9
      editorUrl: 'quasar-vole'
      appUrl: 'https://quasar-vole.hyperdev.space/'
      likes: 9
      remixes: null
      description: "A simple chat demo for Socket.io"
      users: [
        name: 'garethx'
        avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 3
    ,
      name: 'Lua Compiler'
      projectId: 10
      editorUrl: 'shag-legs'
      appUrl: 'https://shag-legs.hyperdev.space/'
      likes: 18
      remixes: null
      description: "A basic Lua to x86 Assembly compiler, in JavaScript"
      users: [
        name: 'InPermutation'
        avatar: 'https://avatars0.githubusercontent.com/u/1096993?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'Sending Email'
      projectId: 11
      editorUrl: 'curse-mare'
      appUrl: 'https://curse-mare.hyperdev.space/'
      likes: 8
      remixes: null
      description: "Email sending form with React and Nodemailer"
      users: [
        name: 'garethx'
        avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 3 
    ,
      name: 'API Endpoint'
      projectId: 12
      editorUrl: 'lily-pegasus'
      appUrl: 'https://lily-pegasus.hyperdev.space/'
      likes: 3
      remixes: null
      description: "GET and POST API endpoints using Express"
      users: [
        name: 'garethx'
        avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 3 
    ,
      name: 'MongoDB Example'
      projectId: 13
      editorUrl: 'navy-flower'
      appUrl: 'https://navy-flower.hyperdev.space/'
      likes: 5
      remixes: null
      description: "Connect and add items to a MongoDB"
      users: [
        name: 'garethx'
        avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 3
    ,
      name: 'Authentication Example'
      projectId: 14
      editorUrl: 'maple-dutchess'
      appUrl: 'https://maple-dutchess.hyperdev.space/'
      likes: 9
      remixes: null
      description: "Auth app using Passport.js and OAuth providers"
      users: [
          name: 'bigdogwillfeed'
          avatar: 'https://avatars3.githubusercontent.com/u/4453639?v=3&s=48'
      ]
      categoryId: 3 
    ,
      name: 'Persistence Demo using DynamoDB'
      projectId: 15
      editorUrl: 'typhoon-pine'
      appUrl: 'https://typhoon-pine.hyperdev.space/'
      likes: 9
      remixes: null
      description: "Shows use of the key-value store available in HyperDev"
      users: [
          name: 'etamponi'
          avatar: 'https://avatars3.githubusercontent.com/u/578612?v=3&s=48'
        ,
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'          
      ]
      categoryId: 3 
    ,
      name: 'Backbone.js TodoMVC'
      projectId: 16
      editorUrl: 'plain-thumb'
      appUrl: 'https://plain-thumb.hyperdev.space/'
      likes: 3
      remixes: null
      description: "A Todo list app using Backbone.js"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 1 
    ,
      name: 'Test Before Deploy'
      projectId: 17
      editorUrl: 'blossom-scorpion'
      appUrl: 'https://blossom-scorpion.hyperdev.space/'
      likes: 13
      remixes: null
      description: "Adding tests before deploy with Mocha and Chai"
      users: [
          name: 'etamponi'
          avatar: 'https://avatars3.githubusercontent.com/u/578612?v=3&s=48'
      ]
      categoryId: 3
    ,
      name: 'D3 Server-side SVG Charts'
      projectId: 18
      editorUrl: 'fair-sage'
      appUrl: 'https://fair-sage.hyperdev.space/'
      likes: 2
      remixes: null
      description: "Rendering SVG charts on the server-side with D3"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 1
    ,
      name: 'Browserify Middleware Hello World'
      projectId: 19
      editorUrl: 'yelow-grin'
      appUrl: 'https://yelow-grin.hyperdev.space/'
      likes: 5
      remixes: null
      description: "Basic Browserify Middleware Hello World example"
      users: [
          name: 'STRd6'
          avatar: 'https://avatars2.githubusercontent.com/u/18894?v=3&s=48'
      ]
      categoryId: 1
    ,
      name: 'Sending SMS with Twilio'
      projectId: 20
      editorUrl: 'razor-sprite'
      appUrl: 'https://razor-sprite.hyperdev.space/'
      likes: 9
      remixes: null
      description: "Use Twilio to send SMS alerts on page error"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 3
    ,
      name: 'Map IP Address with Google Maps'
      projectId: 21
      editorUrl: 'ivy-dart'
      appUrl: 'https://ivy-dart.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Maps the location of your IP address"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 3 
    ,
      name: 'Trello Webhook Server'
      projectId: 22
      editorUrl: 'zinc-chopper'
      appUrl: 'https://zinc-chopper.hyperdev.space/'
      likes: 9
      remixes: null
      description: "Lists Trello board activity via webhooks"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 5  
    ,
      name: 'CoffeeScript, Jade & Stylus Sample'
      projectId: 23
      editorUrl: 'foul-raptor'
      appUrl: 'https://foul-raptor.hyperdev.space/'
      likes: 5
      remixes: null
      description: "A really nice way to start your next project"
      users: [
          name: 'pketh'
          avatar: 'https://avatars2.githubusercontent.com/u/877072?v=3&s=48'
      ]
      categoryId: 1 
    ,
      name: 'Simply Done'
      projectId: 24
      editorUrl: 'veil-field'
      appUrl: 'https://veil-field.hyperdev.space/'
      likes: 15
      remixes: null
      description: "A simple, minimalist Todo app"
      users: [
          name: 'enriquesanchez'
          avatar: 'https://avatars2.githubusercontent.com/u/3276087?v=3&s=48'
      ]
      categoryId: 5
    ,
      name: 'Web Scraper Sample'
      projectId: 25
      editorUrl: 'brook-yak'
      appUrl: 'https://brook-yak.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Web scraper using scrape-it"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 3
    ,
      name: 'Bootstrap Geo Template'
      projectId: 26
      editorUrl: 'snapdragon-crown'
      appUrl: 'https://snapdragon-crown.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Geocities theme for Bootsrap 2. Double retro, double broken images."
      users: [
          name: 'STRd6'
          avatar: 'https://avatars2.githubusercontent.com/u/18894?v=3&s=48'
      ]
      categoryId: 4
    ,
      name: 'Slack Bogan Ipsum Slash Command'
      projectId: 27
      editorUrl: 'wheat-flower'
      appUrl: 'https://wheat-flower.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Pretty dang useless, but you can grief all over Slack"
      users: [
          name: 'bigdogwillfeed'
          avatar: 'https://avatars3.githubusercontent.com/u/4453639?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'Learn ASL Alphabet'
      projectId: 28
      editorUrl: 'dawn-haze'
      appUrl: 'https://dawn-haze.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Practice the ASL fingerspelled alphabet"
      users: [
          name: 'jude'
          avatar: 'https://pbs.twimg.com/profile_images/627115681201430528/0rE2ZRqj.jpg'
      ]
      categoryId: 2
    ,
      name: 'Display Data from Excel'
      projectId: 29
      editorUrl: 'void-horn'
      appUrl: 'https://void-horn.hyperdev.space/'
      likes: 9
      remixes: null
      description: "Read and display data from a .xlsx file on Dropbox"
      users: [
          name: 'jude'
          avatar: 'https://pbs.twimg.com/profile_images/627115681201430528/0rE2ZRqj.jpg'
      ]
      categoryId: 5  
    ,
      name: 'L-system Demo'
      projectId: 30
      editorUrl: 'flicker-swoop'
      appUrl: 'https://flicker-swoop.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Example implementation of a Lindenmayer system"
      users: [
          name: 'STRd6'
          avatar: 'https://avatars2.githubusercontent.com/u/18894?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'Slack Channel Sentiment Analysis'
      projectId: 31
      editorUrl: 'mulberry-stealer'
      appUrl: 'https://mulberry-stealer.hyperdev.space/'
      likes: 27
      remixes: null
      description: "Display a sentiment score for your Slack channels"
      users: [
          name: 'nancyhawa'
          avatar: 'https://avatars2.githubusercontent.com/u/10010598?v=3&s=48'
        ,
          name: 'LouManglass' 
          avatar: 'https://avatars3.githubusercontent.com/u/241059?v=3&s=48'        
      ]
      categoryId: 5
    ,
      name: 'Trello Shopping List Generator'
      projectId: 32
      editorUrl: 'forest-mouse'
      appUrl: 'https://forest-mouse.hyperdev.space/'
      likes: 15
      remixes: null
      description: "Auto-generate a shopping list from Trello recipe checklists"
      users: [
          name: 'LouManglass' 
          avatar: 'https://avatars3.githubusercontent.com/u/241059?v=3&s=48'        
      ]
      categoryId: 6
    ,
      name: 'Frog Feels'
      projectId: 33
      editorUrl: 'sky-carver'
      appUrl: 'https://sky-carver.hyperdev.space'
      likes: 36
      remixes: null
      description: 'Draw some feelings, see what everyone else drew weekly'
      users: [
          name: 'pketh'
          avatar: 'https://avatars2.githubusercontent.com/u/877072?v=3&s=48'
      ]
      categoryId: 2
    ,
      name: 'Sass Middleware Demo'
      projectId: 34
      editorUrl: 'spiral-haze'
      appUrl: 'https://spiral-haze.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Example project showing how to use Sass middleware"
      users: [
          name: 'STRd6'
          avatar: 'https://avatars2.githubusercontent.com/u/18894?v=3&s=48'
      ]
      categoryId: 1 
    ,
      name: 'Hoodie Starter Project'
      projectId: 35
      editorUrl: 'sulpher-fang'
      appUrl: 'https://sulpher-fang.hyperdev.space/'
      likes: 9
      remixes: null
      description: "Example project using Hoodie"
      users: [
          name: 'gr2m'
          avatar: 'https://avatars2.githubusercontent.com/u/39992?v=3&s=48'
      ]
      categoryId: 1   
    ,
      name: 'Font Awesome Export tool'
      projectId: 36
      editorUrl: 'beryl-seed'
      appUrl: 'https://beryl-seed.hyperdev.space/'
      likes: 11
      remixes: null
      description: "Creates the mouse cursor and image code for Font Awesome icons"
      users: [
          name: 'olragon'
          avatar: 'https://avatars2.githubusercontent.com/u/47636?v=3&s=48'
      ]
      categoryId: 6
    ,
      name: 'HipChat Add-on'
      projectId: 37
      editorUrl: 'walnut-braid'
      appUrl: 'https://walnut-braid.hyperdev.space/'
      likes: 5
      remixes: null
      description: "A fully functional HipChat add-on running on HyperDev"
      users: [
          name: 'rmanalan'
          avatar: 'https://avatars2.githubusercontent.com/u/549?v=3&s=48'
      ]
      categoryId: 5
    ,
      name: 'Saving User Data with Stormpath'
      projectId: 38
      editorUrl: 'viridian-grass'
      appUrl: 'https://viridian-grass.hyperdev.space/'
      likes: 6
      remixes: null
      description: "An example showing how you can save user data using Stormpath"
      users: [
          name: 'edjiang'
          avatar: 'https://avatars2.githubusercontent.com/u/918770?v=3&s=48'
      ]
      categoryId: 5
    ,
      name: 'Processing.js Sketch'
      projectId: 39
      editorUrl: 'chocolate-panther'
      appUrl: 'https://chocolate-panther.hyperdev.space/'
      likes: 9
      remixes: null
      description: "A hypnotic processing.js sketch"
      users: [
          name: 'JosephLaurino'
          avatar: 'https://avatars2.githubusercontent.com/u/755681?v=3&s=48'
      ]
      categoryId: 6
    ,
      name: 'Postcard Maker'
      projectId: 40
      editorUrl: 'time-mustang'
      appUrl: 'https://time-mustang.hyperdev.space/'
      likes: 19
      remixes: null
      description: "Upload an image and it'll create and post out a postcard"
      users: [
          name: 'margalit'
          avatar: 'https://avatars2.githubusercontent.com/u/2268424?v=3&s=48'
      ]
      categoryId: 6
    ,
      name: 'Simply Firebase app'
      projectId: 41
      editorUrl: 'fish-king'
      appUrl: 'https://fish-king.hyperdev.space/'
      likes: 9
      remixes: null
      description: "A snippets database made with Firebase and with custom templating"
      users: [
          name: 'nakome'
          avatar: 'https://cdn-standard.discourse.org/user_avatar/support.hyperweb.space/nakome/240/255_1.png'
      ]
      categoryId: 3
    ,
      name: 'ES2015 base project'
      projectId: 42
      editorUrl: 'frill-bard'
      appUrl: 'https://frill-bard.hyperdev.space/'
      likes: 13
      remixes: null
      description: "Using Babel with SystemJS for ES2015 projects"
      users: [
          name: 'johntron'
          avatar: 'https://cdn-standard.discourse.org/user_avatar/support.hyperweb.space/johntron/240/262_1.png'
      ]
      categoryId: 1 
    ,
      name: 'Skype Bot'
      projectId: 43
      editorUrl: 'blossom-gambler'
      appUrl: 'https://blossom-gambler.hyperdev.space/'
      likes: 9
      remixes: null
      description: "Basic one-on-one message functionality with the Skype bot API"
      users: [
          name: 'konnichimade'
          avatar: 'https://avatars2.githubusercontent.com/u/11789788?v=3&s=48'
      ]
      categoryId: 5 
    ,
      name: 'Slack Bot'
      projectId: 44
      editorUrl: 'curse-charger'
      appUrl: 'https://curse-charger.hyperdev.space/'
      likes: 19
      remixes: null
      description: "Example Onboarding bot showcasing Slack's Events API"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 5 
    ,
      name: 'P5.js Webpack sample project'
      projectId: 45
      editorUrl: 'hurricane-terrier'
      appUrl: 'https://hurricane-terrier.hyperdev.space/'
      likes: 19
      remixes: null
      description: "An example project that uses Webpack and hot-reload plugin middleware"
      users: [
          name: 'ASRagab'
          avatar: 'https://avatars3.githubusercontent.com/u/1041016?v=3&s=48'
      ]
      categoryId: 1 
    ,
      name: 'Freelancer Start Bootstrap Template'
      projectId: 46
      editorUrl: 'spangle-water'
      appUrl: 'https://spangle-water.hyperdev.space/'
      likes: 11
      remixes: null
      description: "A one page Bootstrap theme for freelancers featuring the Flatly theme"
      users: [
          name: 'davidtmiller'
          avatar: 'https://avatars3.githubusercontent.com/u/8400627?v=3&s=48'
      ]
      categoryId: 4  
    ,
      name: 'Creative Start Bootstrap Template'
      projectId: 47
      editorUrl: 'platinum-waterfall'
      appUrl: 'https://platinum-waterfall.hyperdev.space/'
      likes: 10
      remixes: null
      description: "A one page Bootstrap theme with flexible options for portfolios and businesses"
      users: [
          name: 'davidtmiller'
          avatar: 'https://avatars3.githubusercontent.com/u/8400627?v=3&s=48'
      ]
      categoryId: 4 
   ,
      name: 'CoderDojo Kata: Beginner JavaScript Sushi'
      projectId: 48
      editorUrl: 'regal-hummingbird'
      appUrl: 'https://regal-hummingbird.hyperdev.space/'
      likes: 7
      remixes: null
      description: "Learn the basics of modifying HTML, JavaScript, triggering actions and using jQuery"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 4  
   ,
      name: 'Assets.js: Use relative urls for HyperDev assets'
      projectId: 49
      editorUrl: 'checker-spike'
      appUrl: 'https://checker-spike.hyperdev.space/'
      likes: 8
      remixes: null
      description: "Assets.js allows you to use any path to serve your assets in HyperDev"
      users: [
          name: 'etamponi'
          avatar: 'https://avatars3.githubusercontent.com/u/578612?v=3&s=48'
      ]
      categoryId: 3  
   ,
      name: 'CoderDojo Kata: Intermediate JavaScript Sushi'
      projectId: 50
      editorUrl: 'pebble-spirit'
      appUrl: 'https://pebble-spirit.hyperdev.space/'
      likes: 4
      remixes: null
      description: "Learn about logging, listening, variables, conditionals, arrays and functions"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 4 
   ,
      name: 'Slack Slash Command Handler'
      projectId: 51
      editorUrl: 'twisty-curtain'
      appUrl: 'https://twisty-curtain.hyperdev.space/'
      likes: 14
      remixes: null
      description: "Respond to custom Slash Commands in Slack"
      users: [
          name: 'garethx'
          avatar: 'https://avatars3.githubusercontent.com/u/1830035?v=3&s=48'
      ]
      categoryId: 5       
  ]
