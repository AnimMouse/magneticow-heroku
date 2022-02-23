# Magneticow on Heroku
[Magnetico](https://github.com/boramalper/magnetico) BitTorrent DHT search engine on Heroku.

Magneticow autonomous (self-hosted) BitTorrent DHT search engine suite running on Heroku.

Database must be compressed in zstd.

## Heroku Deployment
### Deploy by building it on Heroku's server
You need Heroku CLI

1. Clone this repo
2. Create an app on Heroku
3. Set git remote to Heroku `heroku git:remote -a your-app-name`
4. Set stack to container `heroku stack:set container -a your-app-name`
5. Set database URL `heroku config:set DATABASE_URL=https://github.com/AnimMouse/magnetico-actions/releases/latest/download/database.sqlite3.zst`
6. Deploy to Heroku `git push heroku main`

### Deploy by building it on your computer
You need Heroku CLI & Docker

1. Clone this repo
2. Create an app on Heroku
3. Set database URL `heroku config:set DATABASE_URL=https://github.com/AnimMouse/magnetico-actions/releases/latest/download/database.sqlite3.zst`
4. Build the image and push to Container Registry `heroku container:push web -a your-app-name`
5. Release the image `heroku container:release web`