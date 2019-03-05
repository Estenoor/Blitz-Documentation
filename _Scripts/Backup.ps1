if (Test-Path "../Backup/DeepSpace") {
	Compress-Archive -Path "../Backup/DeepSpace" -Destination "../Backup/$((get-date).tostring('MM-dd-yyyy_HH-mm-ss'))"
	Remove-Item -Path "../Backup/DeepSpace" -Recurse
}
Copy-Item -Path "../Software/DeepSpace" -Destination "../Backup/" -Recurse -Container
echo Backed Up!
pause