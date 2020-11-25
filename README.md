# Running

```bash
docker build -t scalapytest:latest . && docker run -it -v $(pwd):/app scalapytest:latest
```

When in the container:

```bash
sbt run
```
