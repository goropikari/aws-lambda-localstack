FN_NAME = pylambda

deploy: prepare update-function

prepare:
	zip lambda.zip main.py

create-function:
	aws lambda create-function --function-name=$(FN_NAME) --runtime=python3.8 --role="arn:aws:iam::123456789012:role/service-role/hoge-role" --handler=main.handler --zip-file fileb://lambda.zip --endpoint-url http://localhost:4566

update-function:
	aws lambda update-function-code --function-name $(FN_NAME) --zip-file fileb://lambda.zip --endpoint-url http://localhost:4566
