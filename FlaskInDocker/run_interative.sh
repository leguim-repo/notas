docker run -ti --name=FlaskInDockerApp \
    -v $(pwd)/app/:/app/ \
    -p 5000:5000 \
    flaskindocker:latest \
    /bin/sh