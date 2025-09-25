@echo off
REM ===============================
REM Fully self-contained setup for StudyTechie
REM ===============================

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

REM Install all required dependencies (React, React Native, navigation, webview, gesture handler, reanimated)
npx expo install react react-native react-native-worklets @react-navigation/native @react-navigation/native-stack react-native-screens react-native-safe-area-context react-native-gesture-handler react-native-reanimated react-native-webview react-native-get-random-values

REM Start Expo server (clear cache)
npx expo start -c

pause
