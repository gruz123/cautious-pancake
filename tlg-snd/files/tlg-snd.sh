#!/bin/sh

chatId=<Your_tg_chant_id> 
botToken=<Your_tg_bot_token>
curdir=$PWD
echo sending $curdir/$1

curl -F chat_id=$chatId -F document=@$curdir/$1 https://api.telegram.org/bot$botToken/sendDocument
# more about gist on my site — amorev.ru/telegram-terminal-file-send