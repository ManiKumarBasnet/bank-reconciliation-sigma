# ⚡ Quick Start Guide

Get your bank reconciliation running in **2 minutes**!

---

## 🚀 Install & Run (60 seconds)

```bash
# Install dependencies
pip install fastapi uvicorn pandas openpyxl pdfplumber python-multipart

# Run the app
python app.py

# Open browser
http://localhost:8000
```

You'll see a beautiful **orange/yellow** dashboard!

---

## 📤 Upload Files (30 seconds)

1. **Click** "📊 Data Entry File" → Select your Excel
   - Must have `ChequeDDNo` column (journal number)
   - Must have `Amount` column

2. **Click** "🏦 Bank Statement" → Select your PDF
   - Bank of Bhutan format
   - Must be searchable (not scanned image)

3. **Click** "🚀 Start Professional Reconciliation"

---

## ⏳ Wait & Download (30 seconds)

- Processing takes 30-60 seconds
- See live statistics updating
- **Click "Download Report"** when complete

---

## 📊 What You Get

### 6 Excel Sheets:

**1. All Entries** ⭐ START HERE!
- Complete view of everything
- Original entries + status column
- Adjustment rows below mismatches
- **Your main working sheet**

**2. ✓ Matched**
- Transactions that matched perfectly
- No action needed

**3. ⚠ Adjusted**
- Amount mismatches
- Adjustment entries created

**4. ✗ Unmatched**
- In your sheet but not in bank
- **Action needed**: Investigate these

**5. ⚠ Unregistered**
- In bank but not in your sheet
- **Action needed**: Add to your records

**6. 📊 Summary**
- Complete statistics
- **Amount reconciliation**:
  ```
  Entered Amount:     Nu. 150,000.00
  Adjustment Amount:  Nu.   3,050.00
  After Adjustment:   Nu. 153,050.00
  
  Bank Amount:        Nu. 153,050.00
  Difference:         Nu.       0.00 ✓
  ```

---

## 🎯 Example Output

### Your 80-Entry File Results:

```
📊 Total Entries: 80

Status Breakdown:
✓ Matched:        67
⚠ Mismatches:      1
✗ Unmatched:      12
⚠ Unregistered:  385

💰 Amount Check:
After Adjustment = Bank Amount? 
If yes: ✓ Perfect reconciliation!
If no: Check unmatched/unregistered
```

---

## 💡 Key Features

### Orange/Yellow Theme
- Warm, professional colors
- Not flashy or distracting
- Easy on the eyes

### Smart Counting
- **80 entries** (only those with journal numbers)
- Ignores blank/empty journal entries
- Accurate from the start

### Amount Reconciliation
The system helps you match amounts:
```
Your Total + Adjustments = Bank Total?
      ↓
   YES = Perfect! ✓
   NO  = Check unmatched transactions
```

### Dashboard
- View all past reports
- See statistics for each
- Download anytime
- View in browser

---

## 🔍 How to Read Results

### Sheet 1: All Entries

| Customer | Journal | Amount | Status | Bank_Amount |
|----------|---------|--------|--------|-------------|
| A | 100 | 300 | Matched | 300 |
| B | 200 | 9000 | Amount Mismatch | 12050 |
| B | 200 | 3050 | Adjustment Entry | |
| C | 300 | 500 | Not Found in Bank | |

**Status meanings:**
- **Matched**: Perfect! No action needed
- **Amount Mismatch**: Original entry with difference
- **Adjustment Entry**: System-created row with difference amount
- **Not Found in Bank**: Investigate why

---

## 🎨 What Changed

✅ **UI**: Changed to orange/yellow (from blue/purple)
✅ **Counting**: Shows 80 entries (not 100)
✅ **First Sheet**: New "All Entries" sheet
✅ **Summary**: Added amount reconciliation
✅ **Removed**: "Invalid entries" concept

---

## ⚠️ Common Questions

**Q: Why does it show 80 entries, not 100?**
A: Only entries with journal numbers are counted. The 20 without journal numbers are excluded.

**Q: What's the "All Entries" sheet?**
A: Your complete data with status column. Start here!

**Q: What if amounts don't match?**
A: Check:
1. Unmatched sheet (your entries not in bank)
2. Unregistered sheet (bank entries not recorded)
3. Work on these to reconcile

**Q: Why are adjustment entries created?**
A: When journal matches but amount differs, system creates adjustment row to show the difference.

---

## 🐳 Using Docker?

```bash
docker-compose up -d
```

Then open: http://localhost:8000

---

## 📂 Where Are Reports?

Saved in: `/tmp/bank_reconciliation/reports/`

Also visible in **Dashboard** (scroll down on homepage).

---

## 🆘 Need Help?

1. **Read** "All Entries" sheet first
2. **Check** Summary sheet for amounts
3. **Review** status column meanings
4. **Contact** Sigma Paro Bhutan team

---

## 🎯 Pro Tips

1. **Always start** with "All Entries" sheet
2. **Focus on** unmatched transactions first
3. **Match amounts** in summary sheet
4. **Use dashboard** to compare past reports
5. **Check difference** - goal is Nu. 0.00!

---

**Ready to reconcile! 🎉**

The orange/yellow theme makes it professional yet friendly!
