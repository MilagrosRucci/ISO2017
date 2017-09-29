#!/bin/bash

echo $(ls ./ | tr b-zB-Z B-Zb-z | tr -d aA ) 

exit 0

