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
