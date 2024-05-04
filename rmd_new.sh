#!/bin/sh

## TEST FOR PRESENCE OF CBQ ON A LINK
if test -d ~/a/CBQ*/
then
	echo __IN_LOCAL__
	cd ~/a/CBQ*/ || exit 1
	root_git_dir=$(pwd)
else
	echo _NON_LOC__
fi

## TEST FOR CBQ ON HOME
if test -d ~/CBQ*/
then
	echo __IN_LOCAL__
	cd ~/CBQ*/ || exit 1
	root_git_dir=$(pwd)
else
	echo _NON_LOC__
fi

git pull
posts_webpage_git_dir="$root_git_dir"/docs/content/post
ls "$posts_webpage_git_dir"
echo "$posts_webpage_git_dir"

## TEST IF THERE IS LOCAL P DIR

if test -d ~/p/
then
	echo _PPPPPP_IN_LOCAL__
	searchee_dir=~/p
else
	echo _PPPPPP_NON_LOC__
	searchee_dir=$(pwd)
fi
echo "$searchee_dir"


## SET THE GITHUB ACTIONS WORKFLOWS YAML FILE
workflow_file="$root_git_dir"/.github/workflows/rmd_hugo.yml

ls "$posts_webpage_git_dir"

cd "$searchee_dir" || exit 1
ls
pwd

find . -name '*.Rmd' -type f


# Find the latest file modified in the last five minutes
latest_rmd=$(find . -name '*.Rmd' -type f -mmin -9955 -print0 | xargs -0  stat --format="%Y %n" | sort -nr | head -n1 | cut -d' ' -f2-)
echo "$latest_rmd"

name_rmd_file=$(basename "$latest_rmd")
echo "$name_rmd_file"


if [ -n "$latest_rmd" ]; then
  echo "Latest file modified in the last five minutes: $latest_rmd"
  # Extract the directory name of the latest file
  directory_name=$(dirname "$latest_rmd")
  directory_name=$(basename "$directory_name")
  echo "Directory name: $directory_name"
else
  echo "No files modified in the last five minutes found."
fi
echo "$latest_rmd"

copy_from_p_to_netlify_site()
{
if [ -n "$latest_rmd" ]; then
  echo "Latest Rmd file found: $latest_rmd"
  # Get the directory name of the Rmd file
  rmd_dir=$(dirname "$latest_rmd")
  rmd_base=$(basename "$rmd_dir")

  # Create the destination directory if it doesn't exist
  dest_dir="$posts_webpage_git_dir/$rmd_base"
  mkdir -p "$dest_dir"

###################################################################################
## TEST WORKFLOW FILE
  echo "$workflow_file"
  cat "$workflow_file"
  
  # Copy the Rmd file to the destination directory
  cp -f "$latest_rmd" "$dest_dir/"

###################################################################################
#workflow_file=~/a/CBQ_comandos_SPSS_lab_ChyC/.github/workflows/rmd_hugo.yml
#rmd_base=___XXXXXX_base_XXXXXX____
#name_rmd_file=___XXXXXX_rmd_XXXXXX____
## SUBSTITUTE THE DIRECTORY AND FILENAME ON WORKFLOW FILE
sed -E "
s/^( +working-directory: docs\/content\/post\/).+/\1${rmd_base}/g;
s/^( +.+Rscript -e \"rmarkdown::render\(').+\.Rmd('.*\)\")/\1${name_rmd_file}\2/g;
" -i "$workflow_file"
###################################################################################
	## CHANGE TO THE DESTINATION
	cd "$dest_dir" || exit 1
  ## BEFORE EDITING, HERE IT WAS RENDER THE RMD FILE USING RSCRIPT
	cd "$root_git_dir" || exit 1
	git add .
	git commit -m 'new Rmd to push-render workflow'
	git push
else
  echo "No Rmd files found in $searchee_dir"
fi
}

if test -d ~/p/ -a -n "$latest_rmd"
then
	echo _LOCAL_RUNNING COPYING FUCNTION__
	copy_from_p_to_netlify_site
else
	echo __RUNNING_ON_REMOTE________
	echo "$latest_rmd"
fi

