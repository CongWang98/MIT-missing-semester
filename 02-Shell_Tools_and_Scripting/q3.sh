i=0
while true
do 
    bash rarely_fail.sh&>output.tmp
    exitcode=$?
    ((i=i+1))
    if [[ $exitcode -eq 0 ]]
    then
        mv output.tmp success_out.txt
    elif [[ $exitcode -eq 1 ]]
    then
        mv output.tmp fail_out.txt
        echo $i
        exit 1
    fi
done

