sudo yum install java-1.8.0-openjdk-devel -yum
sudo yum install git -y
sudo yum install maven -y

if [-d "addressbook"]
then
echo "Repo is cloned and exist"
cd /home/ec2-user/addressbook
git pull origin master
else
echo "Repo is not there"
git clone https://github.com/gautam100/addressbook.git
cd /home/ec2-user/addressbook
fi
