# APKTool Docker Container

[Docker](http://docker.com) container to run [APKTool](https://ibotpeaches.github.io/Apktool/).

## Features

* [APKTool](https://ibotpeaches.github.io/Apktool/)
* [JAVA](http://www.java.com) 1.7

## Installation / Usage

1. Clone this repository

2. Build the Docker Image

    ``` sh
    $ docker build -t <you>/apktool .
    ```

3. Run APKTool through the container:

    ``` sh
    $ docker run -v $(pwd):/app <you>/apktool
    ```
  Or run with parameters:
    ``` sh
    $ docker run -v $(pwd):/app <you>/apktool d my_app.apk
    ```
