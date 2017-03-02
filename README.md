# Flask Docker Topic Server POC

## To build the image for the Flask app

 docker build -t flask-sample:latest .

## To run a feture branch

for ports host:container, 1 port per feature.
TODO: using something like fab to manage the nginx vhost mappings

 docker run -d -p 8000:5000 flask-sample feature-a
