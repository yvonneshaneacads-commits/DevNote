# Devotion Notebook

A cozy devotion journal that works in any browser and installs like an app. Your notes sync between phone and laptop through your own free Supabase account.

## Put it online with GitHub Pages
1. Create a GitHub repository and upload everything in this folder.
2. In the repository go to **Settings > Pages**, choose **Deploy from a branch**, pick `main` and `/ (root)`, and save.
3. After a minute your notebook is live at `https://YOUR-USERNAME.github.io/REPO-NAME/`.

## Turn on sign-in and sync (Supabase, free plan)
1. Go to https://supabase.com, sign in, and create a **New project**. Wait for it to finish setting up.
2. Open **SQL Editor > New query**, paste everything from `supabase-setup.sql`, and press **Run**. This makes the notes table and a rule so each person can only see their own notes.
3. Open **Authentication > URL Configuration**. Set **Site URL** to your live address (`https://YOUR-USERNAME.github.io/REPO-NAME/`) and add the same address under **Redirect URLs**.
4. Open **Project Settings > API**. Copy the **Project URL** and the **anon public** key. Never use the `service_role` key; it is secret and the notebook will refuse it.
5. Connect the notebook. Pick one:
   - Open your live site, tap **Settings**, paste the URL and anon key into the sync box, press **Save and continue**, then create an account or sign in. Repeat the paste on each device.
   - Or open `index.html`, (already done for you) the `var SUPABASE_CONFIG=` line in `index.html` holds `{url:"https://xxxx.supabase.co",key:"YOUR-ANON-KEY"}`. Commit it. Every device then only needs to sign in. The anon key is meant to be public; the rules from step 2 are what keep your notes private.

### Good to know
- **Confirmation emails:** by default Supabase emails a confirmation link when you create an account, and the free email sender only sends a few per hour. To skip it, turn off **Confirm email** under **Authentication > Sign In / Providers > Email**. "Email me a sign-in link" also works without a password.
- **Google sign-in (optional):** turn on Google under **Authentication > Sign In / Providers** and follow the steps shown there to make a Google client ID. Skip this if email is enough.
- **Free projects pause** after about a week with no activity. Open the Supabase dashboard and press **Restore** if that happens. Your notes are kept.
- If this device already has notes and your account has notes too, the account version wins. Download a backup in Settings first if unsure.

## Install it like an app
- **iPhone/iPad (Safari):** Share > **Add to Home Screen**.
- **Android (Chrome):** menu > **Install app**.
- **Laptop (Chrome/Edge):** the install icon in the address bar.

## Music
Settings has a music box for YouTube or Spotify links. Spotify plays full songs only if you are signed in to Spotify in the same browser.
