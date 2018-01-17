sudo apt-get install build-essential golang mercurial 

cd ./
git clone https://github.com/inconshreveable/ngrok.git ngrok-source

cd ./ngrok-source

echo '1'
openssl genrsa -out base.key 2048
echo '2'
openssl req -new -x509 -nodes -key base.key -days 10000 -subj "/CN=ssj-server.me" -out base.pem
echo '3'
openssl genrsa -out server.key 2048
echo '4'
openssl req -new -key server.key -subj "/CN=ssj-server.me" -out server.csr
echo '5'
openssl x509 -req -in server.csr -CA base.pem -CAkey base.key -CAcreateserial -days 10000 -out server.crt
echo '6'
cp base.pem assets/client/tls/ngrokroot.crt
echo '7'
make release-server release-client
echo '8'

cp ./bin/ngrok ../
echo '9'

cp ./bin/ngrokd ../
echo '10'

cp ./server.key ../
echo '11'

cp ./server.crt ../
echo '12'


cd ../

echo '13'
chmod +x ngrokd
chmod +x ngrok
echo '14'
rm -rf ngrok-source
