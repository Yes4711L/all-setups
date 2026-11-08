dnf update -y
dnf install java-21-amazon-corretto wget -y
wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/rpm-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key
dnf upgrade -y
dnf install jenkins -y
systemctl daemon-reload
systemctl enable jenkins
systemctl start Jenkins
systemctl status jenkins













yum install java-21-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/rpm-stable/jenkins.repo
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
