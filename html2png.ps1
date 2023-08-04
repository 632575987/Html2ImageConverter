
[void][reflection.assembly]::LoadFile("D:\Html2ImageConverter.dll")
$html = @"
<!DOCTYPE html>
            <html>
                <head>
                    <title>Example</title>
                </head>
                <body>
                    <div><strong>Hello</strong> World!</div>
                    <p>This is an example of a simple HTML page with one paragraph.</p>
                </body>
            </html>
"@
$c = [Html2ImageConverter.Converter.Html2Image]::new();
$b = $c.HtmlStringToImage($html)
[System.IO.File]::WriteAllBytes("D:\\test-html-png.png", $b.Result)
