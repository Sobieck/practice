$env:Path += ";C:\Users\Thomas\AppData\Local\Julia-0.4.6\bin"

function run ($path) {
  julia $path
  $rerun = read-host "Rerun? Y/N"
  IF ($rerun -ne "N"){
    run $path
  }
}

$filePath = read-host "What is the path of the file you want to run?"

run $filePath
