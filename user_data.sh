#!/bin/bash
apt update -y
apt install -y python3 python3-pip git

pip3 install flask boto3 pymysql

cd /home/ubuntu

cat > app.py << 'EOF'
from flask import Flask
import boto3, json, pymysql

app = Flask(__name__)

def get_secret():
    client = boto3.client('secretsmanager', region_name='us-east-1')
    secret = json.loads(client.get_secret_value(SecretId='aurora-db-secret')['SecretString'])
    return secret

@app.route('/')
def index():
    secret = get_secret()
    try:
        conn = pymysql.connect(
            host='${aws_rds_cluster.aurora.endpoint}',
            user=secret['username'],
            password=secret['password'],
            database='sampledb'
        )
        return "Connected to AuroraDB successfully!"
    except Exception as e:
        return str(e)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
EOF

nohup python3 app.py &