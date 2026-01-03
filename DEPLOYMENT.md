# 🏦 Bank Reconciliation System - Sigma Paro Bhutan

Deploy this app in **2 minutes** to Railway.app or Render.com for free remote access!

## 🚀 Deploy to Railway (Recommended - Easiest)

1. **Create GitHub repository**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YOUR_USERNAME/bank-reconciliation.git
   git push -u origin main
   ```

2. **Deploy to Railway**
   - Go to https://railway.app
   - Click "New Project" → "Deploy from GitHub"
   - Select your repository
   - Done! Get public link instantly

3. **Share the link with users**
   - Users can upload files directly
   - Download reports from web interface
   - No installation needed!

---

## 📦 Deploy to Render.com (Alternative)

1. Push to GitHub (same as above)
2. Go to https://render.com
3. "New +" → "Web Service"
4. Connect GitHub repo
5. Runtime: Python 3.11
6. Build: `pip install -r requirements.txt`
7. Start: `uvicorn app:app --host 0.0.0.0 --port 8000`
8. Deploy!

---

## 🐳 Deploy with Docker

```bash
docker build -t bank-reconciliation .
docker run -p 8000:8000 bank-reconciliation
```

Then access: `http://localhost:8000`

---

## 💻 Local Development

```bash
# Install dependencies
pip install -r requirements.txt

# Run server
python app.py

# Open browser
http://localhost:8000
```

---

## 📋 What Users Get

1. **Upload Files**
   - Excel data entry file
   - PDF bank statement

2. **Get Results**
   - 7 Excel sheets with analysis
   - Real-time statistics
   - Download reports

3. **No Installation**
   - Everything in browser
   - Works on any device
   - Just send them the link!

---

## 🔐 Security Notes

- Files are temporary (deleted after download)
- No data stored permanently
- Each session is isolated
- HTTPS on Railway/Render (automatic)

---

## 📞 Support

For Sigma Paro Bhutan team

---

**Ready to deploy? Pick Railway and you're done in 2 minutes!** 🎉
