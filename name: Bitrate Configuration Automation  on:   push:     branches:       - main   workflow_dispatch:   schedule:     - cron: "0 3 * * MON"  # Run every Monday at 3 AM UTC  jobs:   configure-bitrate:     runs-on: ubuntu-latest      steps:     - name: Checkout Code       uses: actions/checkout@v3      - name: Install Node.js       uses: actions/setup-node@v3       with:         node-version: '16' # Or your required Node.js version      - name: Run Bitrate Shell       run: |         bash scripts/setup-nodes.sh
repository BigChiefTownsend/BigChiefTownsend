name: Bitrate Configuration Automation

on:
  push:
    branches:
      - main
  workflow_dispatch:
  schedule:
    - cron: "0 3 * * MON"  # Run every Monday at 3 AM UTC

jobs:
  configure-bitrate:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Code
      uses: actions/checkout@v3

    - name: Install Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '16' # Or your required Node.js version

    - name: Run Bitrate Shell
      run: |
        bash scripts/setup-nodes.sh