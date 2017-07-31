$filelist = Get-Content .\FileListForMove.txt 

$filelist | foreach { 
    $sourcefile = 'E:\PNCImageRoot\InhouseMailImages\XMLFiles\' + $_ 
    $destfile = 'E:\PNCImageRoot\InhouseMailImages\backupxml\' + $_
    mv $sourcefile -Destination $destfile
    Write-Host "file moved to " $destfile
}