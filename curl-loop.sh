for ((i=1;i<=1000;i++)); 
do
    curl -s "http://localhost" | grep "<title>.*</title>"
    sleep 2s
done