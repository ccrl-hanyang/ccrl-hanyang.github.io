# CCRL 사진 복사 스크립트
# 1) 아래 $src 를 실제 uploads 폴더 경로로 수정
# 2) 이 파일이 있는 폴더에서 실행:
#      powershell -ExecutionPolicy Bypass -File .\copy-photos.ps1

$src = "C:\wamp64\www\wordpress\wp-content\uploads"    # ← 수정하세요

$pairs = @(
  @{ from = "2022\07\hgjoo-150x150.jpg"; to = "images\people\hyunggun-joo.jpg" }
  @{ from = "2019\03\이승환_homepage2.png"; to = "images\people\seunghwan-lee.png" }
  @{ from = "2021\03\2021185051-150x150.jpg"; to = "images\people\hyunseo-choi.jpg" }
  @{ from = "2020\04\그림1-e1587011090282.jpg"; to = "images\people\jaesang-noh.jpg" }
  @{ from = "2023\02\태정-150x150.png"; to = "images\people\taejeong-kim.png" }
  @{ from = "2017\04\leejy.jpg"; to = "images\people\jaeyeop-lee.jpg" }
  @{ from = "2023\02\도혁-150x150.jpg"; to = "images\people\dohyuk-kim.jpg" }
  @{ from = "2024\08\신_reduce-2.png"; to = "images\people\sin-kim.png" }
  @{ from = "2017\04\yongchun.jpg"; to = "images\alumni\01-photo.jpg" }
  @{ from = "2017\04\Joohg.jpg"; to = "images\alumni\02-photo.jpg" }
  @{ from = "2017\04\kimsr.jpg"; to = "images\alumni\03-photo.jpg" }
  @{ from = "2017\04\jinsoo.jpg"; to = "images\alumni\04-photo.jpg" }
  @{ from = "2017\04\choijh.jpg"; to = "images\alumni\05-photo.jpg" }
  @{ from = "2017\04\songmk.jpg"; to = "images\alumni\06-photo.jpg" }
  @{ from = "2017\04\okjh.jpg"; to = "images\alumni\07-photo.jpg" }
  @{ from = "2017\04\kimjh.jpg"; to = "images\alumni\08-photo.jpg" }
  @{ from = "2019\03\권순희_homepage.png"; to = "images\alumni\09-photo.png" }
  @{ from = "2017\04\namsc.jpg"; to = "images\alumni\10-photo.jpg" }
  @{ from = "2017\04\yangsg.jpg"; to = "images\alumni\11-photo.jpg" }
  @{ from = "2017\04\leess.jpg"; to = "images\alumni\12-photo.jpg" }
  @{ from = "2017\04\leejy.jpg"; to = "images\alumni\13-photo.jpg" }
  @{ from = "2017\04\shinjh.jpg"; to = "images\alumni\14-photo.jpg" }
  @{ from = "2017\04\parkjh.jpg"; to = "images\alumni\15-photo.jpg" }
  @{ from = "2017\04\choics.jpg"; to = "images\alumni\16-photo.jpg" }
  @{ from = "2017\04\kimsj.jpg"; to = "images\alumni\17-photo.jpg" }
  @{ from = "2017\04\parkks.jpg"; to = "images\alumni\18-photo.jpg" }
  @{ from = "2017\04\leesw.jpg"; to = "images\alumni\19-photo.jpg" }
  @{ from = "2017\04\hongsn.jpg"; to = "images\alumni\20-photo.jpg" }
  @{ from = "2017\04\shinsk.jpg"; to = "images\alumni\21-photo.jpg" }
  @{ from = "2017\04\kangsh.jpg"; to = "images\alumni\22-photo.jpg" }
  @{ from = "2017\04\kimdy.jpg"; to = "images\alumni\23-photo.jpg" }
  @{ from = "2017\04\choijw.jpg"; to = "images\alumni\24-photo.jpg" }
  @{ from = "2017\04\kimdk.jpg"; to = "images\alumni\25-photo.jpg" }
  @{ from = "2017\04\hainsu.jpg"; to = "images\alumni\26-photo.jpg" }
  @{ from = "2017\04\kimhg.jpg"; to = "images\alumni\27-photo.jpg" }
  @{ from = "2017\04\choisw.jpg"; to = "images\alumni\28-photo.jpg" }
  @{ from = "2017\04\kimja.jpg"; to = "images\alumni\29-photo.jpg" }
  @{ from = "2017\04\jungbt.jpg"; to = "images\alumni\30-photo.jpg" }
  @{ from = "2017\04\yoonhk.jpg"; to = "images\alumni\31-photo.jpg" }
  @{ from = "2017\04\kimhj.jpg"; to = "images\alumni\32-photo.jpg" }
  @{ from = "2017\04\ahnje.jpg"; to = "images\alumni\33-photo.jpg" }
  @{ from = "2017\04\yooch.jpg"; to = "images\alumni\34-photo.jpg" }
  @{ from = "2017\04\sunghan.jpg"; to = "images\alumni\35-photo.jpg" }
  @{ from = "2017\04\byunkb.jpg"; to = "images\alumni\36-photo.jpg" }
  @{ from = "2017\04\kimhk.jpg"; to = "images\alumni\37-photo.jpg" }
  @{ from = "2017\04\jhpaik.jpg"; to = "images\alumni\38-photo.jpg" }
  @{ from = "2017\04\leehg.jpg"; to = "images\alumni\39-photo.jpg" }
  @{ from = "2017\04\kangtw.jpg"; to = "images\alumni\40-photo.jpg" }
  @{ from = "2017\04\leedy.jpg"; to = "images\alumni\41-photo.jpg" }
  @{ from = "2017\04\daeminjo.jpg"; to = "images\alumni\42-photo.jpg" }
  @{ from = "2017\04\jungmin.choi_.jpg"; to = "images\alumni\43-photo.jpg" }
  @{ from = "2019\03\이지현.jpg"; to = "images\alumni\44-photo.jpg" }
  @{ from = "2020\02\KakaoTalk_20200226_192842276-150x150.jpg"; to = "images\alumni\45-photo.jpg" }
  @{ from = "2022\02\KakaoTalk_20220222_164330568-150x150.jpg"; to = "images\alumni\46-photo.jpg" }
  @{ from = "2021\03\KakaoTalk_20210304_150506432-150x150.jpg"; to = "images\alumni\47-photo.jpg" }
  @{ from = "2021\09\LAB_9386-sy-여권-150x150.jpg"; to = "images\alumni\48-photo.jpg" }
  @{ from = "2024\08\한동우.png"; to = "images\alumni\49-photo.png" }
  @{ from = "2023\02\영준-150x150.jpg"; to = "images\alumni\50-photo.jpg" }
  @{ from = "2017\04\shindj.jpg"; to = "images\people\shin-dongjoon.jpg" }
)

if (-not (Test-Path -LiteralPath $src)) {
  Write-Host "uploads 폴더를 찾을 수 없습니다: $src" -ForegroundColor Red
  Write-Host "스크립트 안의 `$src 값을 실제 경로로 수정하세요."
  exit 1
}
$ok = 0; $miss = @()
foreach ($p in $pairs) {
  $s = Join-Path $src $p.from
  $d = Join-Path $PSScriptRoot $p.to
  New-Item -ItemType Directory -Force -Path (Split-Path $d) | Out-Null
  if (Test-Path -LiteralPath $s) { Copy-Item -LiteralPath $s -Destination $d -Force; $ok++ }
  else { $miss += $p.from }
}
Write-Host ""
Write-Host "복사 완료: $ok / $($pairs.Count)" -ForegroundColor Green
if ($miss.Count -gt 0) {
  Write-Host "찾지 못한 파일 $($miss.Count)건:" -ForegroundColor Yellow
  $miss | ForEach-Object { Write-Host "  $_" }
  Write-Host "이 파일들은 사이트에서 이름 이니셜로 표시됩니다."
}
