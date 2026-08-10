# CCRL 홈페이지

기존 WordPress 사이트를 정적 페이지로 옮긴 것입니다. 빌드 과정 없습니다.

## 페이지 구성

| 파일 | 내용 |
|---|---|
| `index.html` | 소개, 연구 분야 요약, 통계 |
| `research.html` | 연구 분야 4개 상세 |
| `people.html` | 교수님 + 현재 구성원 8명 |
| `publications.html` | 논문 353편 · 특허 85건 (탭 + 검색) |
| `projects.html` | 과제 진행 15 · 완료 32 |
| `alumni.html` | 졸업생 50명 |
| `contact.html` | 주소, 연락처 |
| `styles.css` `app.js` | 공통 스타일·스크립트 |

메뉴는 모든 페이지에 있고 현재 페이지가 빨간 밑줄로 표시됩니다. 모바일에서는 햄버거 메뉴로 접힙니다.

---

## 사진 넣기 (2단계)

사진 59장(교수님 1 · 구성원 8 · 졸업생 50)의 자리는 이미 잡혀 있습니다. 파일만 채우면 됩니다.

### 1단계 — 서버에서 사진 복사

이 폴더를 **서버 컴퓨터에** 옮겨두고, 폴더 안에서 실행하세요.

먼저 `copy-photos.ps1` 을 메모장으로 열어 첫 부분의 경로를 실제 uploads 폴더로 수정합니다.

```
$src = "C:\wamp64\www\wordpress\wp-content\uploads"
```

경로를 모르면 서버에서 찾으세요.

```
dir /s /b /ad C:\ | findstr /i "wp-content\\uploads"
```

그다음 PowerShell로 실행합니다.

```
powershell -ExecutionPolicy Bypass -File .\copy-photos.ps1
```

`복사 완료: 59 / 59` 가 나오면 성공입니다. 못 찾은 파일은 목록으로 알려줍니다.

### 2단계 — 저장소에 올리기

`images` 폴더를 GitHub 저장소에 업로드합니다. 웹 업로드 화면에 폴더째로 드래그하면 하위 구조가 유지됩니다.

사진이 없는 사람은 사선 무늬 자리표시자로 표시되고 레이아웃은 깨지지 않습니다. 일부만 올려도 됩니다.

---

## 개인정보에 대해

기존 사이트에 공개돼 있던 **구성원 이메일 주소를 그대로 넣었습니다.** 졸업생의 소속 이력과 학위논문 제목도 전부 그대로입니다.

다만 한 가지는 판단해 주셔야 합니다. `mailto:` 링크로 노출된 이메일은 스팸 수집 봇의 표적이 됩니다. 기존 사이트도 같은 상태였으니 새로 생기는 위험은 아니지만, 원하시면 `이름 at hanyang.ac.kr` 형태로 바꿔드릴 수 있습니다. 각 구성원 의사도 물어보시면 좋겠습니다.

**Lab board (KBoard 12) 9건은 제외했습니다.** `연구실 신상정보`, `연구실 자산 파일` 같은 내부 문서라 공개 사이트에 올리면 새로 노출되는 정보입니다. 내용은 첨부파일에 있어서 제목만 옮겨봐야 의미도 없습니다. 넣기를 원하시면 말씀해 주세요.

빠진 것: 세미나 자료 114건(첨부파일이 본체), 지난 공지 10건, 추천 도서 15건, 홍보 YouTube 영상. 필요한 것 알려주시면 추가합니다.

---

## 올리기

1. 저장소에서 **Add file → Upload files**
2. `.html`, `.css`, `.js` 파일 전부와 `images` 폴더를 드래그 → **Commit changes**
   (`copy-photos.ps1`, `README.md` 는 올려도 되고 안 올려도 됩니다)
3. **Settings → Pages** → Branch `main` / `/ (root)` → **Save**
4. 1~2분 뒤 `https://ccrl-hanyang.github.io` 접속

## 고치기

GitHub 웹에서 파일 열고 연필 아이콘 → 편집 → Commit.

- 구성원 추가·삭제 → `people.html` 의 `<article class="pcard">` 블록 복사
- 논문 추가 → `publications.html` 의 해당 `<ol id="panel-ij">` 안에 `<li>` 복사. 위쪽 탭 버튼의 `<em>80</em>` 숫자도 같이 수정
- 졸업생 추가 → `alumni.html` 의 `<article class="acard">` 복사
- 메뉴 항목 변경 → 모든 페이지의 `<ul class="navlinks">` 를 각각 수정해야 합니다 (정적 사이트의 한계)

## 도메인

`ccrl.hanyang.ac.kr` 을 유지하려면 학교 정보통신처에 요청해야 합니다.

> ccrl.hanyang.ac.kr 의 A 레코드를 삭제하고 CNAME으로 `ccrl-hanyang.github.io` 를
> 가리키도록 변경 부탁드립니다. MX 레코드는 그대로 유지해 주세요.

DNS 변경이 확인된 **뒤에** Settings → Pages → Custom domain 에 입력하고 Enforce HTTPS를 체크하세요.
