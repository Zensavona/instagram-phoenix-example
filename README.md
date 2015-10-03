# Elixtagram Phoenix Example

### Try the [Live Demo](https://instagram-phoenix-example.herokuapp.com/) or ![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
This is a simple example demoing Instagram login and API usage with [Phoenix](http://phoenixframework.org) and the [Elixtagram](https://github.com/zensavona/elixtagram) library

### Try it Out

Locally:

  1. Create a `.env` file and assign `INSTAGRAM_CLIENT_ID`, `INSTAGRAM_CLIENT_SECRET` and `INSTAGRAM_REDIRECT_URI=http://localhost:4000/callback`.
  2. Run these commands

````
mix deps.get
mix.phoenix.server
````

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

On Heroku:

Click the button at the top of the page ;)
