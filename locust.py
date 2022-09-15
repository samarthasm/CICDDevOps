import time
from locust import HttpUser, between, task

class webUser(HttpUser):
    wait_Time = between(1.0, 5.0)

    @task
    def firstTest(self):
        self.client.get("http://localhost:5000")

    @task
    def secondTest(self):
        self.client.post("http://localhost:5000/predict")
 
