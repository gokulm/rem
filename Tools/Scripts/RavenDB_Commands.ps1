function Send-RavenDB 
{
    param 
    ( 
        $url='http://localhost:8080/docs', 
        $cmd='POST',
        $file='$(throw "a file name is required")', 
        $clrType='$(throw "a clrType is required")',
        $entityName='$(throw "an entity name is required")'
    )
    
    if ( ( Test-Path $file ) -eq $false )
    {
        '$(throw "file not found." )'
    }
    
    if ( ( Get-Command -Name curl ) -eq $null )
    {
        '$(throw "Cannot find curl.exe in your system path." )'
    }
    
    curl -X $cmd $url -T $file --header $clrType --header $entityName
}

function Post-RavenDBMetadataLayer
{
    param 
    ( 
        $url='http://localhost:8080/docs', 
        $file='$(throw "a file name is required")'
    )
    
    Send-RavenDB -url $url -file $file -clrType "Raven-Entity-Name:MetadataLayers" -entityName "Raven-Clr-Type:Rem.Common.Metadata.MetadataLayer, Rem.Common"
}

function Post-RavenDBMetadataRoot
{
    param 
    ( 
        $url='http://localhost:8080/docs', 
        $file='$(throw "a file name is required")'
    )
    
    Send-RavenDB -url $url -file $file -clrType "Raven-Entity-Name:MetadataRoots" -entityName "Raven-Clr-Type:Rem.Common.Metadata.MetadataRoot, Rem.Common"
}

function Put-RavenDBMetadataLayer
{
    param 
    ( 
        $url='http://localhost:8080/docs', 
        $file='$(throw "a file name is required")'
    )
    
    Send-RavenDB -url $url -cmd 'PUT' -file $file -clrType "Raven-Entity-Name:MetadataLayers" -entityName "Raven-Clr-Type:Rem.Common.Metadata.MetadataLayer, Rem.Common"
}

function Put-RavenDBMetadataRoot
{
    param 
    ( 
        $url='http://localhost:8080/docs', 
        $file='$(throw "a file name is required")'
    )
    
    Send-RavenDB -url $url -cmd 'PUT' -file $file -clrType "Raven-Entity-Name:MetadataRoots" -entityName "Raven-Clr-Type:Rem.Common.Metadata.MetadataRoot, Rem.Common"
}

function Put-RavenDBFiles
{
    param
    (
        $url='http://localhost:8080/docs', 
        $path='$(throw "a path name is required")'
    )    
 
    if ( ( Test-Path $path ) -eq $false )
    {
        '$(throw "path not found." )'
    }
    
    $files = Get-ChildItem $path
    foreach ( $file in $files )
    {
        if ( $file -match "MetadataLayers" )
        {
            "Metadata Layer File: " + $file + " is being processed"            
            $file -match "(\d)*.json"
            $id = $matches[1]
            $fullUrl = $url + "/metadatalayers/" + $id
            Put-RavenDBMetadataLayer -url $fullUrl -file $file.FullName
        }
        elseif ( $file -match "MetadataRoots" )
        {
            "Metadata Root File: " + $file + " is being processed"          
            $file -match "(\d)*.json"
            $id = $matches[1]
            $fullUrl = $url + "/metadataroots/" + $id
            Put-RavenDBMetadataRoot -url $fullUrl -file $file.FullName
        }
        else
        {
            "File: " + $file + " is being ignored"
        }
    }
}