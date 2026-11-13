# WA Status Saver Pro 🟢📱

A **100% private, local WhatsApp Status Saver & Stealth Viewer** built with vanilla HTML5, Tailwind CSS, Phosphor Icons, and Modern Web APIs (File System Access API & Progressive Web App).

---

## 🌟 Highlights & Features

- **🛡️ 100% Private & Local**: Zero backend servers, zero mock data. Everything runs directly on your device.
- **👻 Ghost Mode (Stealth Viewer)**: Inspect and preview statuses without marking them as seen in your feed or triggering read receipts.
- **📂 Live Folder Connection**: Uses the modern **File System Access API** to mount your WhatsApp `.Statuses` folder directly, with IndexedDB persistence to remember folder permissions.
- **📱 Mobile & PWA Ready**: Installable as a Progressive Web App on Android, iOS, Windows, and Mac with standalone display mode and custom icon.
- **⏳ 24h Expiry Countdown**: Displays time remaining before WhatsApp status expires.
- **⚡ Batch Actions**: Select multiple statuses or use **"Save All New"** to back up unseen media in bulk.
- **🌓 Dark Mode & Light Mode**: Built-in instant theme switcher tailored to WhatsApp's signature teal and dark slate palettes.

---

## 🚀 How to Run

### Method 1: Python Web Server (Recommended for PWA & File System Access)
```bash
python server.py
```
Or with standard Python module:
```bash
python -m http.server 3000
```
Open **[http://localhost:3000](http://localhost:3000)** in Chrome, Edge, or any modern browser.

### Method 2: Node.js / npx
```bash
npx serve -l 3000 .
```

### Method 3: Direct File Open
You can also directly double-click or drag-and-drop `index.html` into your browser. (Note: PWA installation and service workers require an HTTP/HTTPS origin such as `localhost`).

---

## 📱 WhatsApp Status Paths

### Android
Browse to:
```text
Internal Storage > Android > media > com.whatsapp > WhatsApp > Media > .Statuses
```
*(Make sure to enable **"Show hidden files"** in your file manager / file picker).*

### Fallback for Mobile / iOS
If your browser doesn't support directory selection (`showDirectoryPicker`), click **"Pick Media Files"** to select multiple photo/video files directly from your gallery or files app.

---

## 📁 Project Structure

```text
wa-status-saver/
├── index.html        # Main single-page web app
├── sw.js             # Service Worker for offline PWA caching
├── manifest.json     # PWA manifest
├── server.py         # Lightweight Python launch server
├── package.json      # NPM scripts
└── README.md         # Documentation
```
