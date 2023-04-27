# swift-onban-03
> 팀03 - Effie, 에디

<br/>

## 🌱 그라운드 룰

### 커밋 단위
- 객체 추가, UI 추가, 메소드 추가 등 작은 단위로 커밋하고,
- 기능 단위로 커밋을 합치거나, 브랜치를 머지하는 방식으로 정리

### 브랜치 관리
 - 기능 단위로 브랜치 생성하고 머지하기
 - [main] - [step] - [feature, fix]

### 협업 규칙
- 함께 설계하고, 설계에 대해 모두 동의한 상태에서 구현한다
 - 스토리보드 파일은 한쪽 브랜치에서만 작업한다

## 🌱 코딩 스타일

### 스위프트 문법 관련
- 강제 옵셔널 언래핑 지양한다.
- 연습 차원에서 기본적으로 final, private 사용.

### 네이밍 관련
- 축약어 지양
- 공식 API 스타일 가이드 따르기 ([스위프트 API 디자인 가이드](https://www.swift.org/documentation/api-design-guidelines/))

### 스타일
- 변수를 선언할 때 관련있는 것끼리 묶어 MARK 주석을 단다.
- 선언부에 엔트리마다 무조건 한 줄 띄어 작성하고, 그 외에 불필요한 빈 줄은 없도록 한다.
- 메소드 내에서 선언하는 변수는 동작하는 순서에 따라 작성한다(메소드 내에서 변수를 반드시 맨 먼저 선언하지 않음)
- return 키워드를 생략하지 않는다
- 변수 및 메소드 선언 순서 (Properties -> Outlets -> Initializer -> SubScript -> Actions -> Life Cycle Methods -> Methods)
- 파일 순서는 파일명 알파벳 순으로
- 클로저가 짧으면 되도록 싱글 라인으로 작성한다.
- 삼항 연산자를 적극 사용한다.
- logical NOT 연산자 사용 전에 bool과 비교하는 더 나은 표현식이 있는지 확인한다.
- 함수 선언과 호출식이 길어지면 두번째 파라미터부터 다음 라인으로 내려 작성한다. (참고 - [Airbnb 스타일 가이드](https://github.com/airbnb/swift#functions))

<br/>

## 🪵 1주차(4월 4주차) 주요 작업 내용

<br/>

프로젝트를 생성하고 필요한 리소스를 에셋으로 추가했습니다.

- [x]  프로젝트 생성
- [x]  ColorAsset 추가

1단계 요구사항인 상품 목록 화면을 구성했습니다.

- [x]  Home 화면을 스토리보드로 구성
- [x]  상품 종류를 나타내는 ProductCategory 타입 추가
- [x]  상품 리스트 collection view cell xib 파일 추가
- [x]  ProductCollectionViewCell 구현
- [x]  이벤트 태그 label 추가
- [x]  리스트 collection view 헤더 xib 파일 추가
- [x]  ProductCollectionHeader 구현
- [x]  HomeViewController 구현

![Simulator Screen Recording - iPhone 14 Pro - 2023-04-19 at 18 38 32](https://user-images.githubusercontent.com/56967908/233039016-df06433c-bdfc-4cb6-83d9-ea4d9ac8b5c9.gif)

<br/>

## ⛳️ 2주차(4월 5주차) 계획

<br/>

### 25일 화요일

- Fetching_data…  읽기
- 오늘 클래스 내용 복습
- 화면 요구 사항 분석
- 에피
    - 다음 화면 데이터 요청을 어느 시점에 할 것인지 (delegate)
    - ViewController 생성 시점 의존성(데이터를 관리하는 객체) 주입

### 26일 수요일

- 구현(상세 화면 UI)
    - Navigation Controller
    - segue(화면 전환)
    - 상세 화면 UI
- HTTP 프로토콜, 메소드, 요청과 응답 방식
- URLSession, URLRequest, URLResponse
- json 인코딩, 디코딩
- 다음 화면 데이터 요청을 어느 시점에 할 것인지 (delegate)
    - 홈 뷰 컨트롤러(상세 뷰 컨트롤러)의 viewDidLoad 보다 이전 시점에서 데이터 전달 받도록

### 27일 목요일

- 구현(데이터 가져오기 - 홈)
    - 홈 제품리스트 DTO 선언
    - 네트워크 프로그래밍 - 전용 객체
    - 리팩토링
- Download Task 학습

### 28일 금요일

- 구현할 수 있으면 구현,,,(데이터 가져오기 - 상세 페이지)
    - 제품 상세 DTO 선언
- Download Task 학습
- 구현

### 토요일, 일요일

- 이미지 다운로드 및 관련 처리 구현
- POST 구현

### 화요일, 수요일, 목요일

같이

- [x]  상세 화면 요구사항 분석 및 동기화

상세 화면 구현 UI w/ 스토리보드

- [x]  navigation controller embed (스토리보드)
- [x]  segue 화면 전환
- [x]  상세 화면 table view 디자인
- [x]  상세 화면 cell 디자인
    - [x]  이미지 컨테이너 (에피)
    - [x]  태그 포함 cell - collection view? (같이)D
    - [x]  적립금, 배송정보, 배송비 (에피)
    - [x]  수량 (에디)
    - [x]  주문금액 + 주문하기 버튼 (에디)
    - [x]  상세 설명 이미지 (에피)
- [x]  cell 디자인 다 하고 pull 받아서 파일, 클래스, identifier 네이밍 맞추기

에피

- [x]  paging

### 목요일, 금요일

학습

- [ ]  HTTP
- [ ]  URLSession
- [ ]  URLSessionDelegate
- [ ]  json 인코딩, 디코딩 - Codable

설계

- [ ]  데이터 관련 작업 객체의 역할
- [ ]  데이터 요청 시점

### 토요일

<br/>

## POOL

UI 이슈

- [ ]  tag cloud width 문제
- [ ]  table view cell의 … cell xib에서 주는 게 inset 최선인지 고민해보기

UIkit
- scrollEdgeAppearance 알아보기

<br/>

## Onban03 팀 소개 

|Effie|Eddy|
|-|-|
|<img src="https://avatars.githubusercontent.com/u/56967908?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/70703326?v=4" width="150" height="150"/>|
|[@hyeffie](https://github.com/hyeffie)|[@raindropiOS](https://github.com/raindropiOS)|
|||

저희 팀은 설계와 구현, Navigator와 Driver 역할을 나누지 않고 진행하고 있습니다!