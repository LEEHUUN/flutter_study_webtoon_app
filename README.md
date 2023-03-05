# WEBTOON APP

## 노마드 코더 강의 : Flutter로 웹툰 앱 만들기 #6 WEBTOON APP 실습 repo. <br /> <br />

### rfc

- 요구사항 및 시나리오
  - 웹툰 목록 페이지.
  - 웹툰 상세 페이지.
  - 웳툰 목록에서 선택한 웹툰 클릭시, 웹툰 상세 페이지로 route.
- API 스펙.
  - https://webtoon-crawler.nomadcoders.workers.dev/
  - '/today': 오늘의 웹툰.
  - '/:id': 선택한 웹툰 정보.
  - '/:id/episodes': 선택한 웹툰의 최근 화 정보.

<br />

### 1. AppBar (학습일자: 23.03.02)

- widget 생성시 생성자로 key 전달 권장.
- AppBar widget 생성.
  <br/><br/>

### 2. Data Fetching (학습일자: 23.03.05)

- pub.dev: Dart, Flutter 공식 패키지 보관소.(npm과 유사한 역활)
- http 패키지 설치. (flutter pub add http)
- npm 과의 차이점: pubspec.yaml file에 패키지 타이핑 후 저장만 해도 설치됨.
- Futer type: 미래에 받을 type. 비동기 프로그래밍에서 많이 사용.
- today api sample 제작.
