# Docker utilities - Prefix (docker_...)

# Gets the Gateway ip for connection between host and containers
docker_get_ip() {
    docker network inspect bridge | grep Gateway | sed 's/^[ \t]*//;s/[ \t]*$//'
}

docker_config_no_sudo() {
    sudo groupadd docker
    sudo usermod -aG docker "$USER"
    sudo systemctl restart docker
}

# Removes all dangling images from Docker
docker_rmi_dangling() {
    if [[ $(docker images -f "dangling=true" -q) ]]; then
        docker rmi "$(docker images -f "dangling=true" -q)"
    else
        echo "No dangling images to remove"
    fi
}

# Removes containers images and volumes from Docker
docker_clean() {
	sudo docker container prune --force &&
	sudo docker image prune --force &&
	sudo docker volume prune --force &&
	sudo docker network prune --force 
	
}
