@echo off
chcp 65001 > nul
echo.
echo CCRL 사이트에 필요한 이미지 87개를 복사합니다.
echo.
set SRC=D:\Apache24\htdocs\wordpress\wp-content\uploads
set DST=D:\ccrl-site\uploads

if not exist "%SRC%" (
  echo [오류] uploads 폴더가 없습니다: %SRC%
  echo 이 파일을 메모장으로 열어 set SRC= 줄을 실제 경로로 고치세요.
  pause & exit /b 1
)

echo   [2017\04] 43개
robocopy "%SRC%\2017\04" "%DST%\2017\04" "Joohg.jpg" "ahnje.jpg" "byunkb.jpg" "choics.jpg" "choijh.jpg" "choijw.jpg" "choisw.jpg" "daeminjo.jpg" "hainsu.jpg" "hongsn.jpg" "jhpaik.jpg" "jinsoo.jpg" "jungbt.jpg" "jungmin.choi_.jpg" "kangsh.jpg" "kangtw.jpg" "kimdk.jpg" "kimdy.jpg" "kimhg.jpg" "kimhj.jpg" "kimhk.jpg" "kimja.jpg" "kimjh.jpg" "kimsj.jpg" "kimsr.jpg" "leedy.jpg" "leehg.jpg" "leejy.jpg" "leess.jpg" "leesw.jpg" "namsc.jpg" "okjh.jpg" "parkjh.jpg" "parkks.jpg" "shindj.jpg" "shinjh.jpg" "shinsk.jpg" "songmk.jpg" "sunghan.jpg" "yangsg.jpg" "yongchun.jpg" "yooch.jpg" "yoonhk.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2017\05] 2개
robocopy "%SRC%\2017\05" "%DST%\2017\05" "board-673013_1920.jpg" "deep-learning2.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2017\06] 1개
robocopy "%SRC%\2017\06" "%DST%\2017\06" "logo_white_v2.png" /NJH /NJS /NDL /NFL /NP
echo   [2017\07] 1개
robocopy "%SRC%\2017\07" "%DST%\2017\07" "satelietenanlage-499874_1920.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2018\04] 5개
robocopy "%SRC%\2018\04" "%DST%\2018\04" "BK-로고_수정.jpg" "Free-Data-Image.jpg" "삼성-로고_수정.png" "한국반도체산업협회-로고.jpg" "한국연구재단-로고-e1523510939103-150x150.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2019\03] 3개
robocopy "%SRC%\2019\03" "%DST%\2019\03" "권순희_homepage.png" "이승환_homepage2.png" "이지현.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2020\02] 1개
robocopy "%SRC%\2020\02" "%DST%\2020\02" "KakaoTalk_20200226_192842276-150x150.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2020\04] 1개
robocopy "%SRC%\2020\04" "%DST%\2020\04" "그림1-e1587011090282.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2021\03] 2개
robocopy "%SRC%\2021\03" "%DST%\2021\03" "2021185051-150x150.jpg" "KakaoTalk_20210304_150506432-150x150.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2021\04] 20개
robocopy "%SRC%\2021\04" "%DST%\2021\04" "Blind_detection_ECC_1-600x492.png" "Blind_detection_ECC_2-600x363.png" "Blind_detection_ECC_3.png" "Blind_detection_ECC_4-600x274.png" "CFAR_1-400x225.png" "CFAR_2.png" "Deeplearning_CFAR_1-600x505.png" "Deeplearning_CFAR_2-600x507.png" "ECC_Memory_1.png" "ECC_Memory_2-800x247.png" "ECC_Memory_3-600x429.png" "ECC_WirelessComm_1-600x604.png" "ECC_WirelessComm_2.png" "ECOC_1.png" "FHE_1-600x450.png" "Feature_Entanglement_1-600x365.png" "Feature_Entanglement_2-600x198.png" "IITP-150x150.jpg" "Lattice_PQC_1-600x427.png" "Lattice_PQC_2-600x346.png" /NJH /NJS /NDL /NFL /NP
echo   [2021\09] 1개
robocopy "%SRC%\2021\09" "%DST%\2021\09" "LAB_9386-sy-여권-150x150.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2022\02] 1개
robocopy "%SRC%\2022\02" "%DST%\2022\02" "KakaoTalk_20220222_164330568-150x150.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2022\07] 1개
robocopy "%SRC%\2022\07" "%DST%\2022\07" "hgjoo-150x150.jpg" /NJH /NJS /NDL /NFL /NP
echo   [2023\02] 3개
robocopy "%SRC%\2023\02" "%DST%\2023\02" "도혁-150x150.jpg" "영준-150x150.jpg" "태정-150x150.png" /NJH /NJS /NDL /NFL /NP
echo   [2024\08] 2개
robocopy "%SRC%\2024\08" "%DST%\2024\08" "신_reduce-2.png" "한동우.png" /NJH /NJS /NDL /NFL /NP

echo.
echo ========================================
echo 복사된 파일 수:
dir /s /b "%DST%\*.*" 2>nul | find /c /v ""
echo   ^(87 이면 정상^)
echo.
echo 다음: D:\ccrl-site\uploads 폴더를 GitHub 업로드 화면에 드래그하세요.
echo.
pause
