# adding a user
echo "enter username"
read username
sudo adduser $username

# creating scripts directory
sudo mkdir /home/$username/scripts

# creating example.txt  file inside scripts directory
sudo touch /home/$username/scripts/example.txt

# giving read,write,execute permissions for example.txt and no permission
# for any others 
sudo chmod 700 /home/$username/scripts/example.txt

# prompt user to enter 5 files and 
# check whether they exists in the home directory of the user
# and if they does not exists create them

 
echo "enter the 5 file names"

for i in {1..5}
do
echo "Enter the file $i"
read filename
if [ -e /home/$username/$filename ];
then
echo "file already exists"
else
sudo touch /home/$username/$filename
fi
done
