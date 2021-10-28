echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/newname58q/videoplayer /VCVideoPlayBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/newname58q/videoplayer -b $BRANCH /VCVideoPlayBot
fi
cd /VCVideoPlayBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
