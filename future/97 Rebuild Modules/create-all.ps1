$filenames = Get-ChildItem -path .\ -filter *.mod -file -ErrorAction silentlycontinue -recurse

foreach ($filename in $filenames)
{
	$folder = $filename.basename
	$files = Get-ChildItem .\$folder | % { $_.FullName }
	& 'C:\Program Files (x86)\KotOR Tools\Xoreos Tools\erf' --mod --v10 $filename $files
}

Read-Host -Prompt "`nPress Enter to exit"
exit
