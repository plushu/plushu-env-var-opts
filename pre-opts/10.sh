saved_opts=()

# While there is a first argument
while [[ "$1" == -* || "$1" == *=* ]]; do case "$1" in
  # Save any options
  -*)
    saved_opts+=("$1")
    shift
    ;;

  # Set any variables
  *=*)
    declare "${1%%=*}=${1#*=}"
    shift
    ;;
esac done

# Restore any processed options
set -- "${saved_opts[@]}" "$@"
