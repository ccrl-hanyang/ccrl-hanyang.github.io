# CCRL 홈페이지

원본 스크린샷과 `meta.sql` 로 검증을 마친 버전입니다.

## meta.sql 대조 결과 — 11개 중 9개 정확히 일치

`wp_kboard_board_meta` 의 `list_total` 이 게시판별 정답 개수 역할을 했습니다.

| 게시판 | 원본 | 내 결과 | |
|---|---|---|---|
| International journal | 70 | 70 | ✓ |
| International conference | 72 | 72 | ✓ |
| Domestic journal | 37 | 37 | ✓ |
| Domestic conference | 159 | 159 | ✓ |
| Domestic patents | 36 | 36 | ✓ |
| Project Ongoing | 8 | 8 | ✓ |
| Project Completed | 31 | 31 | ✓ |
| Notice | 9 | 9 | ✓ |
| News | 14 | 14 | ✓ |
| Foreign patents | 13 | 15 | △ |
| 출원 완료 | 17 | 15 | △ |

특허 두 개만 어긋나는데 **합계는 양쪽 다 30** 입니다. 국외특허에 `[PCT]` 로 시작하는 2건이 있고, 이 2건이 원본 카운터에서는 출원 쪽에 잡혀 있습니다. KBoard에서 글을 다른 게시판으로 옮기면 캐시된 개수가 갱신되지 않아 생기는 현상입니다. 실제 데이터 기준으로는 현재 분류가 맞습니다.

## 이번에 수정한 것

- **Gallery 페이지 추가** (원본 Board 메뉴에 있었음, 5건)
- **Introduction** 을 원본처럼 주제별 제목 + `READ MORE` 버튼 4개 구조로
- **게시판 페이지** 에 제목과 `전체 N` 추가, 열 이름을 번호/작성일/제목으로
- **본문 변환 버그 3건 수정**
  - `<h2><h4>` 처럼 제목이 중첩되던 문제
  - 원본에서 `<strong>` 이 이미지를 감싸 태그가 쪼개지던 문제
  - 문단에 고아 `</h2>` 가 남던 문제
  - → 16개 페이지 전부 HTML 검증 통과

## 페이지 16개

Main · Introduction · Research(탭 4개) · Project(탭 2개) · Professor · Students · Alumni ·
International journal · International conference · Domestic journal · Domestic conference · Patent ·
Notice · News · Gallery · Location

## 연구기간·협약기관 열은 넣지 못했습니다

`meta.sql` 은 게시판 **설정값**(페이지당 표시 수, 권한 등)만 담고 있어서 글별 추가 필드가 없었습니다.
원본 Project 표의 연구기간·협약기관은 `wp_kboard_board_option` 에 있을 가능성이 큽니다. 필요하시면:

```
"C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump.exe" -u root -p --default-character-set=utf8mb4 --no-tablespaces wordpress wp_kboard_board_option wp_kboard_board_setting > %USERPROFILE%\Desktop\opt.sql
```

다만 과제 39건에 두 열을 손으로 채우는 것도 현실적인 선택입니다. 어차피 앞으로 직접 관리하셔야 하니까요.

## 올릴 파일

```
*.html (16개)   styles.css   app.js   uploads/
```

`styles.css` 를 반드시 함께 올리고 `Ctrl+Shift+R` 로 강제 새로고침하세요.

## 이미지 87개

`copy-images.bat` 를 서버에서 실행 → `D:\ccrl-site\uploads` → GitHub에 드래그.

## 남은 차이

- 원본 메인의 학부 인턴 모집 팝업 미포함
- Seminar 게시판(100건) 미포함 — 첨부파일이 본체라 목록만 옮기면 의미가 없습니다
- Lab board(내부 문서 9건) 미포함

hosts 파일의 `127.0.0.1 ccrl.hanyang.ac.kr` 줄은 작업 끝나면 지우세요.
