#!/bin/sh

cd "$(dirname "$0")"
rmmod gpio_keys_polled
insmod ./gpio_keys_polled.ko
./MidnightWild
wait
rmmod ./gpio_keys_polled.ko
modprobe gpio_keys_polled