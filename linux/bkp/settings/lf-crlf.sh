# git lf
git stash push -u
git config --global core.eol lf
git rm -rf --cached .
git reset --hard HEAD

# git lf - WIN
git config core.autocrlf false 
git rm --cached -r . 
git reset --hard

# recursive change dos2unix
sudo apt install dos2unix
find . -type f -exec dos2unix {} \;

# configure 
end_of_line = lf #.editorconfig
endOfLine: "lf" #.prettierrc
"rules": {"linebreak-style": ["error", "unix"] }  # .eslintrc.json