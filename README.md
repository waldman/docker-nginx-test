#### To build and run the containers:

nginx-sample-lua-app:
````shell
cd nginx-sample-lua-app
./docker_build_and_run.sh <version_tag> host_port:container_port 
````

Example:
````shell
./docker_build_and_run.sh 0.1 8080:8080
````

nginx-sample-rev-proxy:
````shell
cd nginx-sample-rev-proxy
./docker_build_and_run.sh <version_tag> host_port:container_port "--link <backend_container_name>:<backend_container_name>"
````

Example:
````shell
./docker_build_and_run.sh 0.1 80:80 "--link nginx-sample-lua-app:nginx-sample-lua-app"
````
