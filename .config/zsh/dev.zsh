deploy_connector () {
  local file="$1"
  local server="${2:-http://localhost:8083}"

  if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' does not exist."
    return 1
  fi

  curl -s -o /dev/null -w "%{http_code}\n" -X POST "$server/connectors" \
    -H "Content-Type: application/json" \
    -d "@$file"
}


