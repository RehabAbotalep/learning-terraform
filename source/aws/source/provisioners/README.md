# Terraform Provisioners

Terraform provisioners are a set of configurations that allow you to execute scripts or commands on a local machine or on a remote resource after it has been created by Terraform. Provisioners are useful for tasks such as software installation, configuration management, or any post-deployment tasks needed to prepare your infrastructure.

There are two types of provisioners in Terraform:

**1. Local-exec Provisioner:**

The local-exec provisioner allows you to run commands on the machine running Terraform, typically the machine where you execute the terraform apply command.

Example of a local-exec provisioner:

```
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }
}

```

**2. Remote-exec Provisioner:**

The remote-exec provisioner connects to the remote machine via SSH (Secure Shell) and executes commands. It is often used to configure resources after they have been created.

Example of a remote-exec provisioner:

```
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
    ]
  }
}

```

