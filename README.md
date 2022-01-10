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
