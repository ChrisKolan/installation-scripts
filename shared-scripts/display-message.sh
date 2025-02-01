#!/bin/bash

current_task()
{
  local message="$1"
  local color=36 # Cyan color

  echo ""
  echo ""
  echo "==============================================================================="
  echo -e "\e[${color}m${message}\e[0m"
  ./shared-scripts/operation-date-time.sh
}

