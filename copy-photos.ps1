# CCRL 이미지 복사 스크립트
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
  @{ from = "2017\04\yongchun.jpg"; to = "images\alumni\01-img.jpg" }
  @{ from = "2017\04\Joohg.jpg"; to = "images\alumni\02-img.jpg" }
  @{ from = "2017\04\kimsr.jpg"; to = "images\alumni\03-img.jpg" }
  @{ from = "2017\04\jinsoo.jpg"; to = "images\alumni\04-img.jpg" }
  @{ from = "2017\04\choijh.jpg"; to = "images\alumni\05-img.jpg" }
  @{ from = "2017\04\songmk.jpg"; to = "images\alumni\06-img.jpg" }
  @{ from = "2017\04\okjh.jpg"; to = "images\alumni\07-img.jpg" }
  @{ from = "2017\04\kimjh.jpg"; to = "images\alumni\08-img.jpg" }
  @{ from = "2019\03\권순희_homepage.png"; to = "images\alumni\09-img.png" }
  @{ from = "2017\04\namsc.jpg"; to = "images\alumni\10-img.jpg" }
  @{ from = "2017\04\yangsg.jpg"; to = "images\alumni\11-img.jpg" }
  @{ from = "2017\04\leess.jpg"; to = "images\alumni\12-img.jpg" }
  @{ from = "2017\04\leejy.jpg"; to = "images\alumni\13-img.jpg" }
  @{ from = "2017\04\shinjh.jpg"; to = "images\alumni\14-img.jpg" }
  @{ from = "2017\04\parkjh.jpg"; to = "images\alumni\15-img.jpg" }
  @{ from = "2017\04\choics.jpg"; to = "images\alumni\16-img.jpg" }
  @{ from = "2017\04\kimsj.jpg"; to = "images\alumni\17-img.jpg" }
  @{ from = "2017\04\parkks.jpg"; to = "images\alumni\18-img.jpg" }
  @{ from = "2017\04\leesw.jpg"; to = "images\alumni\19-img.jpg" }
  @{ from = "2017\04\hongsn.jpg"; to = "images\alumni\20-img.jpg" }
  @{ from = "2017\04\shinsk.jpg"; to = "images\alumni\21-img.jpg" }
  @{ from = "2017\04\kangsh.jpg"; to = "images\alumni\22-img.jpg" }
  @{ from = "2017\04\kimdy.jpg"; to = "images\alumni\23-img.jpg" }
  @{ from = "2017\04\choijw.jpg"; to = "images\alumni\24-img.jpg" }
  @{ from = "2017\04\kimdk.jpg"; to = "images\alumni\25-img.jpg" }
  @{ from = "2017\04\hainsu.jpg"; to = "images\alumni\26-img.jpg" }
  @{ from = "2017\04\kimhg.jpg"; to = "images\alumni\27-img.jpg" }
  @{ from = "2017\04\choisw.jpg"; to = "images\alumni\28-img.jpg" }
  @{ from = "2017\04\kimja.jpg"; to = "images\alumni\29-img.jpg" }
  @{ from = "2017\04\jungbt.jpg"; to = "images\alumni\30-img.jpg" }
  @{ from = "2017\04\yoonhk.jpg"; to = "images\alumni\31-img.jpg" }
  @{ from = "2017\04\kimhj.jpg"; to = "images\alumni\32-img.jpg" }
  @{ from = "2017\04\ahnje.jpg"; to = "images\alumni\33-img.jpg" }
  @{ from = "2017\04\yooch.jpg"; to = "images\alumni\34-img.jpg" }
  @{ from = "2017\04\sunghan.jpg"; to = "images\alumni\35-img.jpg" }
  @{ from = "2017\04\byunkb.jpg"; to = "images\alumni\36-img.jpg" }
  @{ from = "2017\04\kimhk.jpg"; to = "images\alumni\37-img.jpg" }
  @{ from = "2017\04\jhpaik.jpg"; to = "images\alumni\38-img.jpg" }
  @{ from = "2017\04\leehg.jpg"; to = "images\alumni\39-img.jpg" }
  @{ from = "2017\04\kangtw.jpg"; to = "images\alumni\40-img.jpg" }
  @{ from = "2017\04\leedy.jpg"; to = "images\alumni\41-img.jpg" }
  @{ from = "2017\04\daeminjo.jpg"; to = "images\alumni\42-img.jpg" }
  @{ from = "2017\04\jungmin.choi_.jpg"; to = "images\alumni\43-img.jpg" }
  @{ from = "2019\03\이지현.jpg"; to = "images\alumni\44-img.jpg" }
  @{ from = "2020\02\KakaoTalk_20200226_192842276-150x150.jpg"; to = "images\alumni\45-img.jpg" }
  @{ from = "2022\02\KakaoTalk_20220222_164330568-150x150.jpg"; to = "images\alumni\46-img.jpg" }
  @{ from = "2021\03\KakaoTalk_20210304_150506432-150x150.jpg"; to = "images\alumni\47-img.jpg" }
  @{ from = "2021\09\LAB_9386-sy-여권-150x150.jpg"; to = "images\alumni\48-img.jpg" }
  @{ from = "2024\08\한동우.png"; to = "images\alumni\49-img.png" }
  @{ from = "2023\02\영준-150x150.jpg"; to = "images\alumni\50-img.jpg" }
  @{ from = "2017\04\shindj.jpg"; to = "images\people\shin-dongjoon.jpg" }
  @{ from = "2018\04\삼성-로고_수정.png"; to = "images\logos\img.png" }
  @{ from = "2018\04\한국반도체산업협회-로고.jpg"; to = "images\logos\img.jpg" }
  @{ from = "2018\04\BK-로고_수정.jpg"; to = "images\logos\bk.jpg" }
  @{ from = "2021\04\IITP-150x150.jpg"; to = "images\logos\iitp-150x150.jpg" }
  @{ from = "2018\04\한국연구재단-로고-e1523510939103-150x150.jpg"; to = "images\logos\e1523510939103-150x150.jpg" }
  @{ from = "2021\04\ECC_WirelessComm_1-600x604.png"; to = "images\research\ecc-wirelesscomm-1-600x604.png" }
  @{ from = "2021\04\ECC_WirelessComm_2.png"; to = "images\research\ecc-wirelesscomm-2.png" }
  @{ from = "2021\04\ECC_Memory_1.png"; to = "images\research\ecc-memory-1.png" }
  @{ from = "2021\04\ECC_Memory_2-800x247.png"; to = "images\research\ecc-memory-2-800x247.png" }
  @{ from = "2021\04\ECC_Memory_3-600x429.png"; to = "images\research\ecc-memory-3-600x429.png" }
  @{ from = "2021\04\Blind_detection_ECC_1-600x492.png"; to = "images\research\blind-detection-ecc-1-600x492.png" }
  @{ from = "2021\04\Blind_detection_ECC_2-600x363.png"; to = "images\research\blind-detection-ecc-2-600x363.png" }
  @{ from = "2021\04\Blind_detection_ECC_3.png"; to = "images\research\blind-detection-ecc-3.png" }
  @{ from = "2021\04\Blind_detection_ECC_4-600x274.png"; to = "images\research\blind-detection-ecc-4-600x274.png" }
  @{ from = "2021\04\Lattice_PQC_1-600x427.png"; to = "images\research\lattice-pqc-1-600x427.png" }
  @{ from = "2021\04\Lattice_PQC_2-600x346.png"; to = "images\research\lattice-pqc-2-600x346.png" }
  @{ from = "2021\04\FHE_1-600x450.png"; to = "images\research\fhe-1-600x450.png" }
  @{ from = "2021\04\Feature_Entanglement_1-600x365.png"; to = "images\research\feature-entanglement-1-600x365.png" }
  @{ from = "2021\04\Feature_Entanglement_2-600x198.png"; to = "images\research\feature-entanglement-2-600x198.png" }
  @{ from = "2021\04\ECOC_1.png"; to = "images\research\ecoc-1.png" }
  @{ from = "2021\04\CFAR_1-400x225.png"; to = "images\research\cfar-1-400x225.png" }
  @{ from = "2021\04\CFAR_2.png"; to = "images\research\cfar-2.png" }
  @{ from = "2021\04\Deeplearning_CFAR_1-600x505.png"; to = "images\research\deeplearning-cfar-1-600x505.png" }
  @{ from = "2021\04\Deeplearning_CFAR_2-600x507.png"; to = "images\research\deeplearning-cfar-2-600x507.png" }
)

if (-not (Test-Path -LiteralPath $src)) {
  Write-Host "uploads 폴더를 찾을 수 없습니다: $src" -ForegroundColor Red; exit 1 }
$ok = 0; $miss = @()
foreach ($p in $pairs) {
  $s = Join-Path $src $p.from
  $d = Join-Path $PSScriptRoot $p.to
  New-Item -ItemType Directory -Force -Path (Split-Path $d) | Out-Null
  if (Test-Path -LiteralPath $s) { Copy-Item -LiteralPath $s -Destination $d -Force; $ok++ }
  else { $miss += $p.from } }
Write-Host ""; Write-Host "복사 완료: $ok / $($pairs.Count)" -ForegroundColor Green
if ($miss.Count -gt 0) {
  Write-Host "찾지 못한 파일 $($miss.Count)건:" -ForegroundColor Yellow
  $miss | ForEach-Object { Write-Host "  $_" } }
