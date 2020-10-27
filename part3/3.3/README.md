# 3.3

Make sure the `.env` file contains the GitHub repository URL as well as the Docker Hub username, password and project name.

To download the repository and push it to Docker Hub, run the following command:
`docker run -it --env-file=.env -v /var/run/docker.sock:/var/run/docker.sock CONTAINER_NAME bash`
