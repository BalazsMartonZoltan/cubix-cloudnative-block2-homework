FROM quay.io/drsylent/cubix/block2/homework-base:java21

WORKDIR /opt/app

COPY backapp/target/cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar backapp.jar
COPY frontapp/target/cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar frontapp.jar

ENV CUBIX_HOMEWORK="Balázs Márton"
ENV APP_DEFAULT_MESSAGE=

LABEL cubix.homework.owner="Balázs Márton"

CMD sh -c "java -jar backapp.jar --server.port=8081 & java -jar frontapp.jar --back.url=http://localhost:8081 & wait"