# Apple App Store Connect Listing & Submission Guide

This document contains all details, copy-pasteable fields, asset locations, questionnaire answers, and review notes required for **Clinical Assistant: EHR & FHIR** on App Store Connect.

- **In-Flight iOS Version URL:** [App Store Connect — In-Flight iOS Version](https://appstoreconnect.apple.com/apps/6824363036/distribution/ios/version/inflight)
- **App Information URL:** [App Store Connect — App Information](https://appstoreconnect.apple.com/apps/6824363036/distribution/info)
- **Pricing & Availability URL:** [App Store Connect — Pricing & Availability](https://appstoreconnect.apple.com/apps/6824363036/distribution/pricing)

---

## 1. Pricing and Availability ⚠️ *(Required to Add for Review)*
**URL:** [https://appstoreconnect.apple.com/apps/6824363036/distribution/pricing](https://appstoreconnect.apple.com/apps/6824363036/distribution/pricing)

- **Price Schedule**:
  - Base Price: Set to **Free (USD $0.00 / Tier 0)**.
- **Availability**:
  - Availability: Select **All countries or regions selected** (or choose your target jurisdictions).
- Click **Save**.

---

## 2. App Information (`General` → `App Information`)
**URL:** [https://appstoreconnect.apple.com/apps/6824363036/distribution/info](https://appstoreconnect.apple.com/apps/6824363036/distribution/info)

### Localizable Information (English - U.S.)
- **Name** *(max 30 characters)*:
  ```text
  Clinical Assistant: EHR & FHIR
  ```
  *(30 / 30 characters)*

- **Subtitle** *(max 30 characters)*:
  ```text
  Health records, on your terms
  ```
  *(29 / 30 characters)*  
  *(Alternative for enhanced search indexing: `Private Health Records & Labs`)*

### General Information
- **Bundle ID**: `com.cidevelop.clinicalAssistant`
- **SKU**: `com.cidevelop.clinicalAssistant`
- **Apple ID**: `6824363036`
- **Primary Language**: `English (U.S.)`

### Categories
- **Primary Category**: `Medical`
- **Secondary Category**: `Health & Fitness`

### Content Rights Declaration ⚠️ *(Action Required)*
Click **Set Up Content Rights Information** / **Edit**:
- **Prompt:** *"Does your app contain, show, or access third-party content?"*
- **Selection:** **"No, it does not contain, show, or access third-party content"**  
  *(Clinical Assistant is a client-side personal health aggregation tool where users log in to view their own patient records; all storage and encryption are strictly on-device).*
- Click **Done**.

### Age Ratings
- **Assigned Rating:** **16+** *(173 countries/regions; 15+ in South Korea; 17+ on legacy iOS versions)*
- **Questionnaire Selections:**
  - **Medical or Treatment Information:** `Frequent/Intense` *(Standard for clinical lab observations, vital tracking, and EHR portals)*
  - **Health or Wellness Topics:** `Yes`
  - **All other themes (Violence, Profanity, Mature Themes, Gambling, Web Browsing, Social Feeds):** `None` / `No`

### Regulations & Permits
- **Digital Services Act (DSA):** Identified as non-trader for this app.
- **Regulated Medical Devices:** Declared *not a regulated medical device in any country or region*.

### Export Compliance & Encryption
- In `ios/Runner/Info.plist`, `ITSAppUsesNonExemptEncryption` is set to `<false/>`.
- No export compliance documentation upload is required by Apple.

### License Agreement
- Uses **Apple's Standard License Agreement (EULA)**.

---

## 3. In-Flight Version Information (Version `0.6.0`, Build `23`)
**URL:** [https://appstoreconnect.apple.com/apps/6824363036/distribution/ios/version/inflight](https://appstoreconnect.apple.com/apps/6824363036/distribution/ios/version/inflight)

- **Version Number**: `0.6.0` (Updated from default `0.2.0` to match production bundle `0.6.0 (23)`).
- **Attached Build**: `0.6.0 (23)`.
- **Submission Status**: **Ready for Review / In Review** (Added to review and submitted for App Store review).

### Screenshots

Because the iOS build specifies universal device support (`TARGETED_DEVICE_FAMILY = "1,2"`), Apple requires **both** 6.9"/6.7" iPhone screenshots and 13-inch iPad screenshots:

#### A. iPhone Display (6.9" / 6.7" Display: `1206 × 2622 px`)
Upload the 7 screenshots from `distribution/app-store/screenshots/`:
1. `distribution/app-store/screenshots/01-overview.png` *(Health Overview & Out-of-Range Highlights)*
2. `distribution/app-store/screenshots/02-trends.png` *(Longitudinal Trends & Unit Conversion)*
3. `distribution/app-store/screenshots/03-records.png` *(Clinical Lab Panels & Observations)*
4. `distribution/app-store/screenshots/04-connections.png` *(Apple HealthKit & SMART-on-FHIR Sources)*
5. `distribution/app-store/screenshots/05-demo-records.png` *(Local Encrypted Records & Specializations)*
6. `distribution/app-store/screenshots/06-export.png` *(Doctor-Visit PDF, FHIR JSON & CSV Exports)*
7. `distribution/app-store/screenshots/07-medications.png` *(Medication Adherence & Dose Reminders)*

#### B. iPad Display (13-inch iPad Display: `2048 × 2732 px`, No Alpha) ⚠️ *(Required to Add for Review)*
Click on the **13" iPad Display** tab in the screenshots section and upload the 7 generated assets from `distribution/app-store/screenshots-ipad-13/`:
1. `distribution/app-store/screenshots-ipad-13/01-overview.png`
2. `distribution/app-store/screenshots-ipad-13/02-trends.png`
3. `distribution/app-store/screenshots-ipad-13/03-records.png`
4. `distribution/app-store/screenshots-ipad-13/04-connections.png`
5. `distribution/app-store/screenshots-ipad-13/05-demo-records.png`
6. `distribution/app-store/screenshots-ipad-13/06-export.png`
7. `distribution/app-store/screenshots-ipad-13/07-medications.png`

---

### App Metadata Fields

- **Promotional Text** *(max 170 characters)*:
  ```text
  Private, on-device health record aggregation. Connect Apple Health & FHIR patient portals, track trends, and export secure doctor-visit summaries.
  ```
  *(144 characters)*

- **Keywords** *(max 100 characters, comma-separated)*:
  ```text
  health records,lab results,FHIR,vitals,blood pressure,HealthKit,medications,medical history,export
  ```
  *(98 characters)*

- **Support URL**:
  ```text
  https://github.com/CIInc/ClinicalAssistant/issues
  ```

- **Marketing URL** *(optional)*:
  ```text
  https://github.com/CIInc/ClinicalAssistant
  ```

- **Description** *(max 4,000 characters)*:
  ```text
  Clinical Assistant is a patient-controlled, privacy-first personal health record manager that brings your health records, vital measurements, and laboratory results together on your iPhone.

  KEY FEATURES:

  • APPLE HEALTHKIT & CLINICAL RECORDS
  Read shared health metrics (blood pressure, heart rate, resting heart rate, blood glucose, oxygen saturation, temperature, respiratory rate, sleep, nutrition, hydration) and FHIR Clinical Health Records (diagnostic reports, observations) with your permission.

  • SMART-ON-FHIR & LAB RECORD IMPORTS
  Connect securely to your healthcare provider's patient portal using SMART-on-FHIR or import local FHIR JSON bundles. Automatically group lab panels (CBC, CMP, Lipid, Thyroid), preserve reference ranges, convert units (mg/dL ↔ mmol/L), and detect out-of-range readings.

  • CARDIOVASCULAR HEALTH & BLOOD PRESSURE STAGING
  Evaluate blood pressure against ACC/AHA 2017 clinical stages (Normal, Elevated, Stage 1, Stage 2, Crisis) with contextual tracking (cuff, posture, arm). Compare morning vs. evening surges and explore longitudinal heart rhythm metrics (HRV, SDNN).

  • MEDICATION MANAGEMENT & ADHERENCE
  Track current and discontinued medications. Set recurring local dose reminders, review offline drug-drug and food-drug interaction warnings, and monitor longitudinal adherence using Proportion of Days Covered (PDC).

  • PATIENT-REPORTED OUTCOMES (PROMs) & SYMPTOMS
  Complete validated clinical surveys (PHQ-9, GAD-7, CAT COPD, HAQ-DI) and log symptoms with timeline overlays directly on your vital measurement charts.

  • DOCTOR VISIT PREPARATION & CLINICAL GUIDELINES
  Prepare for appointments with specialized consultation agendas (Cardiology, Endocrinology, Annual Wellness), out-of-range summaries, and insurance cards. Access a curated offline library of clinical guidelines from NICE, USPSTF, and WHO.

  • PORTABLE, USER-CONTROLLED EXPORTS
  Generate printable Doctor-Visit PDFs, standards-compliant HL7 FHIR R4 JSON bundles, or CSV files. All exports are created on-demand in temporary storage with privacy redaction options.

  PRIVACY BY DESIGN:
  • Local-Only Storage: All records are stored exclusively on your physical device. There are zero cloud servers, zero remote user accounts, and zero advertising or telemetry SDKs.
  • AES-GCM 256-bit Encryption: Your local database is encrypted with hardware-backed Apple Keychain keys (kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly).
  • Full Deletion Control: Purge your records and credentials at any time with a single tap.

  DISCLAIMER:
  Clinical Assistant is an informational personal health tracking tool, not a medical device or diagnostic application. It does not provide medical advice, diagnosis, or personalized treatment plans. Always consult a qualified healthcare provider for clinical decisions.
  ```

- **Copyright**:
  ```text
  2026 Clinical Assistant
  ```

---

## 4. App Review Information

- **Sign-in required**: **Unchecked (No)** — Clinical Assistant does not have a user account or login wall; all functionality runs locally.
- **Contact Information**:
  - First Name: `Aymeric`
  - Last Name: `Grassart`
  - Phone Number: `+13125761725`
  - Email: `officers@cidevelop.com`
- **Notes for Reviewer**:
  ```text
  No account or sign-in is required. Create a local vault, then open Sources and choose Load demonstration records to explore synthetic data. Health and provider connections are optional. The app is a personal record organizer; charts are descriptive and it does not provide diagnosis or treatment recommendations.
  ```

---

## 5. App Privacy Nutrition Label
**Location in App Store Connect:** `App Privacy` (left sidebar)

- **Do you or your third-party partners collect data from this app?**:
  Select: **No, we do not collect data from this app**.
  *(All data is processed strictly on-device and never transmitted to developer or third-party servers).*
