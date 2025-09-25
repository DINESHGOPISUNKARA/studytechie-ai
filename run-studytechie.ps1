@echo off
REM ===============================
REM Fully foolproof StudyTechie setup & run
REM ===============================

REM Check if Node.js is installed
node -v >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Node.js is not installed. Please install Node.js from https://nodejs.org/ before running this script.
    pause
    exit /b
)

REM Check if npm is installed
npm -v >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo npm is not installed. Please install npm before running this script.
    pause
    exit /b
)

REM Navigate to project folder
cd /d "C:\Users\TULAS\Desktop\study techie ai app\studytechie-mobile"

REM Create .gitignore if it doesn't exist
if not exist ".gitignore" (
    echo # Expo > .gitignore
    echo .expo/ >> .gitignore
    echo. >> .gitignore
    echo # Node.js >> .gitignore
    echo node_modules/ >> .gitignore
    echo npm-debug.log >> .gitignore
    echo yarn-error.log >> .gitignore
    echo. >> .gitignore
    echo # Build >> .gitignore
    echo android/ >> .gitignore
    echo ios/ >> .gitignore
    echo dist/ >> .gitignore
    echo build/ >> .gitignore
    echo. >> .gitignore
    echo # IDE/editor >> .gitignore
    echo .vscode/ >> .gitignore
    echo .idea/ >> .gitignore
    echo .DS_Store >> .gitignore
    echo .gitignore file created successfully.
) else (
    echo .gitignore already exists.
)

REM Install Expo locally
npm install expo

REM Install all required dependencies
npx expo install react react-native react-native-worklets @react-navigation/native @react-navigation/native-stack react-native-screens react-native-safe-area-context react-native-gesture-handler react-native-reanimated react-native-webview react-native-get-random-values

REM Start Expo server with cache cleared and open DevTools in browser
start "" "cmd.exe" /k "npx expo start -c"

echo.
echo ===============================
echo Your Expo server should now be running.
echo Scan the QR code in the DevTools window to open the app on your phone.
echo ===============================

pause
