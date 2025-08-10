# File utils - Prefix (file_...)

file_count_lines() {
  cat $1 | wc -l
}

file_count_words() {
  cat $1 | wc -w
}

file_count_characters() {
  cat $1 | wc -c
}

file_verify_hash(){
    # if file is not entered 
    if [[ -z "$1" ]]; then
        echo "Usage: file_verify_hash <file>"
        return 1
    fi

    openssl dgst -sha256 $1
}
