$repo = "https://github.com/MLZDBD/tool/archive/refs/heads/main.zip"
$temp = "$env:TEMP\tool.zip"
$folder = "$env:TEMP\tool"

Invoke-WebRequest $repo -OutFile $temp
Expand-Archive $temp -DestinationPath $folder -Force

cd "$folder\tool-main"

pip install -r requirements.txt

.\build.ps1
