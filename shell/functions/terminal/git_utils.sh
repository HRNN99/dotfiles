git_clone_repository(){
    # if user or repository is empty, return instructions
    if [[ -z "$1" || -z "$2" ]]; then
        echo "Usage: git_clone_repository <user> <repository>"
        return 1
    fi

    local input="$1"
    local index="$2"
    local ssh="git@github.com:"

    # Clone the repository using the SSH URL format
    git clone "git@github.com:$1/$2.git"
}
