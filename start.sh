if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ajayssa/TKfiles_bot /AutoFilterAdvance
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /https://github.com/ajayssa/TKfiles_bot
fi
cd /AutoFilterAdvance
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
