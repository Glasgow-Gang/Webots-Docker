# Docker builder for Webots

Reference: <https://github.com/xrobot-org/Docker-Image>

## Usage

1. Install Docker on Linux(Recommended Ubuntu 24.04)

2. Pull image:

   ```shell
   sudo docker pull ghcr.io/glasgow-gang/webots-docker:main
   ```

3. Run image:

    ```shell
    sudo docker run -it  -e "DISPLAY=$DISPLAY" -v "$HOME/.Xauthority:/root/.Xauthority:ro" --network host ghcr.io/glasgow-gang/webots-docker:main
    ```

4. Start Webots:

   ```shell
   xhost +
   nohup webots &
   ```

5. Open Webots World:

   PATH: `/root/Webots-World/worlds/world.wbt`

6. Run Webots Controller:

   ```shell
   cd /root/Webots-Controller
   mkdir build
   cd build
   cmake ..
   make
   ./xrobot
   ```

7. Start Simulation
