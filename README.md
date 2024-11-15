# terraform_aws_php
<img width="660" alt="스크린샷 2024-11-15 오후 6 30 18" src="https://github.com/user-attachments/assets/ff588c90-d683-4ff2-8c47-ea291e425537">

Terraform 및 SSH 키 생성 설정
Terraform 명령어
```
terraform init
Terraform 작업 디렉토리를 초기화합니다. 필요한 플러그인과 모듈을 다운로드하고 설정을 준비합니다.

```
```
terraform plan
리소스 변경 사항을 미리 확인합니다. 적용 전에 어떤 리소스가 변경될지 보여줍니다.
```
```
terraform apply
실제로 리소스를 생성 또는 변경합니다.
이 명령어를 실행하면 Terraform이 실제로 클라우드 인프라에 변경을 적용합니다.

```
```
terraform destroy
생성된 리소스를 삭제합니다. terraform apply로 생성한 리소스를 제거할 때 사용합니다.
```

SSH 키 생성

Windows

```
ssh-keygen -m PEM -f hyungs -q -N "" -t rsa

```

macOS

```
패스프레이즈 없이 SSH 키 생성:
ssh-keygen -f hyungs -q -N "" -t rsa
ssh-keygen -f hyungs -q -N "your_password" -t rsa
```
