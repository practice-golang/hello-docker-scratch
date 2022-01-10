# 도커 찍먹

딴건 모르겠고 `delete_all.cmd`는 로컬 도커 이미지랑 컨테이너들을 싹다 지워버리니까 사용시 주의

## 실행

```dos
X:\XXXX> build_go.cmd
X:\XXXX> build_image.cmd -> 한번만
X:\XXXX> run_container.cmd
```

## 컨테이너 내 실행파일 변경 후 반영

소스 수정 후 아래와 같이 실행
```dos
X:\XXXX> build_go.cmd
X:\XXXX> copy_binary.cmd
```

## 접속

* `http://localhost:8864` - 파일서버
* `http://localhost:8864/hello` - 헬로월드
* `http://localhost:8864/bye` - 컨테이너 종료

## 기타 메모 - 윈도우에서 wsl2 도커 설치
* https://docs.microsoft.com/ko-kr/windows/wsl/install-manual
    * 기능 활성화 -> 재부팅
    ```sh
    $ dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    $ dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
    ```
    * 커널 업데이트 패키지 설치 - https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
    * `WSL 2`를 기본으로 사용
    ```sh
    $ wsl --set-default-version 2
    ```
    * Distro 설치까지는 필요 없음
* `wsl 관련된 개체 종류에 대한 해당 작업은 지원되지 않습니다`
    * nolsp - https://github.com/dyingsu/nolsp
    * `NoLsp.exe C:\windows\system32\wsl.exe`
    * 아니면 이렇게 해도 된다고 한다 - https://stackoverflow.com/a/63578387
* Docker Desktop for Windows 설치 - https://hub.docker.com/editions/community/docker-ce-desktop-windows
