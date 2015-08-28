Function CompileRunAndRemoveCProgram()
{
  gcc *.c -o newprogram
  .\newprogram
  Remove-Item newprogram.exe
  $a = read-host "Hit any Key to run again. Type 'EXIT' to exit program."
  IF ($a -ne 'EXIT')
  {
    CompileRunAndRemoveCProgram
  }
  else
  {
    Remove-Item seatest.h
    Remove-Item seatest.c
  }
}

$path = read-host "What is the path of your source files?"

$client = New-Object system.net.WebClient;
$client.DownloadFile("https://raw.githubusercontent.com/keithn/seatest/master/src/seatest.c", $path + "\seatest.c");
$client.DownloadFile("https://raw.githubusercontent.com/keithn/seatest/master/src/seatest.h", $path + "\seatest.h");

cd $path

CompileRunAndRemoveCProgram
