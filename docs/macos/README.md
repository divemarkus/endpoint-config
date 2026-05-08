
# macOS Getting started

It's always a good idea to factory reset your macOS

## 🔁 Method 1 (Recommended): Erase Assistant (Fast + Safe)

This is the easiest and most reliable way.

### Steps:

1. Boot into macOS normally

2. Go to:

   * **System Settings** → **General** → **Transfer or Reset**

3. Click **Erase All Content and Settings**

4. Enter your password

5. Confirm → Mac will:

   * Remove all data
   * Sign out of iCloud
   * Reinstall a clean OS

### When to use:

* Mac is working fine
* You just want a factory reset

---

# 🧰 Method 2: Full Recovery Mode Reinstall (Deep Clean)

Use this if:

* You want **total control (disk wipe)**
* System is unstable
* You don’t trust existing partitions

---

## Step 1 — Boot into Recovery Mode (Apple Silicon way)

1. Shut down the Mac
2. Press and **HOLD the Power button**
3. Keep holding until you see:

   > “Loading startup options”
4. Click **Options → Continue**

---

## Step 2 — Erase Disk (Critical Step)

1. Open **Disk Utility**

2. Click **View → Show All Devices**

3. Select the **top-level disk** (not just volumes)

   * Usually named: `Apple SSD`

4. Click **Erase**

### Use these settings:

* **Name:** Macintosh HD (or anything)
* **Format:** APFS
* **Scheme:** GUID Partition Map

5. Confirm erase

👉 This completely nukes everything (best practice)

---

## Step 3 — Reinstall macOS

1. Exit Disk Utility
2. Click **Reinstall macOS**
3. Follow prompts
4. Connect Wi-Fi if needed

---

# ⚠️ Important Notes

### 🔐 Activation Lock

If it was previously signed into iCloud:

* You may need the Apple ID password
* Make sure it’s removed from Find My before wiping (if applicable)

---

### 🌐 Internet Required

Recovery will:

* Download macOS (~12–15GB)
* Can take 20–60 min depending on speed

---

### 💡 Pro Tip (For You Specifically)

* Install Homebrew immediately
* Then:

  ```bash
  brew install git wget htop python node
  ```
* Consider:

  * Xcode CLI tools: `xcode-select --install`
  * Disable sleep during long downloads

---

# 🧠 Which Method Should You Choose?

| Scenario                             | Best Method       |
| ------------------------------------ | ----------------- |
| Just bought, system works            | Erase Assistant ✅ |
| Want full control / clean partitions | Recovery Mode 🔥  |
| Suspect corruption / weird issues    | Recovery Mode 🔥  |

---

## 💡 Projects to monitor
- [oMLX - beta](https://omlx.ai/)
- [OpenCode Desktop App - beta](https://opencode.ai/download)
