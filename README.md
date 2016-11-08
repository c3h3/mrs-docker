# How to use it:
- Clone this reposetory
- Put your Microsoft R Server zip file (en_microsoft_r_server_for_linux_x64_xxxxx.tar.gz) into the directory
- Build your docker images:
```
MRS_FILE=en_microsoft_r_server_for_linux_x64_xxxxx.tar.gz sh build.sh
```
- After building docker image, just run it:
```
docker run -p 8787:8787 -d microsoft/mrs-linux-rstudio
```
- Visit ![http://localhost:8787](http://localhost:8787)