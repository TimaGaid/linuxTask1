1: Ansible running
    ```
    ansible-playbook -i {{ path to inventory }} {{ playbook path }}
    ```\
2: Terraform running
    export environment variables:
    ```
         AWS_ACCESS_KEY_ID = {{ KEY }}
         AWS_SECRET_ACCESS_KEY = {{ ACCESS_KEY }}
    ```\
    terraform apply
    ```
        terraform init
        terradorm plan
        terraform apply
    ```
