git config --global user.name = "Thales"
git config --global user.email = "thales.fdasilva@gmail.com"

git add .
echo "Entre com uma mensagem para o commit"
read mensagem

git remote add origin https://github.com/thalesf/trab2-labso.git


git commit -m "$mensagem"
git push 

