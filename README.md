# Overview
[![Python application test with Github Actions](https://github.com/samarthasm/CICDDevOps/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/samarthasm/CICDDevOps/actions/workflows/pythonapp.yml)

## Project Overview: 

In this project, we are:
1. Deploying an app in Azure CloudShell.
2. Deploying the same app as a web server using Azure App Service.
The created CICD pipeline will ensure that any change/commit made to this github repositry, an action will be triggered for test automation (CI). A pipeline has been created using Azure DevOps tool, and also any changes will be tested in the pipeline and deployed to app service. The sequence of steps are as follows:

## Project Plan

Link to the Trello board for the project: https://trello.com/b/LvxmE3gO/udacitycicd
Link to a spreadsheet that includes the original and final project plan: [Samartha - project-management-template.xlsx](https://github.com/samarthasm/CICDDevOps/files/9575048/Samartha.-.project-management-template.xlsx)

## Instructions

The below set of diagrams demostrate how key parts of the system work:

![image](https://user-images.githubusercontent.com/4275543/190401131-a1dcf417-7d8f-4902-9727-2645c4250d3c.png)
![image](https://user-images.githubusercontent.com/4275543/190401243-d12d0542-2878-4426-8362-fd4759205dcd.png)
![image](https://user-images.githubusercontent.com/4275543/190401312-4d7a58e0-616f-415f-bc29-345b7fddf86e.png)

## Instructions for setting up and running the Python project. 

1.  Login to the azure portal, connect to the cloud shell terminal.
     Then generate the ssh keys via the following command:
     
     ssh-keygen -t rsa
     
2.  Save the generated SSH key, login to the github account, create a repository and then add the generated SSH key to github account. We then clone the repo using ssh github link in the Cloud Shell and cd into it
    ![image](https://user-images.githubusercontent.com/4275543/190401953-cf404e89-f069-45a6-985a-42a56f56420f.png)

3. Create Makefile, Virtual environement, install dependencies and run tests using the following command:
   make all
   ![image](https://user-images.githubusercontent.com/4275543/190402323-330028b7-63f5-4478-bfd7-efe497436d23.png)

4. Under github actions, create workflow, then push all the changes to repo and check if the build has been succesfully completed.
   ![image](https://user-images.githubusercontent.com/4275543/190403087-d0052c52-0a3f-4f50-baf4-93518da3bfba.png)

6. Deploy the app as a web server using Azure App Service. For this, create an App Service in Azure using the following command:
  az webapp up --resource-group <resource group> --name <App Service> --loaction eastus --runtime "PYTHON:3.7"
   ![image](https://user-images.githubusercontent.com/4275543/190403184-5a637f1f-8c9a-497c-8149-6b30530f49a0.png)

7. Test the Web App URL by navigating to the webapp URL link provided in the web app service in azure portal
  ![image](https://user-images.githubusercontent.com/4275543/190403266-a326e0a3-3ae1-491f-8938-9e8c84dcb31e.png)

8. Make prediction using the following command:
   ./make_predict_azure_app.sh
  ![image](https://user-images.githubusercontent.com/4275543/190403709-f980c559-1563-49d9-961f-af24b3e4edca.png)

9. Create pipeline in the dev.azure portal and then deploy the app with the help of following steps:
  a. Login to https://dev.azure.com 
  b. Create a new public project
  c. Create a new service connection to Azure Resource Manager, select subscription and the app service
  d. Create a new pipeline linked to your GitHub repo using GiThub YAML File
  ![image](https://user-images.githubusercontent.com/4275543/190404393-cbf424de-77a7-4690-ae2a-fd5da3f9cb95.png)
  ![image](https://user-images.githubusercontent.com/4275543/190404406-90802870-d216-46ee-8693-2ca3b2d58c6e.png)

10. View the log stream using the following command:
    az webapp log tail
  ![image](https://user-images.githubusercontent.com/4275543/190404618-37c08337-7daf-4065-a9cf-09000f5859f0.png)
  
11. Make prediction
  ![image](https://user-images.githubusercontent.com/4275543/190404936-b583cac3-bc68-46f9-8499-81070c3df296.png)

## Enhancements

One possible way to improve the project in the future would be to build an image of the app, then push it to a an image regitry and deploy the same to a kubernetes cluster.

## Demo 

Youtube Link: https://youtu.be/upwLZDWZT1E

