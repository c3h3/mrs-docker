# Please make sure that you have the license to install Microsoft R Server into your computer!
- if you need more intofrmation, please visit [the website of Microsoft R Server](https://www.microsoft.com/en-us/cloud-platform/r-server)
- if you want to use it diretly, please use [Azure](https://azure.microsoft.com/en-us/marketplace/?term=microsoft+r+server)

## How to use it:
- Clone this reposetory
- Put your Microsoft R Server zip file (en_microsoft_r_server_for_linux_x64_xxxxx.tar.gz) into the directory
- Build your mrs/base image:
```
cd base && MRS_FILE=en_microsoft_r_server_for_linux_x64_xxxxx.tar.gz sh build.sh
```
- Build your mrs/rstudio image:
```
cd rstudio && sh build.sh
```

- After building docker images, just run it:
```
docker run -p 8787:8787 -d mrs/rstudio
```
- Visit [http://localhost:8787](http://localhost:8787)
