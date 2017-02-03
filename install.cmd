call git clone https://github.com/angular/quickstart.git quickstart
cd quickstart

for /f %i in (non-essential-files.txt) do del %i /F /S /Q
rd .git /s /q
rd e2e /s /q

call npm install
call npm start

pause