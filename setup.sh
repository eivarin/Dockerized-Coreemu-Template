chmod +x core-gui
COMPOSE="docker compose"
if which docker-compose &> /dev/null; then
    COMPOSE="docker-compose"
fi
$COMPOSE build core
echo Run "./core-gui" to start the program