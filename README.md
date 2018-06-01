# minikube-wks
Minikube workstation - Launch it quickly in AWS to try Kubernetes

## Step 1
- Generate SSH-KEY
```
    ssh-keygen -f key/id_rsa -t rsa -b 4096
    chmod 400 key/id_rsa
``` 

## Step 2
- Install packer (Linux)
```
    wget https://releases.hashicorp.com/packer/1.2.4/packer_1.2.4_linux_amd64.zip
    unzip packer_1.2.4_linux_amd64.zip
    sudo mv packer /usr/local/bin/
    packer -v
    rm packer_1.2.4_linux_amd64.zip
```

- Install Packer Mac
```
    brew install packer
```

## Step 3
- Create image with packer
```
    chmod +x createImage.sh
    ./createImage.sh
```

## Step 4
- Create instance with Terraform
- Install Terraform (Mac)
```
    wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_darwin_amd64.zip
    unzip terraform_0.11.7_darwin_amd64.zip
    sudo mv terraform /usr/local/bin/terraform
    rm terraform_0.11.7_darwin_amd64.zip
```
- Install Linux
```
    wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
    unzip terraform_0.11.7_linux_amd64.zip
    sudo mv terraform /usr/local/bin/terraform
    rm terraform_0.11.7_linux_amd64.zip
```

## TODO createInstance.sh
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html