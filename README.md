# terraform_aws_php
<img width="660" alt="스크린샷 2024-11-15 오후 6 30 18" src="https://github.com/user-attachments/assets/ff588c90-d683-4ff2-8c47-ea291e425537">


##Terraform 및 SSH 키 생성 설정
###Terraform 명령어
```
terraform init: Terraform 작업 디렉토리를 초기화합니다. 필요한 플러그인과 모듈을 다운로드하고 설정을 준비합니다.
terraform init
```
```
terraform plan: 리소스 변경 사항을 미리 확인합니다. 적용 전에 어떤 리소스가 변경될지 보여줍니다.
terraform plan
```
```
terraform apply: 실제로 리소스를 생성 또는 변경합니다. 이 명령어를 실행하면 Terraform이 실제로 클라우드 인프라에 변경을 적용합니다.
terraform apply
```
```
terraform destroy: 생성된 리소스를 삭제합니다. terraform apply로 생성한 리소스를 제거할 때 사용합니다.
terraform destroy
```

##SSH 키 생성
###SSH 키는 안전한 서버 접근을 위해 필수적입니다. 아래는 운영체제별로 SSH 키를 생성하는 방법입니다.

##Windows
###Windows에서 PEM 포맷으로 SSH 키를 생성하려면 다음 명령어를 사용합니다:

```
ssh-keygen -m PEM -f hyungs -q -N "" -t rsa
-m PEM: PEM 형식으로 SSH 키를 생성합니다.
-f hyungs: 생성된 키 파일 이름을 hyungs로 지정합니다.
-q: 생성 과정에서 출력되는 메시지를 최소화합니다.
-N "": 패스프레이즈를 설정하지 않습니다.
-t rsa: RSA 타입의 SSH 키를 생성합니다.
```

##macOS
###macOS에서 SSH 키를 생성할 때는 두 가지 방법을 사용할 수 있습니다:
```
패스프레이즈 없이 SSH 키 생성:

ssh-keygen -f hyungs -q -N "" -t rsa
-f hyungs: 생성된 키 파일 이름을 hyungs로 지정합니다.
-q: 생성 과정에서 출력되는 메시지를 최소화합니다.
-N "": 패스프레이즈를 설정하지 않습니다.
-t rsa: RSA 타입의 SSH 키를 생성합니다.
패스프레이즈와 함께 SSH 키 생성:


ssh-keygen -f hyungs -q -N "your_password" -t rsa
-N "your_password": your_password를 패스프레이즈로 설정하여 SSH 키를 생성합니다.
```
