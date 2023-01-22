clone() {
    git clone https://github.com/${PWD##*/}/$1
}

commit() {
    git add .
    git commit -S -m "$1"
    git push
}

release() { 
    ver=$(gh release list | head -1 | awk '{print $1}' | awk -F. '{print $1"."$2"."$3+1}')
    gh release create $ver -t $ver --generate-notes
}


clone-org() {
    gh repo list $1 --limit 1000 | while read -r repo _; do
        gh repo clone "$repo" "$repo"
    done
}