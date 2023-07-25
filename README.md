 
docker build -t my_pyspark_image .
docker run -it my_pyspark_image
change command section in docker file

If you want to use notebook

docker build -t my_pyspark_notebook .
docker run -p 8888:8888 -v D:\Jupyter\my-pyspark:/opt/application -e JUPYTER_RUNTIME_DIR=/tmp/jupyter-runtime my_pyspark_notebook
 
