1) Run test:
docker run -it --rm kudabaev/docker.selenium

2) Look inside:
docker run -it --rm -p 5900:5900 kudabaev/docker.selenium VNC

then connect to the container with command: vncviewer 0.0.0.0:5900

Tags: Docker, selenium, firefox, xvfb
