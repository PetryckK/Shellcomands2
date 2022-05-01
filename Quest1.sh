#!/bin/bash

ls $1 &> /dev/null && echo "S" || echo "N"