# LocalStack

https://github.com/localstack/localstack


## 01 HomeBrew Install

```code
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 02 Update Python

Ejecutar python3 para ver que version hay instalado. De momento si es el 3.8 no lo actualizo  

## 03 Instalar LocalStack

```code
pip3 install localstack
...
Successfully installed boto3-1.16.32 botocore-1.19.32 certifi-2020.12.5 chardet-3.0.4 dnslib-0.9.14 dnspython-1.16.0 docopt-0.6.2 idna-2.10 jmespath-0.10.0 localstack-0.12.2 localstack-client-1.9 localstack-ext-0.12.1.1 pyaes-1.6.1 python-dateutil-2.8.1 requests-2.25.0 s3transfer-0.3.3 urllib3-1.26.2
```

## 04 Levantar LocalStack

No me ha rulado, por no estar en la path...Lo he levantado asi:  

```code
/Users/miguel/Library/Python/3.8/bin/localstack start

curl http://localhost:4566
{"status": "running"}

curl http://localhost:4566/health

```

## 05 Instalacion aws cli

```code
pip3 install awscli
pip3 install awscli-local
```

(He visto que se queja de que la ruta '/Users/miguel/Library/Python/3.8/bin' no esta en la path. Hay que añadirla)

```code
export PATH=$PATH:/Users/mike/Library/Python/3.8/bin/
```


## 06 Pruebas aws

```code
aws --endpoint-url=http://localhost:4566 kinesis list-streams
```

```code
aws configure --profile default

AWS Access Key ID [None]: test
AWS Secret Access Key [None]: test
Default region name [None]: Frankfort
Default output format [None]:
```



## 07 GUI incluido en LocalStack (deprecated)


```code
pip3 install flask
pip3 install flask-swagger
pip3 install flask_cors
pip3 install h11
pip3 install quart
pip3 install xmltodict
pip3 install moto
pip3 install amazon_kclpy
install nodejs LTS version
pip3 install python-crontab
pip3 install cbor2

ahora peta: No module named 'localstack.services.cloudwatch'
demasiados modulos para un cli que esta deprecated....
de momento paro aqui

```

## 08 GUI para LocalStack

https://github.com/aaronshaf/dynamodb-admin



```code
````

```code
````

```code
````

```code
````
