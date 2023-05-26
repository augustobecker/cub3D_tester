#!/bin/bash

#
#
#                                                        :::      ::::::::
#   cub3DTester/check-for-invalid-extension.sh          :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/06/20 23:43:10 by acesar-l          #+#    #+#
#   Updated: 2021/07/15 10:43:41 by acesar-l         ###   ########.fr
#
#

  CYAN="\033[0;36m"
 GREEN="\033[0;32m"
   RED="\033[0;31m"
 RESET="\033[0m"
  FILE1="assets/invalid-files/invalid-extension.txt"
  FILE2="assets/invalid-files/invalid-extension.c"
  FILE3="assets/invalid-files/invalid-extension.cube"
  FILE4="assets/invalid-files/invalid-extension.cub.c"
ERROR1=$(./../cub3D $FILE1 | grep "cub3D: " | wc -l)
ERROR2=$(./../cub3D $FILE2 | grep "cub3D: " | wc -l)
ERROR3=$(./../cub3D $FILE3 | grep "cub3D: " | wc -l)
ERROR4=$(./../cub3D $FILE4 | grep "cub3D: " | wc -l)

if [ ${ERROR1} -ge 1 ]
then
	echo -e -n "${CYAN}Check for Invalid Extension:	          $GREEN  [OK] $RESET"
else
	echo -e -n "${CYAN}Check for Invalid Extension:	          $RED  [KO] $RESET"
fi

if [ ${ERROR2} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR3} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR4} -ge 1 ]
then
	echo -e "$GREEN[OK] $RESET"
else
	echo -e "$RED[KO] $RESET"
fi
