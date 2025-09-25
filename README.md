# StudyTechie

StudyTechie is an AI-powered education app designed for students, teachers, and parents in India.  
This repository contains the full package: web app, mobile app, admin dashboard, and app store metadata.

---

## 📂 Repository Structure

```
studytechie/
 ├─ studytechie-web/     # Web frontend (React + Vite + Tailwind, deploy with Vercel)
 ├─ studytechie-mobile/  # Mobile app (Expo React Native, deploy to Play Store / App Store)
 ├─ studytechie-admin/   # Admin dashboard (React + Firebase, deploy with Vercel)
 └─ store-metadata/      # Play Store & App Store metadata (descriptions, screenshots guide)
```

---

## 🚀 Deployment Guide

A full step-by-step **deployment checklist** is included here:  
👉 [StudyTechie_Deploy_Checklist.pdf](StudyTechie_Deploy_Checklist.pdf)

---

### 1. Website (studytechie-web)

- Built with Vite + React + TailwindCSS.  
- Deployment: **Vercel**  

**Steps:**  
```bash
cd studytechie-web
npm install
npm run dev   # local test
```

To deploy on Vercel:  
- Import repo on [vercel.com](https://vercel.com)  
- Set root directory to `studytechie-web`  
- Build command: `npm run build`  
- Output directory: `dist`  

---

### 2. Mobile App (studytechie-mobile)

- Built with **Expo React Native**.  
- Supports Android & iOS.  

**Steps:**  
```bash
cd studytechie-mobile
npm install
npx expo start   # run in Expo Go
```

To build for stores:  
```bash
npx expo build:android   # generates .aab for Google Play
npx expo build:ios       # generates .ipa for App Store
```

Update `App.js` → `PRIVACY_PDF_URL` to point to live privacy policy hosted on your Vercel site.

---

### 3. Admin Dashboard (studytechie-admin)

- Built with React + Firebase.  
- Manage tutors, content, and student data.  

**Steps:**  
```bash
cd studytechie-admin
npm install
npm start   # local test
```

Before deploying:  
- Create a Firebase project  
- Enable Firestore + Authentication  
- Update `firebaseConfig.js` with Firebase keys  

Deploy on **Vercel** with root = `studytechie-admin`.

---

### 4. Store Metadata

Located in `store-metadata/`  
- `google-play.txt` → Use in Google Play Console  
- `app-store.txt` → Use in App Store Connect  

Includes: app descriptions, categories, privacy policy links.

---

## 📜 Legal Documents

The following are included and linked from the web app:  
- Privacy Policy  
- Terms of Use (with Tutors section)  
- About Us  
- Disclaimer  
- Refund & Cancellation Policy  
- Cookie Policy  
- Safety & Community Guidelines  
- FAQ  

👉 All bundled in **StudyTechie_Legal_Info.pdf**

---

## ⚖️ License

This project is proprietary. All rights reserved © StudyTechie 2025.

---

## 📧 Contact

For support, email: **millionmacq@gmail.com**  
