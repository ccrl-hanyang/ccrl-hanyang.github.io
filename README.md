# CCRL 홈페이지

`about_lab.zip` 의 원본 페이지 8개를 렌더링해 실제 CSS 값을 추출하고, 그대로 맞췄습니다.

## ⭐ 이번에 해결된 것 — 과제 표의 연구기간·협약기관

DB 덤프에 없던 데이터를 **저장된 HTML에서 직접 추출**했습니다.
과제 39건(진행 8 / 완료 31)에 연구기간과 협약기관이 모두 들어갔습니다.

예) `PQC와 QKD를 결합한 도메인 간 양자보안 시스템 개발 | 2026.04.01~2029.12.31 | 정보통신기획평가원`

## 원본에서 측정해 맞춘 값

| 항목 | 원본 실제 값 | 이전 |
|---|---|---|
| 좌측 서브메뉴 폭 | **269px** | 210px |
| 서브메뉴 활성 표시 | 오른쪽 3px `#3666a0` 선 | 유사 |
| 탭 | **등분 폭**, 15px, 가운데 정렬, padding 11px | 자동 폭 |
| 탭 활성 | 흰 배경 + 위쪽 3px `#3666a0` | 유사 |
| 탭 패널 | 전체를 테두리로 감쌈 | 없었음 |
| 탭 안 제목 | **30px, weight 700, `#323643`, 밑줄 없음** | 18px + 파란 밑줄 |
| 과제 표 | 번호 / 연구과제 / 연구기간 / 협약기관 | 번호 / 연구과제 |
| 표 헤더 | 배경 없음, 가운데 정렬, weight 400 | 회색 배경, 좌측 |
| 페이지네이션 | 파란 `1` 박스 | 없었음 |

## Alumni 사진 복원

졸업생 50명 사진이 빠져 있던 것을 원본과 같은 3열 카드(사진 + 이름 + 이력 + 졸업논문)로 복원했습니다.
HTML이 참조하는 이미지가 35 → **84장** 이 되었습니다.

## 페이지 16개

Main · Introduction · Research(탭 4) · Project(탭 2) · Professor · Students · Alumni ·
International journal · International conference · Domestic journal · Domestic conference · Patent ·
Notice · News · Gallery · Location

개수는 `meta.sql` 의 `list_total` 과 대조해 11개 중 9개가 정확히 일치합니다
(특허 2건만 `[PCT]` 항목의 게시판 소속 차이, 합계는 동일).

## 올릴 파일

```
*.html (16개)   styles.css   app.js   uploads/
```

`styles.css` 를 반드시 함께 올리고 업로드 후 `Ctrl+Shift+R` 로 강제 새로고침하세요.

## 이미지 87장

`copy-images.bat` 를 서버에서 더블클릭 → `D:\ccrl-site\uploads` 생성 → 그 폴더를 GitHub에 드래그.

**참고**: `about_lab.zip` 안에 실제 사진 155장이 들어 있습니다. 배치 파일이 안 되면
`about lab\Students_CCRL_files\` 와 `Alumni_CCRL_files\` 안의 사진을 직접 꺼내 쓰셔도 됩니다.
다만 파일명이 같으니 `uploads\2017\04\` 등 원래 폴더 구조로 넣어야 합니다.

## 남은 차이

- 원본 메인의 학부 인턴 모집 팝업 미포함
- Seminar 게시판(100건) 미포함 — 첨부파일이 본체
- Lab board(내부 문서 9건) 미포함

hosts 파일의 `127.0.0.1 ccrl.hanyang.ac.kr` 줄은 작업 끝나면 지우세요.
