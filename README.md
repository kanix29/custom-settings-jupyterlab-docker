# Custom settings of Jupyter Lab in making docker images

By referring to `Dockerfile`, You can understand what you need to do.\
This time, we use [`jupyter/base-notebook`](https://hub.docker.com/r/jupyter/base-notebook) because it is light.\
See [docker hub](https://hub.docker.com/u/jupyter) as it can be applied to other notebooks. (e.g. scipy-notebook, datascience-notebook)

## Explanation
All you have to do is making directory and put the setting file there.

If you don't know what to do, you build a container and change the settings by GUI.
Then, you can enter the container using `bash` and grasp the directory structure.
Maybe, you can confirm that the custom setting files are placed under `~/.jupyter/lab/user-settings/@jupyterlab/`.

**Custom Settings**
* `shortcuts.jupyterlab-settings (keyboard.json)`: define shortcut key to move cell up and down
* `tracker.jupyterlab-settings (notebook.json)`: display the number of lines.

## Demo
First, build docker image named `jupyter-shortcuts`.
```sh
docker build -t jupyter-shortcuts .
```
Then, make container using docker-compose.
```sh
docker-compose up -d
```

If you go to `localhost:8888` and open `Test.ipynb`, you can see that the custom settings have already been applied.
