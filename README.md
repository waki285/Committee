# 😎Committee
> <div style="text-align: center;">Hackable Commit Messager</div>

## Quick Usage
### Initialize
Install chalk in your project (as a prerequisite) (`npm i chalk`)  
Then copy `c.js` and `i.sh` from this repository to your directory


First, add your GPG public key and private key as `public.pub` and `secret.pub` respectively.

then, Set these to environment variables.

- `GPG_KEY`: GPG keyid
- `USER_NAME`: Your GitHub username 
- `USER_EMAIL`: Your GitHub Mail(Primary)

next, run at console:

```bash
bash i.sh
```

The console will probably ask you for a passphrase. (if the passphrase is set).

![passphrase prompt](https://user-images.githubusercontent.com/67305123/144549978-47489dbf-2853-4c19-ad70-a0eeab41b190.png)

Enter your passphrase and press Enter.

Press Enter, and after a while you will get a prompt to set the reliability, type `5` and press Enter, then type `y` and press Enter.

![trust prompt](https://user-images.githubusercontent.com/67305123/144568795-4f06bd94-2999-421c-b019-5a185b3ea5f2.png)

![trust prompt yes](https://user-images.githubusercontent.com/67305123/144569098-f8165e43-7eb8-4352-b36d-b813c4faf389.png)

After this, you will see a screen like this, so hold down the `Ctrl` key and press the `D` key. (`Ctrl+D`)

![ctrl-d](https://user-images.githubusercontent.com/67305123/144569455-0790aa51-0bc7-4405-963f-b49ad7fb173d.png)

When this prompt comes up again, enter your passphrase and press Enter.

![passphrase prompt](https://user-images.githubusercontent.com/67305123/144549978-47489dbf-2853-4c19-ad70-a0eeab41b190.png)

The init is now complete. This init is to be run only when you open the console, and DO NOT need to be run every time you commit.

### Commit
You can choose one of the following three types of commits.

- `node c.js "some commit"`
- `node c.js feat "some commit"`
- `node c.js feat code "some commit"`

The commit message when you run these commands will look like this, respectively

- `some commit`
- `✨ feat: some commit`
- `✨ feat(code): some commit`

The `feat` in the second and third examples is based on [DEVELOPERS.md of Angular.js](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#type).

- feat → ✨ feat
- fix → 🐛 fix
- docs → 📋 docs
- style → 🧹 style
- refactor → 🔧 refactor
- perf → 🏷 perf
- test → 🧪 test
- chore → 🗃 chore
- Other: Emoji will not be added, they will be displayed as you have entered them.

Also, it will only perform staging and committing, not push.