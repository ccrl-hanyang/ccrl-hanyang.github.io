# CCRL 홈페이지

기존 WordPress 사이트를 정적 페이지로 옮긴 것입니다. 메뉴 구조·레이아웃·강조색(`#3666a0`)을 원본에 맞췄습니다. 빌드 과정 없습니다.

## 페이지 (13개)

| 파일 | 원본 메뉴 |
|---|---|
| `index.html` | 메인 (소개 + Quick menu + YouTube + 후원 로고) |
| `introduction.html` | Introduction |
| `research.html` | Research (그림 19장 포함) |
| `professor.html` | People › Professor |
| `students.html` | People › Students |
| `alumni.html` | People › Alumni |
| `pub-intl-journal.html` | Publication › International journal (80) |
| `pub-intl-conference.html` | Publication › International conference (76) |
| `pub-domestic-journal.html` | Publication › Domestic journal (37) |
| `pub-domestic-conference.html` | Publication › Domestic conference (160) |
| `patent.html` | Publication › Patent (국외 23 / 국내 37 / 출원 25) |
| `project.html` | Project (진행 15 / 완료 32) |
| `location.html` | Location |

`styles.css` / `app.js` 는 모든 페이지가 공유합니다.

논문·졸업생 페이지에는 검색창이 있어서 저자·제목·학회·연도로 즉시 필터링됩니다. 기존 KBoard 검색을 대체하는 부분입니다.

---

## ⚠ 업로드할 파일 (빠뜨리면 서식이 사라집니다)

지난번에 화면이 깨진 원인은 `styles.css` 를 안 올린 것입니다. **아래를 모두 올려야 합니다.**

```
index.html   introduction.html   research.html
professor.html   students.html   alumni.html
pub-intl-journal.html   pub-intl-conference.html
pub-domestic-journal.html   pub-domestic-conference.html
patent.html   project.html   location.html
styles.css   ← 필수
app.js       ← 필수
images/      ← 사진 넣은 뒤
```

올린 뒤 `https://ccrl-hanyang.github.io/styles.css` 에 접속해 보세요. CSS 코드가 보이면 정상, 404면 안 올라간 것입니다.

### 업로드 순서

1. 주소창에 `https://github.com/<조직>/<저장소>/upload/main`
2. 파일 전부 드래그 → **Commit changes**
3. **Settings → Pages** → Branch `main` / `/ (root)` → **Save**
4. **Actions** 탭에서 초록 체크 확인 → 1~2분 뒤 접속
5. 옛 화면이 보이면 `Ctrl + Shift + R`

같은 이름의 파일은 자동으로 덮어써집니다.

---

## 이미지 83장 넣기

교수님 1 · 구성원 8 · 졸업생 50 · 연구 그림 19 · 후원 로고 5. 자리와 파일명 매핑은 이미 잡혀 있습니다.

**1단계** — 이 폴더를 서버 컴퓨터로 옮기고, `copy-photos.ps1` 을 메모장으로 열어 첫 부분 경로를 수정합니다.

```
$src = "C:\wamp64\www\wordpress\wp-content\uploads"
```

경로를 모르면 서버에서:
```
dir /s /b /ad C:\ | findstr /i "wp-content\\uploads"
```

**2단계** — 실행합니다.
```
powershell -ExecutionPolicy Bypass -File .\copy-photos.ps1
```
`복사 완료: 83 / 83` 이 나오면 성공입니다. 못 찾은 파일은 목록으로 알려줍니다.

**3단계** — `images` 폴더를 저장소에 업로드합니다.

사진이 없는 사람은 사선 무늬로, 없는 그림은 자동으로 숨겨져서 레이아웃이 깨지지 않습니다. 일부만 올려도 됩니다.

---

## 개인정보

기존 사이트에 공개돼 있던 **구성원 이메일을 그대로 넣었습니다.** 졸업생 소속 이력과 학위논문 제목도 원본대로입니다.

`mailto:` 노출이 스팸 봇 표적이 되는 건 사실이지만 기존 사이트도 같은 상태였으니 새로 생기는 위험은 아닙니다. `이름 at hanyang.ac.kr` 형태로 바꾸길 원하시면 말씀해 주세요.

**Lab board (KBoard 12) 9건은 넣지 않았습니다.** `연구실 신상정보`, `연구실 자산 파일` 같은 내부 게시판 문서로, 실제 내용은 첨부파일에 있어서 제목만 옮기면 빈 목록이 됩니다. 원하시면 추가합니다.

빠진 것: 세미나 자료 114건(첨부파일이 본체), 지난 공지 10건, 추천 도서 15건, Gallery. 필요한 것 알려주세요.

---

## 고치기

GitHub 웹에서 파일 열고 연필 아이콘 → 편집 → Commit.

- 구성원 → `students.html` 의 `<div class="pc">` 블록 복사
- 논문 → 해당 `pub-*.html` 의 `<tbody>` 안에 `<tr>` 추가
- 졸업생 → `alumni.html` 의 `<tr>` 복사
- **메뉴 변경은 13개 파일을 각각 수정해야 합니다.** 정적 사이트의 한계입니다. 메뉴를 자주 바꿔야 하면 알려주세요

## 도메인

> ccrl.hanyang.ac.kr 의 A 레코드를 삭제하고 CNAME으로 `ccrl-hanyang.github.io` 를
> 가리키도록 변경 부탁드립니다. MX 레코드는 그대로 유지해 주세요.

DNS 변경이 확인된 **뒤에** Settings → Pages → Custom domain 에 입력하고 Enforce HTTPS를 체크하세요.
