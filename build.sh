#!/bin/bash

pandoc intro.md -o intro.html && awk '/the.content/ {system("cat intro.html"); next}1' index.template.html > index.html
