FROM        dokken/centos-
COPY        mongo.repo /etc/yum.repos.d/mongo.repo
RUN         yum install git mysql -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]
