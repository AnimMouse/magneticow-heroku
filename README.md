# Magneticow on Heroku
[Magnetico](https://github.com/boramalper/magnetico) BitTorrent DHT search engine suite on Heroku.

Magneticow self-hosted lightweight web interface for magnetico BitTorrent DHT search engine on Heroku.

Magnetico database must be compressed in zstd.

## Heroku Deployment
You need Heroku CLI

1. Clone this repository.
2. Create an app on Heroku.
3. Set database URL on config vars `heroku config:set DATABASE_URL=https://github.com/AnimMouse/magneticod-actions/releases/latest/download/database.sqlite3.zst`.

### Deploy by building it on Heroku's server
4. Set git remote to Heroku `heroku git:remote -a your-app-name`.
5. Set stack to container `heroku stack:set container -a your-app-name`.
6. Deploy to Heroku `git push heroku main`.

### Deploy by building it on your computer
You need Docker.

4. Build the image and push to Container Registry `heroku container:push web -a your-app-name`.
5. Release the image `heroku container:release web`.