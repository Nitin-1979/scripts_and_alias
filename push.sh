echo "Enter a git commit message"
read message

cd /home/nitin/payreview
git commit -m"$message"
if [ ! -d .git ]; then
  echo "Not a Git repository. Please initialize a Git repository first."
  exit 1
fi
current_branch=$(git symbolic-ref --short HEAD)
echo -------------------------------
echo "Commit message: $message"
echo -------------------------------
echo "Current branch: $current_branch"
echo -------------------------------

read -p "Are you sure you want to commit and push to $current_branch? (y/n): " confirmation

if [ "$confirmation" = "y" ]; then
  git commit -m "$message"
  git push origin "$current_branch"
  echo "Pushed into $current_branch with commit message: $message"
else
  echo "Commit and push canceled."
fi

cd /home/nitin/payreview

