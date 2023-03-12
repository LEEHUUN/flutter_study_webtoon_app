# WEBTOON APP

## 노마드 코더 강의 : Flutter로 웹툰 앱 만들기 #6 WEBTOON APP 실습 repo.

https://nomadcoders.co/flutter-for-beginners/lectures/4162
<br /> <br />

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
  <br/><br/>

### 3. fromJson (학습일자: 23.03.05)

- today api model 추가.
- model fromJson constructor 구현.
- api 가 `Future<List<WebtoonModel>>`를 return 하도록 수정.
  <br /><br />

### 4. recap (학습일자: 23.03.05)

- 1, 2, 3강 내용 복습.
  <br/><br/>

### 5. waitForWebToons (학습일자: 23.03.05)

- api model static class으로 변경.
- HomeScreen statefullWedget으로 변경 및 webtoon data fetching 적용.
  <br/><br/>

### 6. FutureBuilder (학습일자: 23.03.05)

- stateLessWedget에서 data fetch하도록 변경.
- Future type으로 객체 지향과 함수 지향이 잘 섞였다고 생각됨. comp의 생명주기를 편하게 관리 할 수 있을듯.
- FutureBuilder: flutter에서 지원하는 after loading comp 라고 생각하면 편할듯.
- FutureBuilder의 snapshot으로 로딩 전/후 상태 체크해 비즈니스 로직 구현.
  <br /><br />

### 7. ListView (학습일자: 23.03.05)

- 값에 null이 없다는 것을 명시해줄땐 ! 기호 사용.
  ```dart
  for(var webtoon in sanpshot.data!)
  ```
- ListView
  - 기본적으로 scrollView 장착.
  - 사용시 최적화 필요.(ex. lazy loading, infinite scroll)
- ListView.seperated: 최적화시 주로 사용하는 ListView.
  <br /><br/>

### 8. Webtoon Card (학습일자: 23.03.07)

- ListView에는 지정된 높이값이 없기 때문에, Column Widget 사용시 Expanded Widget으로 감싸주어야함.
- Webtoon Card widget custom.
  <br/><br/>

### 9. Detail Screen (학습일자: 23.03.07)

- Webtoon Widget 분리.
- GestureDetector: widget에 인터렉션 이벤트를 정의하고 싶을때 사용.
- Navigator.push: page route.
- MaterialPageRout: route를 dialog로 할지, page로 할지 옵션 제공.
  <br /><br />

### 10. Hero (학습일자: 23.03.08)

- Hero widget: 같은 comp를 여러 page에서 사용하고 싶을때 이용.
  <br/><br/>

### 11. Recap (학습일자: 23.03.08)

- 5 ~ 10강 복습.
  <br/> <br/>

### 12. ApiService (학습일자: 23.03.08)

- WebtoonDetailModel, WebtoonEpisodeModel 추가.
- WebtoonDetail, WebtoonEpisode api 추가.
  <br/><br/>

### 13. Futures (학습일자: 23.03.08)

- statefull class의 widget은 parent의 state에 접근 가능하게 해줌.
- statefull widget에서의 data fetching: initState에서 parent의 state를 가져와 late를 이용해 date fetching.
  <br/><br/>

### 14. Detail Info (학습일자: 23.03.08)

- FutureBuild로 detail data response 완료시 상세 정보 랜더링.
  <br /><br/>

### 15. Episodes (학습일자: 23.03.12)

- 최근 목차 futurBuild widget 구현.
  <br/><br/>

### 16. Url Launcher (학습일자: 23.03.12)

- url_launcher: 외부 url을 브라우져로 실행 할 수 있는 package.
- episode widget 분리.
- episode widget gesture event 구현.
  <br/> <br/>

### 17. Favorites (학습일자: 23.03.12)

- shared_preference: 기기의 storage에 접근 할 수 있는 package.
- shared_preference를 이용한 좋아요 기능 개발.
