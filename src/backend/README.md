```sh
cd src/backend/merger

docker build --target dev -t <image> .

docker run -it --rm --publish 80:8080 -v ${PWD}:/go/src <image>

# then go
localhost:80
```

# Testing Coding in beta Mode

```sh
cd backEnd/merger

docker build --target test -t <image> .

docker run --rm <image>

```
