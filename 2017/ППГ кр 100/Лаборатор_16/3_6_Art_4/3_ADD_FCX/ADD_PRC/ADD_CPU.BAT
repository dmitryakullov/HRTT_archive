@:add_cpu.bat                
@echo off
@tasm  add_cpu.asm
@if exist  add_cpu.obj goto lnk
@echo ������� � 䠩�i add_cpu.asm
@goto end
@:lnk
@echo ����i���i� ���i�祭�
@pause
@tlink  add_cpu.obj
@if exist add_cpu.exe goto pse
@echo ������� � 䠩�i add_cpu.obj
@goto end
@:pse
@echo ���������� ���i�祭�
@del add_cpu.obj
@del add_cpu.map
@pause
@cls
@add_cpu
@:end
@pause
@exit