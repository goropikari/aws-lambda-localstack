```
$ docker run -p 4566:4566 localstack/localstack:0.12.5
$ make create-function
$ aws lambda invoke --function-name pylambda response
$ cat responsne
Hello World!
```

Lambda function 作るときに使う Role は dummy で良いっぽい
