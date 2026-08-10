# CCRL 홈페이지

원본 사이트에서 저장한 페이지에서 실제 디자인 값을 추출해 재현했습니다.

## 원본에서 확인해 반영한 값

| 항목 | 원본 값 |
|---|---|
| 헤더 배경 | `#323643` (어두운 회색), 높이 83px |
| 로고 | `uploads/2017/06/logo_white_v2.png` (흰색, 163px), 좌측 |
| 메뉴 | 우측, 흰색, Open Sans 13px, weight 600, letter-spacing 1px |
| 본문 | Open Sans **15px / line-height 30px**, 색 `#747a87` |
| 본문 폭 | **1170px** |
| 강조색 | `#3666a0` |
| 드롭캡 | 51px, 배경 `#3666a0`, 흰 글자, border-radius 30% |
| 카피라이트 바 | `#1d242d` |
| 메인 히어로 | `uploads/2017/05/deep-learning2.jpg` |

## 메뉴 구조 (원본과 동일)

```
Main
About lab  ▾  Introduction / Research / Project
Member     ▾  Professor / Students / Alumni
Publication ▾ International journal / International conference /
              Domestic journal / Domestic conference / Patent
Board      ▾  Notice / News
Location
```

메인 페이지는 원본처럼 **좌측 본문 + 우측 Quick menu 사이드바** 구조입니다.

## 페이지 15개

`index.html` `introduction.html` `research.html` `project.html`
`professor.html` `students.html` `alumni.html`
`pub-intl-journal.html` `pub-intl-conference.html` `pub-domestic-journal.html`
`pub-domestic-conference.html` `patent.html`
`notice.html` `news.html` `location.html`

내용: 논문 353편(80/76/37/160) · 특허 85건 · 과제 47건 · 구성원 8명 · 졸업생 50명 · 공지 10건 · News 14건

## 올릴 파일 (하나도 빠뜨리면 안 됩니다)

```
*.html  (15개)
styles.css   ← 없으면 서식이 전부 사라집니다
app.js
uploads/     ← copy-images.bat 실행 후 생기는 폴더
```

## 이미지 84개

`copy-images.bat` 를 서버에서 더블클릭하면 `D:\ccrl-site\uploads` 에 필요한 84개만 복사됩니다.
그 `uploads` 폴더를 GitHub 업로드 화면에 드래그하세요. 목록은 `IMAGES.md` 참고.

이번에 로고·히어로 이미지(`2017/05`, `2017/06`)가 추가되어 82개 → 84개가 되었습니다.

## 아직 확인 못 한 부분

원본 **메인 페이지만** 저장본을 받았습니다. 그래서 다음은 추정입니다.

- 내부 페이지(Research, Students 등)의 **페이지 제목 바** 모양 — 지금은 회색 배경 + 브레드크럼
- Research 페이지 그림 크기와 배치
- 게시판 표의 열 구성

**Students 또는 Research 페이지도 같은 방식으로 저장해서 주시면** 그 부분까지 정확히 맞출 수 있습니다.

## 참고

원본 메인에는 학부 인턴 모집 팝업(PopupBuilder)이 있었습니다. 필요하면 넣을 수 있으니 알려주세요.
