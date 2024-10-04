# Docker builder for Webots

Reference: <https://github.com/xrobot-org/Docker-Image>

## Usage

1. Install Docker on Linux(Ubuntu 24.04)

2. Pull image:

   ```shell
   sudo docker pull ghcr.io/glasgow-gang/webots-docker:main
   ```

3. Run image:

    ```shell
    sudo docker run -it  -e "DISPLAY=$DISPLAY" -v "$HOME/.Xauthority:/root/.Xauthority:ro" --network host ghcr.io/glasgow-gang/webots-docker:main`
    ```
