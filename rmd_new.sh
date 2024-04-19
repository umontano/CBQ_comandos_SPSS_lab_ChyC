#!/bin/sh
if test -d ~/a/CBQ*/
then
	echo __IN_LOCAL__
	cd ~/a/CBQ*/ || exit 1
else
	echo _NON_LOC__
fi
posts_webpage_git_dir=$(pwd)/docs/content/post
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

  # Copy the Rmd file to the destination directory
  cp -f "$latest_rmd" "$dest_dir/"

	## CHANGE TO THE DESTINATION
	cd "$dest_dir" || exit 1
  # Render the Rmd file using Rscript
  Rscript -e "rmarkdown::render('$name_rmd_file')" \
	&& \
sed -E '
#/^subtitle\: / d;
#/^author\: / d;
#/^tags\: / d;
/^output\: / d;
/^rmd_hash\: / d
' -i "$dest_dir"/index.md \
	&& \
	sh ~/p/hugo/update_outdated_CBQ_docs_site.sh \
	&& ls -lhtr && pwd
else
  echo "No Rmd files found in $RMD_DIR"
fi
}

if test -d ~/p/ -a -n "$latest_rmd"
then
	echo _LOCAL_RUNNING COPYING FUCNTION__
	#copy_from_p_to_netlify_site
else
	echo __RUNNING_ON_REMOTE________
	echo "$latest_rmd"
	export RMD_NAME=$(basename "$latest_rmd")
	echo ___EXPOTED___"$RMD_NAME"
echo "$latest_rmd"
	export RMD_DIR=$(dirname "$latest_rmd")
	echo ___EXPOTED___"$RMD_DIR"
fi

