Maven Install commands:




wget https://dlcdn.apache.org/maven/maven-3/3.9.16/binaries/apache-maven-3.9.16-bin.tar.gz
tar -zxvf apache-maven-3.9.16-bin.tar.gz
mv apache-maven-3.9.16 /opt/maven
cd /opt/
export M2_HOME=/opt/maven
export PATH=$M2_HOME/bin:$PATH
mvn -v
yum install java-21-amazon-corretto -y
mvn -v
