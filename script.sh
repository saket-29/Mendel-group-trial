#BioStack2021 Stage0 Task Shell script By Diyar
#!/bin/sh

if [ ! -d "$HOME"/git-sources ]; then
    mkdir "$HOME"/git-sources
fi

cd "$HOME"/git-sources || { printf "cd failed, exiting\n" >&2;  return 1; }

git clone "https://github.com/saket-29/Mendel-group-trial.git"

unset gitsource

echo "Please choose from the options bellow"

echo "1) Go back to your working directory"
echo "2) Generate csv file from all outputs"

cd "$HOME"/git-sources/Mendel-group-trial || { printf "cd failed, exiting\n" >&2;  return 1; }
chmod +rwx */output/*.txt
read -r ans
back="1"
stay="2"
if [ "$ans" = "$back" ]; then
      cd - || { printf "cd failed, exiting\n" >&2; unset ans; return 1; }
elif [ "$ans" = "$stay" ]; then
INPUT=*/output/*.txt
awk '{print($1)}' FS=':|\n' OFS=, RS= $INPUT > membersInfo.csv

echo 'File succesfully generated, Please choose Option Below:ß'
echo "1)Show file path"
echo "2)View file in terminal"

read -r choice
path="1"
terminal="2"

if [ "$choice" = "$path" ]; then
echo "File succesfully generated at $PWD" || { printf "Path doesn't exist, exiting\n" >&2; unset ans; return 1; }
elif [ "$choice" = "$terminal" ]; then
cat membersInfo.csv | column -t -s, | less -S || { printf "Failed to open, exiting\n" >&2; unset ans; return 1; } || { printf "cd failed, exiting\n" >&2; unset ans; return 1; }
fi
fi
unset choice
unset ans