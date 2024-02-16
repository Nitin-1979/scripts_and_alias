cd /home/nitin/payreview

current_branch=$(git symbolic-ref --short HEAD)

# Copy the branch name to the clipboard using xclip
echo -n $current_branch | xclip -selection clipboard

echo "Branch $current_branch copied to clipboard successfully."

cd /home/nitin/payreview
