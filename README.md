# project-ml-microservice-kubernetes [![CircleCI](https://circleci.com/gh/JoannaSprottHome/project-ml-microservice-kubernetes.svg?style=shield)](https://app.circleci.com/pipelines/github/JoannaSprottHome/project-ml-microservice-kubernetes) 

## Project Summary  

This project contains a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data set was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). The project cocntains a Python flask app `app.py` that serves out predictions (inference) about housing prices through API calls. 

---   

## Run Python scripts and web app

### Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Make a prediction: `./make_prediction.sh`
```Port: 8000
{
    "prediction": [
        20.35373177134412
    ]
}
```
5. Web app located at: `http://127.0.0.1:8000/`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
--- 

## Explanation of files in the repository

The following files and folders are included in the project:

1. `app.py` - flask app with main logic to generate prediction
2. `model data` - data for running prediction
3. `Dockerfile` - used to build an image from and run container
4. `Makefile` - contains the build steps including environment set-up, installation of dependencies and linting
5. `requirements.txt` - dependencies, that are installed via `Makefile`
6. `run_docker.sh` - builds image and runs container
7. `upload_docker.sh` - uploads docker image to Docker hub
8. `run_kubernetes.sh` - runs the image from Docker hub
9. `make_prediction.sh` - generates prediction
10. `docker_out.txt` - contains output after running app with docker and running prediction
11. `kubernetes_out.txt` - contains output after running app with kubernetes and running prediction
12. `.circleci/config.yml` - contains the configuration for CI/CD pipeline
