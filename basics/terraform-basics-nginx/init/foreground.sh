FILE=/tmp/wait-background.sh; while ! test -f ${FILE}; do clear; sleep 0.1; done; bash ${FILE}
clear
echo "Scenario Ready!"