# breast-cancer-diagnosis
Aims to diagnose breast cancer using AI

## How to run the project

### Build docker image

```bash
docker build -t breast-cancer-diagnosis .
```

### Run


```bash
docker run -p 8888:8888 -v "$(pwd):/app" breast-cancer-diagnosis
```

> -p 8888:8888: Maps the 8888 door from your machine to the same container's door.
>
> -v "\$(pwd):/app": (Optional, but usefull)  Maps your current folder ($(pwd)) to the `/app` folder within the container. That means that any updates you make on your notebook locally will be reflected inside the container and vice-versa.

When you run that your terminal will return a URL with a token. Something like: http://127.0.0.1:8888/?token=a1b2c3d4e5f6...

Use that URL to access the project's notebook.