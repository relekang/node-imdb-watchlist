# imdb-watchlist
[![Build Status](https://travis-ci.org/relekang/node-imdb-watchlist.svg?branch=master)](https://travis-ci.org/relekang/node-imdb-watchlist)
[![Coverage Status](https://coveralls.io/repos/relekang/node-imdb-watchlist/badge.png)](https://coveralls.io/r/relekang/node-imdb-watchlist)

Fetch imdb watchlists based on userid

## Installation
```
npm install --save imdb-watchlist
```

## Usage

```javascript
var imdbWatchlist = require('imdb-watchlist');

imdbWatchlist('ur23098466').then(function (watchlist) {
  // watchlist is an array of objects on the form:
  // { title: '', imdbId: ''}

  // This will log out a random movie from your watchlist
  console.log(watchlist[Math.floor(Math.random() * watchlist.length)]);
});
```

#### Want more info?
Read the [tests](https://github.com/relekang/node-imdb-watchlist/blob/master/test/index.bs) or 
the [source](https://github.com/relekang/node-imdb-watchlist/blob/master/index.bs).
More documentation is coming later..

--------
MIT © Rolf Erik Lekang
