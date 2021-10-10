@echo off


rem バックアップ元の起点ディレクトリ。
SET SRC=D:
rem バックアップ先の起点ディレクトリ。ネットワークドライブでもok。
SET DST=<どこ起点に置きたいか>


rem サブルーチンを呼んでバックアップ対象のフォルダを指定。複数指定できる。
CALL :backup \tool

rem ここでexitしないとバグるよ
exit

:backup
robocopy "%SRC%%*" "%DST%%*" /DCOPY:T /MIR /R:3 /W:5
exit /b
