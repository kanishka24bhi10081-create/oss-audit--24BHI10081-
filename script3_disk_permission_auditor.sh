DIRS=("/etc" "/home" "/tmp" "/usr/bin" "/var/log")

echo "Folder Audit Report"
echo "-------------------"

for DIR in "${DIRS[@]}"; do

    if [ -d "$DIR" ]; then

        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')

        
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        
        echo "Folder : $DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo "-------------------"

    else
        echo "Folder $DIR does not exist"
        echo "-------------------"
    fi

done