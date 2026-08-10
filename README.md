# CCRL 홈페이지

원본 스크린샷 7장을 보고 구조를 전면 수정했습니다.

## ⭐ 가장 중요한 수정 — 삭제된 항목이 섞여 있었습니다

kboard 테이블의 `status` 컬럼에 **`trash`(삭제됨)** 값이 있는데 제가 그걸 포함하고 있었습니다.
이게 "논문이 겹쳐 있다"고 하신 문제의 원인이었습니다.

| 항목 | 이전(잘못) | 수정 후 | 원본 화면 |
|---|---|---|---|
| International journal | 80 | **70** | 전체 70 ✓ |
| International conference | 76 | 72 | |
| Domestic conference | 160 | 159 | |
| Project Ongoing | 15 | **8** | 전체 8 ✓ |
| 특허 | 85 | 66 | |
| **중복 항목** | 6건 | **0건** | |

## 구조 수정

| 항목 | 이전 | 수정 후 |
|---|---|---|
| 내부 페이지 | 회색 제목 바 + 브레드크럼 | **좌측 서브메뉴** (Professor/Students/Alumni 등) |
| Research | 4개 주제 한 페이지 | **탭 4개** (ECC / PQC / ML·DL / Radar) |
| Project | 두 표 나열 | **탭 2개** (Ongoing / Completed) |
| 논문 표 | No. / Year / 내용 | **번호 / 제목**, `전체 N` 을 표 위에 |
| 구성원 이름 | 영문 + 한글 | **한글 자간 벌림** (주 형 건) |
| 교수님 | 학력 요약 | **DEGREE / CAREER** 항목, 학회 활동, IEEE Senior member |
| Location | 표 | **Google 지도** + 파란 소제목 |
| 본문 변환 | 제목이 문단에 붙음 | 블록 단위 분리, `(A)` 소제목 인식, 그림 캡션 처리 |

## 아직 못 넣은 것 — 데이터가 필요합니다

원본 Project 표에는 **연구기간**과 **협약기관** 열이 있습니다(2026.04.01~2029.12.31 / 정보통신기획평가원 등).
이 값은 제가 받은 덤프에 없습니다. `wp_kboard_board_meta` 테이블에 들어있습니다.

서버에서 이것만 추가로 뽑아 주시면 열을 채우겠습니다.

```
"C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump.exe" -u root -p --default-character-set=utf8mb4 --no-tablespaces wordpress wp_kboard_board_meta > %USERPROFILE%\Desktop\meta.sql
```

## 올릴 파일

```
*.html (15개)   styles.css   app.js   uploads/
```

`styles.css` 를 반드시 함께 올리고, 업로드 후 `Ctrl+Shift+R` 로 강제 새로고침하세요.
확인: `https://ccrl-hanyang.github.io/styles.css` 첫 줄에 `원본(Avada) 실측값` 주석이 있으면 최신입니다.

## 이미지 87개

`copy-images.bat` 서버에서 실행 → `D:\ccrl-site\uploads` → GitHub에 드래그.

## 남은 차이

- Introduction 페이지: 원본은 주제별 "READ MORE" 버튼이 각각 있습니다. 현재는 본문만
- 원본 메인의 학부 인턴 모집 팝업 미포함
- Gallery 페이지 미포함 (원본 데이터 1건)

hosts 파일의 `127.0.0.1 ccrl.hanyang.ac.kr` 줄은 작업 끝나면 지우세요.
