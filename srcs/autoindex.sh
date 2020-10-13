site_conf='/etc/nginx/sites-available/kshantel'
ind_off='autoindex off'
ind_on='autoindex on'

if [ $# -eq 0 ]
then
	echo "please type 0 to turn autoindex off or 1 to turn it on"
	read arg
else
	arg=$1
fi
if (( "$arg" == 0 || "$arg" == 1 ))
then
	if (( "$arg" == 0 ))
	then
		if grep -q "$ind_on" "$site_conf"
		then
			sed -i "s/$ind_on/$ind_off/g" "$site_conf"
			nginx -s reload
		fi
		echo "$ind_off"
	elif (( "$arg" == 1 ))
	then
		if grep -q "$ind_off" "$site_conf"
		then
			sed -i "s/$ind_off/$ind_on/g" "$site_conf"
			nginx -s reload
		fi
		echo "$ind_on"
	fi
exit 0
else
	echo "argument incorrect, please try again"
fi
