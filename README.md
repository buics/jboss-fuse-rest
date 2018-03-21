"# jboss-fuse-rest" 


mvn clean package

docker build -t spring-boot-greeting-rest:1 .

docker run -p 8080:8080 --name greeting-rest -d spring-boot-greeting-rest:1

docker ps


using your browser, browse http://localhost:8080/greeting

