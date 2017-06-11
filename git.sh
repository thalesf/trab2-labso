git config --global user.name = "Thales"
git config --global user.email = "thales.fdasilva@gmail.com"

git clone https://github.com/thalesf/trab2-labso.git
git add .
echo "Entre com uma mensagem para o commit"
read mensagem

git commit -m "$mensagem"
git push origin master

