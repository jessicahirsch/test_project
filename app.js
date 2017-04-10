const express = require('express');
const app = express();
const pgp = require('pg-promise')();
const mustacheExpress = require('mustache-express');
const bodyParser = require("body-parser");
const session = require('express-session');

const bcrypt = require('bcrypt');
const salt = bcrypt.genSalt(10);

app.engine("html", mustacheExpress());
app.set("view engine", "html");
app.set("views", __dirname + "/views");
app.use("/", express.static(__dirname + "/public"));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(session({
  secret: 'SHOEBILLZ',
  resave: false,
  saveUninitialized: true,
  cookie: { secure: false }
}))

var db = pgp("postgres://jessicahirsch@localhost:5432/test_cocktail_app");

app.get('/', function(req, res){
  if (req.session.user) {
    let data = {
      "logged_in": true,
      "email": req.session.user.email
    };
    res.render('index', data);
  } else {
    res.render('index');
  }
});

app.get('/seasons_spirits', function(req, res){
  db
    .any("SELECT * FROM seasons")
    .then(function(seasons_data) {
        db
          .any("SELECT * FROM spirits")
          .then(function(spirits_data) {
            let all_data = {
              seasons: seasons_data,
              spirits: spirits_data
            };
      // console.log(all_data)
          res.render("seasons_spirits/index", all_data);
          });
    });
});

app.post('/seasons_spirits/cocktails', function(req, res) {
  var season_id = req.body.season;
  var spirit_id = req.body.spirit;
  console.log(season_id, spirit_id);
  db
    .any("SELECT * FROM cocktails WHERE season_id = $1 AND spirit_id = $2", [season_id, spirit_id])
    .then(function(data) {
      console.log(data)
      let cocktail_data = {
        cocktails: data
      };
    res.render('cocktails/index', cocktail_data)
  })
});

app.get('/user_cocktails', function(req, res) {
  res.render('user_cocktails')
});

app.get('/user_cocktails/new', function(req, res) {
  res.render('user_cocktails/new')
})

app.post('/user_cocktails/new', function(req, res) {
  var name = req.body.name;
  var ingredients = req.body.ingredients;
  var directions = req.body.directions;
  var seasons = req.body.seasons;
  var spirits = req.body.spirits;
  db
    .none("INSERT INTO user_cocktails (name, ingredients, directions, season_id, spirit_id) VALUES ($1, $2, $3, $4, $5)", [name, ingredients, directions, seasons, spirits])
    .then(function() {
      console.log(name, directions, ingredients, seasons, spirits)
    })
  res.redirect('/user_cocktails/new')
});

app.get('/user_cocktails/winter', function(req, res) {
  var season_id = req.params.id;
   db
    .any("SELECT * FROM user_cocktails WHERE season_id = 1", season_id)
    .then(function(data){
      console.log(data)
      let winter_data = {
        user_cocktails: data
      }
    res.render('user_cocktails/winter', winter_data)
    })
});

app.get('/user_cocktails/spring', function(req, res) {
  var season_id = req.params.id;
   db
    .any("SELECT * FROM user_cocktails WHERE season_id = 2", season_id)
    .then(function(data){
      console.log(data)
      let spring_data = {
        user_cocktails: data
      }
    res.render('user_cocktails/spring', spring_data)
    })
});

app.get('/user_cocktails/summer', function(req, res) {
  var season_id = req.params.id;
   db
    .any("SELECT * FROM user_cocktails WHERE season_id = 3", season_id)
    .then(function(data){
      console.log(data)
      let summer_data = {
        user_cocktails: data
      }
    res.render('user_cocktails/summer', summer_data)
    })
});

app.get('/user_cocktails/fall', function(req, res) {
  var season_id = req.params.id;
   db
    .any("SELECT * FROM user_cocktails WHERE season_id = 4", season_id)
    .then(function(data){
      console.log(data)
      let fall_data = {
        user_cocktails: data
      }
    res.render('user_cocktails/fall', fall_data)
    })
});

//

app.get('/user_cocktails/winter/delete/:id', function(req, res) {
  console.log('test')
  let id = req.params.id
  db
    .none("DELETE FROM user_cocktails WHERE id = $1", [id]);
    res.redirect('/');
})

app.get('/user_cocktails/winter/:id', function(req, res) {
  let id = req.params.id
  db
    .one("SELECT * FROM user_cocktails WHERE id = $1", [id])
    .then(function(data) {
      let winter = {
        name: data.name,
        id: data.id
      }
      res.render('user_cocktails/winter/show', winter)
    })
})

app.get('/user_cocktails/spring/delete/:id', function(req, res) {
  console.log('test')
  let id = req.params.id
  db
    .none("DELETE FROM user_cocktails WHERE id = $1", [id]);
    res.redirect('/');
})

app.get('/user_cocktails/spring/:id', function(req, res) {
  let id = req.params.id
  db
    .one("SELECT * FROM user_cocktails WHERE id = $1", [id])
    .then(function(data) {
      let spring_data = {
        name: data.name,
        id: data.id
      }
      res.render('user_cocktails/spring/show', spring_data)
    })
})

app.get('/user_cocktails/summer/delete/:id', function(req, res) {
  console.log('test')
  let id = req.params.id
  db
    .none("DELETE FROM user_cocktails WHERE id = $1", [id]);
    res.redirect('/');
})

app.get('/user_cocktails/summer/:id', function(req, res) {
  let id = req.params.id
  db
    .one("SELECT * FROM user_cocktails WHERE id = $1", [id])
    .then(function(data) {
      let summer_data = {
        name: data.name,
        id: data.id
      }
      res.render('user_cocktails/summer/show', summer_data)
    })
})

app.get('/user_cocktails/fall/delete/:id', function(req, res) {
  console.log('test')
  let id = req.params.id
  db
    .none("DELETE FROM user_cocktails WHERE id = $1", [id]);
    res.redirect('/');
})

app.get('/user_cocktails/fall/:id', function(req, res) {
  let id = req.params.id
  db
    .one("SELECT * FROM user_cocktails WHERE id = $1", [id])
    .then(function(data) {
      let fall_data = {
        name: data.name,
        id: data.id
      }
      res.render('user_cocktails/fall/show', fall_data)
    })
})

// app.get('/user_cocktails/summer/delete/:id', function(req, res) {
//   console.log('test')
//   let id = req.params.id
//   db
//     .none("DELETE FROM user_cocktails WHERE id = $1", [id]);
//     res.redirect('/');
// })
// app.get('/user_cocktails/delete?user_cocktails={{id}}', function(req, res) {
//   let id = req.params.id
//   db
//     .none("DELETE FROM user_cocktails WHERE id = $1", [id]);
//     res.redirect('/');
// })

// app.delete('/user_cocktails/delete/', function(req, res) {
//   let id = req.params.id
//   db
//     .none("DELETE FROM user_cocktails WHERE id = $1", [id])
//     .then(function(data) {
//       let delete_cocktail_data = {
//         user_cocktails: data
//       }
//       console.log(delete_cocktail_data)
//     res.render('user_cocktails/delete/:id', delete_cocktail_data)
//     });
// });

// app.get('/user', function(req, res) {
//   let data = req.params.id
//   db
//     .any("SELECT * FROM user_cocktails")
//     .then(function(data) {
//       console.log(data)
//        let all_data = {
//         user_cocktails: data
//       }
//       res.render('user', all_data)
//       // res.render('user', all_data)
//     })
// })

// app.delete('/user_cocktails/delete', function(req, res) {
//   let data = req.body
//   db
//     .one("DELETE FROM user_cocktails WHERE id = $1", id)
//     .then(function() {
//       let delete_data = {
//         user_cocktails: data
//       };
//     console.log(delete_data)
//     })
//     res.redirect('user_cocktails/winter')
// })

// app.get('/user_cocktails/update', function(req, res) {
//   res.render('user_cocktails/update')
// })

// app.put('/user_cocktails/update', function(req, res) {
//   db
//     .none("UPDATE user_cocktails SET name = $1 WHERE name = $2",
//       [req.body.name, req.body.user_cocktails.name]
//     ).catch(function() {
//       res.send('Fail.');
//     }).then(function() {
//       res.send('Email updated');
//     });
// });


app.get('/login', function(req, res) {
  res.render('login/index');
});

app.post('/login', function(req, res) {
  let data = req.body;
  console.log(data)
  db
    .one("SELECT * FROM users WHERE email = $1", [data.email])
    .then(function(user) {
      console.log("this is user", user)
      bcrypt.compare(data.password_digest, user.password_digest, function(err, cmp) {
        if (cmp) {
          req.session.user = user;
          res.redirect('/seasons_spirits');
        } else {
          res.send("Invalid email/password. Please try again!");
        }
      })
    })
  .catch(function() {
          res.send('Fail')
      });
});

app.get('/signup', function(req, res){
  res.render('signup/index');
});

app.post('/signup', function(req, res){
  let data = req.body;
  console.log(data);
  bcrypt
    .hash(data.password_digest, 10, function(err, hash) {
      db
        .none ("INSERT INTO users (email, password_digest, first_name, last_name) VALUES ($1, $2, $3, $4)", [data.email, hash, data.first_name, data.last_name])
        .then(function(user) {
        // res.send('User created!');
        res.redirect('/seasons_spirits');
      })
        .catch(function() {
          res.send('Fail')
      });
  });
});

app.listen(3000, function() {
  console.log('The server is running')
});
