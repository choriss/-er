@ECHO OFF
REM 結合バッチファイル：div2.exe により生成

ECHO 分割されたファイルを復元します

IF NOT EXIST "dist.001"  GOTO ERR1
IF NOT EXIST "dist.002"  GOTO ERR1
IF NOT EXIST "dist.003"  GOTO ERR1
IF NOT EXIST "dist.004"  GOTO ERR1
IF NOT EXIST "dist.005"  GOTO ERR1
IF NOT EXIST "dist.006"  GOTO ERR1
IF NOT EXIST "dist.007"  GOTO ERR1
IF NOT EXIST "dist.008"  GOTO ERR1
IF NOT EXIST "dist.009"  GOTO ERR1
IF NOT EXIST "dist.010"  GOTO ERR1
IF NOT EXIST "dist.011"  GOTO ERR1
IF NOT EXIST "dist.012"  GOTO ERR1
IF NOT EXIST "dist.013"  GOTO ERR1
IF NOT EXIST "dist.014"  GOTO ERR1
IF NOT EXIST "dist.015"  GOTO ERR1
IF NOT EXIST "dist.016"  GOTO ERR1
IF NOT EXIST "dist.017"  GOTO ERR1
IF NOT EXIST "dist.018"  GOTO ERR1
IF     EXIST "dist.zip"  GOTO ERR2

COPY "dist.001" "dist.zip"
IF ERRORLEVEL 1 GOTO ERR3
COPY /B "dist.zip"+"dist.002"+"dist.003"+"dist.004"+"dist.005"
IF ERRORLEVEL 1 GOTO ERR3
COPY /B "dist.zip"+"dist.006"+"dist.007"+"dist.008"+"dist.009"
IF ERRORLEVEL 1 GOTO ERR3
COPY /B "dist.zip"+"dist.010"+"dist.011"+"dist.012"+"dist.013"
IF ERRORLEVEL 1 GOTO ERR3
COPY /B "dist.zip"+"dist.014"+"dist.015"+"dist.016"+"dist.017"
IF ERRORLEVEL 1 GOTO ERR3
COPY /B "dist.zip"+"dist.018"
IF ERRORLEVEL 1 GOTO ERR3

DEL "dist.001"
DEL "dist.002"
DEL "dist.003"
DEL "dist.004"
DEL "dist.005"
DEL "dist.006"
DEL "dist.007"
DEL "dist.008"
DEL "dist.009"
DEL "dist.010"
DEL "dist.011"
DEL "dist.012"
DEL "dist.013"
DEL "dist.014"
DEL "dist.015"
DEL "dist.016"
DEL "dist.017"
DEL "dist.018"


REN "dist.zip" "dist.zip"

ECHO このバッチファイルも消してください
GOTO END

:ERR1
ECHO ファイルが一部存在しません
ECHO 処理を中止します
GOTO END

:ERR2
ECHO 復元先のファイルが既に存在しています
ECHO 処理を中止します
GOTO END

:ERR3
ECHO 復元に失敗しました
ECHO 処理を中止します
GOTO END

:END
ECHO 終了するには、何かキーを押してください
PAUSE >NUL

