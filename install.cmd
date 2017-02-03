set APP_NAME=angular2-app-test
set GITHUB_USERID=mjunaidi

call git clone https://github.com/angular/quickstart.git %APP_NAME%
cd %APP_NAME%

for /f %i in (non-essential-files.txt) do del %i /F /S /Q
rd .git /s /q
rd e2e /s /q

git init
git add .
git commit -m "Initial commit"

git remote add origin https://github.com/%GITHUB_USERID%/%APP_NAME%.git
git push -u origin master

call npm install
call npm start

pause