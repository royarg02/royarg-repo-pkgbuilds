#!/bin/sh

# Pre-commit script
# - Generate the checksums in the PKGBUILD file
# - Generate the .SRCINFO file
# - Add PKGBUILD and .SRCINFO to the commit if changed

set -e

cleanup() {
  # Remove directories and files created/downloaded by makepkg
  git clean -xffd
}

update() {
  printf "Adding package %s...\n" "$1"

  # Build the package, potentially fetching a newer version
  makepkg

  # Check if the PKGBUILD file changed
  if git status --short | grep -q ' PKGBUILD$'; then
    git add PKGBUILD
    printf "Added the updated PKGBUILD file to the commit\n"
  fi

  # Generate the .SRCINFO file based on the PKGBUILD file
  makepkg --printsrcinfo > .SRCINFO

  # Check if the .SRCINFO file was created/changed
  if git status --short | grep -q ' .SRCINFO$'; then
    git add .SRCINFO
    printf "Added the updated .SRCINFO file to the commit\n"
  fi

  printf "Package %s successfully added to commit.\n\n" "$1"
}

trap cleanup INT EXIT

for package in "$@"; do
  [ -n "$package" ] && cd "$package" && update "$package"
done

printf "All done!\n"

