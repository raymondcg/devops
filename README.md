# Common Scripts


## Docker Setup on Linux
1. Install / Configure Git
2. Install / Configure Docker 
```
sudo apt-get install docker.io
# So that sudo isn't need to run docker
sudo usermod -aG docker <your username>
```
3. Verify docker installed correctly
'''
docker run hello-world
'''