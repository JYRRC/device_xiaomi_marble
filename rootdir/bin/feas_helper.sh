#! /vendor/bin/sh

# nohup $MODDIR/FEAShelper /data/feas.txt >/dev/null 2>&1 &
$MODDIR/FEASHelper -c "vendor/bin/feas.txt"