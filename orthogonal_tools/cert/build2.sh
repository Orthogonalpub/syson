export  ENV_PASSWD=12345678

openssl pkcs12 -export -in test.orthogonal.cc.pem -inkey test.orthogonal.cc.key -out mycert.p13 -name mycert  -passin "env:ENV_PASSWD" 



keytool -importkeystore -srckeystore mycert.p13 -srcstoretype PKCS12 -srcstorepass "12345678" -destkeystore mycert13.jks -deststoretype JKS -deststorepass "12345678" -srcalias mycert -destalias mycert

