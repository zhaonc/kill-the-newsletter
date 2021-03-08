sudo docker build -t kill-the-newsletter -f aws.Dockerfile .
sudo docker run -it --rm -p 80:80 -p 25:25 --name kill-the-newsletter kill-the-newsletter:latest