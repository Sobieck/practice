$env:Path += ";C:\ProgramData\chocolatey\lib\ghc\tools\ghc-8.0.1\bin"

$path = read-host "What is the path of your source files?"

$cmdPaths = $path + "\Tests.hs " + $path + "\Solution.hs" + " C:\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs"

$utilities  = read-host "Do you want any utility classes? Y/N"

IF($utilities -eq 'Y')
{
  $math = read-host "Math? Y/N"

  IF($math -eq 'Y')
  {
    $cmdPaths = $cmdPaths + " C:\GitHub\practice\utilities\nonvisualstudio\haskell\math\Solution.hs"
  }

  $primes = read-host "Primes? Y/N"

  IF($primes = 'Y')
  {
    $cmdPaths = $cmdPaths + "
    C:\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Primes.hs"
  }

  $seq = read-host "Seq? Y/N"

  IF($seq = 'Y')
  {
    $cmdPaths = $cmdPaths + "
    C:\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Seq.hs"
  }
}

$cmd = "ghci " + $cmdPaths

Invoke-Expression $cmd
