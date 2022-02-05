# Magneticow on Heroku
[Magnetico](https://github.com/boramalper/magnetico) BitTorrent DHT search engine on Heroku.

Magneticow autonomous (self-hosted) BitTorrent DHT search engine suite running on Heroku.

## Heroku Deployment
### Deploy by building it on Heroku's server
You need Heroku CLI

1. Clone this repo
2. Create an app on Heroku
3. Set git remote to Heroku `heroku git:remote -a your-app-name`
4. Set stack to container `heroku stack:set container -a your-app-name`
5. Deploy to Heroku `git push heroku main`

### Deploy by building it on your computer
You need Heroku CLI & Docker

1. Clone this repo
2. Create an app on Heroku
3. Build the image and push to Container Registry `heroku container:push web -a your-app-name`
4. Release the image `heroku container:release web`