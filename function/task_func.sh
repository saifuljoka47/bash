#!/bin/bash
echo -e "Please type your name"
read name

say_name() {
	echo "Hello $1"
}
say_name $name
