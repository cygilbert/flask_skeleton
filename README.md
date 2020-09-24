# flask_skeleton
Basic skeleton for Flask apps

```
# clone the repo
git clone https://github.com/cygilbert/flask_skeleton.git
cd flask_skeleton
# virtual env
python3 -m venv venv
source venv/bin/activate
# install dependencies
pip install -r requirements.txt
# run the app
flask run
```

Docker setup
```
docker build -t my_app:latest .
# check images
docker images
# start the container, then go to http://localhost:8000
docker run --name my_app -d -p 8000:5000 --rm my_app:latest
# check docker processes
docker ps
# stop docker run
docker stop 'CONTAINER ID'
```