@echo off


rem �o�b�N�A�b�v���̋N�_�f�B���N�g���B
SET SRC=D:
rem �o�b�N�A�b�v��̋N�_�f�B���N�g���B�l�b�g���[�N�h���C�u�ł�ok�B
SET DST=<�ǂ��N�_�ɒu��������>


rem �T�u���[�`�����Ă�Ńo�b�N�A�b�v�Ώۂ̃t�H���_���w��B�����w��ł���B
CALL :backup \tool

rem ������exit���Ȃ��ƃo�O���
exit

:backup
robocopy "%SRC%%*" "%DST%%*" /DCOPY:T /MIR /R:3 /W:5
exit /b
