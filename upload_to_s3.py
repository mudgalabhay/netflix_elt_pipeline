import pandas as pd
import boto3
import os
from botocore.exceptions import ClientError

def upload():

    """
    Upload csv data files (assume extracted using REST APIs) from data folder to localstack
    AWS S3 bucket.
    """

    # Connect to AWS S3
    s3 = boto3.client(
        "s3",
        endpoint_url = "http://localhost:4566",
        aws_access_key_id = "test",
        aws_secret_access_key = "test",
        region_name = "us-east-1"
    )

    bucket_name = 'netflixdataset'

    data_folder = './data'

    for file in os.listdir(data_folder):

        # Upload only csv file
        if file.lower().endswith('.csv'):

            path = os.path.join(data_folder, file)

            try:
                s3.upload_file(path, bucket_name, file)

                # Verify upload
                s3.head_object(Bucket=bucket_name, Key=file)

                print(f"File uploaded successfully: {file}")
        
            except ClientError as e:
        
                print(f"Upload failed for {file}: {e}")
    
upload()