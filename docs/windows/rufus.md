
## 🔧 What Rufus Can Remove / Bypass

When you create a Windows 11 USB with Rufus, it can automatically:

* ❌ Remove **TPM 2.0 requirement**
* ❌ Remove **Secure Boot requirement**
* ❌ Remove **RAM requirement (4GB check)**
* ❌ Bypass **Microsoft account requirement** (force local account)
* ❌ Disable **data collection / telemetry prompts**
* ❌ Skip **online account / internet requirement (OOBE)**
* ⚙️ Pre-configure regional + user setup

This is done via Rufus’ built-in **Windows User Experience customization**—no manual registry hacks needed.

---

## 🛠️ Step-by-Step: Creating a “Debloated” Windows 11 USB

### 1. Download Requirements

* Windows 11 ISO (official)
* Latest Rufus (portable works fine)

---

### 2. Launch Rufus and Select ISO

* Plug in USB
* Open Rufus
* Select:

  * **Device** → your USB
  * **Boot selection** → your Windows 11 ISO

---

### 3. Start → Trigger Customization Popup

Click **Start**, then Rufus will show a special dialog:

👉 *“Windows User Experience”*

---

### 4. Enable These Options (Important)

You’ll see checkboxes like:

* ✅ *Remove requirement for 4GB+ RAM, Secure Boot and TPM 2.0*
* ✅ *Remove requirement for an online Microsoft account*
* ✅ *Create a local account with username*
* ✅ *Disable data collection (skip privacy questions)*
* ✅ *Set regional options automatically* (optional)

This is where the magic happens.

---

### 5. Flash USB

* Click OK → Rufus patches the installer
* USB is now ready

---

## ⚙️ What’s Happening Under the Hood

Rufus modifies the installation process by:

* Injecting registry tweaks into **boot.wim**
* Bypassing hardware checks during setup
* Pre-seeding OOBE (Out-of-Box Experience)

No need to manually press `Shift + F10` or edit registry mid-install.

---

## 🧠 Important Reality Check (No BS)

Rufus **does NOT fully remove Windows bloatware** like:

* Xbox apps
* Edge
* Built-in telemetry services
* Preinstalled apps

It only:
✔ Bypasses restrictions
✔ Skips forced Microsoft ecosystem setup

👉 If you want *true debloat*, combine Rufus with:

* Post-install scripts (e.g. PowerShell debloat)
* Or use tools like:

  * NTLite (advanced ISO stripping)
  * O&O ShutUp10++

---

## 🔥 Pro Tip (Your Kind of Setup)

Since you're into systems + control:

* Use Rufus → bypass + clean install
* Then:

  * Apply **custom PowerShell debloat script**
  * Disable services manually
  * Use Group Policy for telemetry hardening

That combo = **lean Windows 11 without breaking updates**

---

## ⚠️ Caveats

* Unsupported hardware = no official Microsoft support
* Future updates *may* reintroduce checks (rare, but possible)
* Secure Boot off = slightly reduced security baseline

---

## Bottom Line

✔ **Yes, Rufus is one of the easiest and safest ways to bypass TPM/Secure Boot + Microsoft account requirements during install**
❗ But it’s **not a full debloat solution**—just the first step in a clean Windows build.

---
