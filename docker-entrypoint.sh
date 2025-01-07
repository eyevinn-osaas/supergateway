#!/bin/sh

if [ -z "$MCP_SERVER" ]; then
  echo "MCP_SERVER is not set. Please set it to the command to start the server."
  exit 1
fi
vars=$(echo $ENV_VARS | tr "," "\n")
for var in $vars
do
  export $var
done

npm start -- --port 8080 --stdio "npx -y $MCP_SERVER"