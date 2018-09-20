#Install Rails on Docker. From Docker documentation: https://docs.docker.com/compose/rails/

docker-compose run web rails new . --force --database=postgresql
sudo chown -R $USER:$USER .
docker-compose build
docker-compose up
docker-compose run web rake db:create

