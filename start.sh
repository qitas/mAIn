#和dockerfile同目录放置
sudo docker build -t qitas/tensorflow .

#启动容器
sudo docker run -d -it --name tensorflow qitas/tensorflow
