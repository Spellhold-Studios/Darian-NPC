@echo off
IF NOT EXIST "override\t1darrom.wav" goto install
goto end

:install

"darian\music\oggdec.exe" darian\music\t1darrom.ogg"

move "darian\music\*.wav" "override" > nul

:end
::::