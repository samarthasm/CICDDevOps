ssh-keygen -t rsa
cat /home/odl_user/.ssh/id_rsa.pub
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate
make all
az webapp up --name myWebApp1994 --resource-group Azuredevops --location eastus --runtime "PYTHON:3.7"
make_predict_azure_app.sh
az webapp log tail
