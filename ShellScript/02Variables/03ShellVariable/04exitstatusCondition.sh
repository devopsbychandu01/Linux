#!/bin/sh
lskdf
if $? -ne 0
then
echo "script failed"
else
echo "script successful"
fi