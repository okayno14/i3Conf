#!/bin/bash

X='HDMI-3'
Y='HDMI-2'

sed -i "s:\(set \$monitor_primary\).*$:\1 ${X}:" out/.config/i3/config
sed -i "s:\(set \$monitor_secondary\).*$:\1 ${Y}:" out/.config/i3/config

