# Google Play Store Listing & Submission Guide

This document contains all details, verified fields, asset locations, policy questionnaire answers, and submission status for **Clinical Assistant** on Google Play Console.

- **Developer Account ID:** `5732598047340940161`
- **Application ID:** `4974773146653654056`
- **Package Name:** `com.cidevelop.clinicalassistant`
- **Submission Status:** **In Review** (Version `0.6.0`, Version Code `23` submitted for Production & Open Testing)
- **URL:** [Google Play Console — Clinical Assistant](https://play.google.com/console/u/1/developers/5732598047340940161/app/4974773146653654056)

---

## 1. Main Store Listing
**URL:** [Edit Default Store Listing](https://play.google.com/console/u/1/developers/5732598047340940161/app/4974773146653654056/store-listings/default/edit)

### App Details
- **App Name** *(18 / 30 characters)*:
  ```text
  Clinical Assistant
  ```
- **Short Description** *(77 / 80 characters)*:
  ```text
  Personal health record & lab result aggregation, trends, and private exports.
  ```
- **Full Description** *(2,734 / 4,000 characters)*:
  ```text
  Clinical Assistant is a patient-controlled, privacy-first personal health record manager that brings your health records, vital measurements, and laboratory results together on your device.

  KEY FEATURES:

  • HEALTH CONNECT INTEGRATION
  Connect to Google Health Connect to seamlessly aggregate your health history: blood pressure, heart rate, resting heart rate, blood glucose, oxygen saturation, body temperature, respiratory rate, sleep sessions, hydration, nutrition, and daily activity.

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
  • AES-GCM 256-bit Encryption: Your local database is encrypted with hardware-backed Android Keystore keys.
  • Full Deletion Control: Purge your records and credentials at any time with a single tap.

  DISCLAIMER:
  Clinical Assistant is an informational personal health tracking tool, not a medical device or diagnostic application. It does not provide medical advice, diagnosis, or personalized treatment plans. Always consult a qualified healthcare provider for clinical decisions.
  ```

---

### Graphics & Media Assets

| Asset Type | Specifications | Repository Path |
|---|---|---|
| **App Icon** | 512 × 512 px, 32-bit PNG | `distribution/store-listing/app-icon.png` |
| **Feature Graphic** | 1024 × 500 px, PNG | `distribution/store-listing/feature-graphic.png` |
| **Phone Screenshots** | 1080 × 1920 px, PNG (9:16 aspect ratio) | |
| 1. Overview & Highlights | 1080 × 1920 px PNG | `distribution/store-listing/phone-overview.png` |
| 2. Clinical Records & Panels | 1080 × 1920 px PNG | `distribution/store-listing/phone-records.png` |
| 3. Manual Vitals Entry | 1080 × 1920 px PNG | `distribution/store-listing/phone-record-entry.png` |
| 4. Longitudinal Trends | 1080 × 1920 px PNG | `distribution/store-listing/phone-trends.png` |
| 5. Medication Reminders | 1080 × 1920 px PNG | `distribution/store-listing/phone-medications.png` |
| 6. Health Connect & SMART | 1080 × 1920 px PNG | `distribution/store-listing/phone-connections.png` |
| 7. Clinical Guidelines | 1080 × 1920 px PNG | `distribution/store-listing/phone-guidelines.png` |
| 8. PDF, FHIR & CSV Export | 1080 × 1920 px PNG | `distribution/store-listing/phone-export.png` |

---

## 2. Store Settings
**Location:** `Grow` → `Store presence` → `Store settings`

- **App Category**: `App`
- **Category**: `Medical` (Secondary: `Health & Fitness`)
- **Tags**: `Medical`, `Health & Fitness`, `Medicine`
- **Contact Details**:
  - Email: `officers@cidevelop.com`
  - Website: `https://github.com/CIInc/ClinicalAssistant`

---

## 3. App Content & Policy Declarations (All 10 Actioned & Completed)
**Location:** `Policy and programs` → `App content`

1. **Privacy Policy**: Completed (`https://raw.githubusercontent.com/CIInc/ClinicalAssistant/main/PRIVACY.md`)
2. **App Access**: Completed (All features accessible without credentials).
3. **Ads**: Completed (Does not contain ads).
4. **Content Rating**: Completed (PEGI 3 / Everyone).
5. **Target Audience**: Completed (18 and over; not targeted to children).
6. **Data Safety**: Completed (No data collected or shared off-device; all health processing is strictly local; encrypted in transit; cryptographic deletion supported).
7. **Health Apps & Health Connect**: Completed (Declared personal health record & vitals tracking adhering to Limited Use policy).
8. **Government Apps**: Completed (Not a government app).
9. **Financial Features**: Completed (No financial features).
10. **Advertising ID**: Completed (Does not use Advertising ID).

---

## 4. Release Tracks & Submission Status
**Location:** `Release` → `Production` / `Testing`

- **Uploaded App Bundle**: Version `0.6.0`, Version Code `23` (API 28+, Target SDK 36, ReTrace mappings attached).
- **Internal Testing**: **Active** (Full rollout).
- **Closed Testing**: **Active** (178 countries/regions).
- **Production Track**: **In Review** (Full rollout of Version `0.6.0 (23)`).
- **Release Notes** (`distribution/whatsnew/whatsnew-en-US`):
  ```text
  - Cardiovascular Health Module: ACC/AHA 2017 blood pressure clinical staging, diurnal comparison, and heart rhythm analysis
  - Medication reminders & safety: recurring schedules, offline drug/food interaction alerts, and discontinuation logs
  - Patient-Reported Outcomes (PROMs): PHQ-9, GAD-7, CAT, HAQ-DI surveys with longitudinal trend charts
  - Symptoms log with trend overlays
  - FHIR surgical history ingestion
  - Offline LOINC dictionary & deduplication
  - Bug fixes & performance optimizations
  ```

