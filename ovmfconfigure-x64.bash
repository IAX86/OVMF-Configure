#!/bin.bash
cp /usr/share/ovmf/x64/*.* ./
if [ $? = 0 ]; then
    echo "Complete!"
else
    echo "Error accrupted."
fi