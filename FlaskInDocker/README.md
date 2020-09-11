# Simple Python App Skeleton for Docker

Never use this skeleton in a production server. It's only for test purposes.  
Pay attention with bash scritps. The bash scripts remove all images and containers from docker.  

> Example structure  

```
FlaskInDocker  
├── Dockerfile                      # Contains Docker commands to assemble an image  
├── README.md                       # This file
├── app                             # Folder with all necesary for the python app  
│   ├── index.py                    # Example of Python app (in this case Flask Example)
│   └── requeriments.txt            # Modules requeriments of the python app (index.py) 
├── build.sh                        # Script for build the Docker image  
├── docker_rm_all_containers.sh     # Delete all containers of Docker  
├── docker_rm_all_images.sh         # Delete all images of Docker  
├── docker_stop_containers.sh       # Stop all containers of Docker  
├── flush.sh                        # Stop all containers and delete containers and images 
├── run_interative.sh               # Run the Docker container with an interactive console 
└── run_standalone.sh               # Run the Docker container without interactive console  
```  

---
<!-- Pit i Collons -->
![Coded in Barcelona](../codedinbcn.png "Coded in Barcelona")
