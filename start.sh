if [ -z $SOURCE_CODE ]
then
  echo "Cloning main Repository"
  git clone https://github.com/zonrajput/zone-mdisk
else
  echo "Cloning Custom Repo from $SOURCE_CODE "
  git clone $SOURCE_CODE /zone-mdisk
fi
cd /zone-mdisk
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
