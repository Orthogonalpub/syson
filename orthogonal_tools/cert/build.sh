export  ENV_PASSWD=12345678

# openssl pkcs12 -export -in sysontest.orthogonal.cc.pem -inkey sysontest.orthogonal.cc.key -out mycert.p12 -name mycert  -passin "env:ENV_PASSWD" 



keytool -importkeystore -srckeystore mycert.p12 -srcstoretype PKCS12 -srcstorepass "12345678" -destkeystore mycert.jks -deststoretype JKS -deststorepass "12345678" -srcalias mycert -destalias mycert

