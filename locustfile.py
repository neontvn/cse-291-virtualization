from locust import HttpUser, task, between

class SpringPetClinicUser(HttpUser):
    wait_time = between(1, 5)  # Simulate user wait time between tasks

    @task
    def view_homepage(self):
        self.client.get("")

    @task
    def view_vets(self):
        self.client.get("vets")

    @task
    def view_owners(self):
        self.client.get("owners")

    @task
    def view_pet_types(self):
        self.client.get("pettypes")