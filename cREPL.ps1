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
}

$path = read-host "What is the path of your source files?"
cd $path
CompileRunAndRemoveCProgram
