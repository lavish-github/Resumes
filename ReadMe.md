### Steps
- After changing Resume in Overleaf, download it to Downloads folder as JV_s_Resume_Template.pdf
- then just the script in this folder as
```bash
$ ./uploadScript.sh
```
- input the values as asked
```bash
What is the folder name? test #folder name in current directory in which you want to move your Resume
What should be the commit message? testing # commit message to put while committing to git
What is the folder name in google drive? Test # Folder name in Google drive (like this resume will be stored in Resumes/Test folder in worklavish26@gmail.com drive)

```
- It will do the git commit and GDrive upload automatically.