# ghost

## environment variables

key                           | description
------------------------------|------------------------------
`GHOST_URL` | Public ghost domain

## volumes

path                           | description
------------------------------|------------------------------
`app/content` | ghost images and uploads

## usage

    docker build -rm -t knoopx/ghost ghost/
    docker run -p 49000:2368 -v tmp/data:/app/content -e GHOST_URL="http://docker.local:49000" knoopx/ghost
