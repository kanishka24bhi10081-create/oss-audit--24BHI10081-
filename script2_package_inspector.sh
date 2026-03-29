
PACKAGE="git"
s
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed on this system"
else
    echo "$PACKAGE is NOT installed"
fi

# Print a short description based on package name using case
case $PACKAGE in
    git)
        echo "Git: Free version control tool created by Linus Torvalds"
        ;;
    vlc)
        echo "VLC: Free media player that plays any file format"
        ;;
    firefox)
        echo "Firefox: Free and open web browser by Mozilla"
        ;;
    python3)
        echo "Python: Free programming language built by the community"
        ;;
    *)
        echo "This is an open source software"
        ;;
esac