a=$(snmpget -v 1 -Ovq -c public 127.0.0.1 hrStorageSize.1)
b=$(snmpget -v 1 -Ovq -c public 127.0.0.1 hrStorageUsed.1)

echo "scale=1; $b/$a*100" |bc -l