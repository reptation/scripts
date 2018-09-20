#Install Rails on Docker. From Docker documentation: https://docs.docker.com/compose/rails/

docker-compose run web rails new . --force --database=postgresql
sudo chown -R $USER:$USER .
docker-compose build
docker-compose up &
sudo chown -R $USER:$USER .
mkdir config
cd config
rm database.yml
wget https://raw.githubusercontent.com/reptation/scripts/master/infrastructure/rails/config/database.yml 
cd ../
docker-compose run web rake db:create

