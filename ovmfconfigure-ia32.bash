#!/bin.bash
cp /usr/share/ovmf/ia32/*.* ./
if [ $? = 0 ]; then
    echo "Complete!"
else
    echo "Error accrupted."
fi