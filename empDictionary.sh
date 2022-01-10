declare -A empAddress

empAddress[john]="USA";
empAddress[Sam]="UK";
empAddress[Raj]="India";

echo ${empAddress[@]};
echo ${!empAddress[@]};

for emp in ${!empAddress[@]}
do
	echo $emp " lives in " ${empAddress[$emp]};
done
