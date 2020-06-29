<#
***********************************************************************************************************************************
.SYNOPSIS
  Versionnumber:        1.0
  Initial Developer:    <Name>
  Creation date:        <Date>
  
  <give a short resume of script>

  This script template is created as a template for creating test cases.


***********************************************************************************************************************************
.DESCRIPTION
  <Add a brief description of scripts functionality>


***********************************************************************************************************************************
.PARAMETERS 


*1 <Parameter_Name>
    <Add a brief description of the required parameter input.>

*2 <Parameter_Name>
    <Repeat the process for multiple attributes if required.>


***********************************************************************************************************************************
.INPUT
  <Inputs if any, otherwise state None>

-1 <File_name>
 <Add a brief description of the required input. Like file type etc>


***********************************************************************************************************************************
.OUTPUT
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>


***********************************************************************************************************************************
.NOTES

- Note 1
  Change Date:            <Date>
  Name Developer:         <name developer>
  Brief description 
  of the purpose change:  Initial script development
  Noteid:                 <id> 
  
***********************************************************************************************************************************
.EXAMPLE


-1 <example title>
   <add an example here.>

-2 <example title>
   <add an example here.>

***********************************************************************************************************************************
#>

#---------------------------------------------------------[Initialisations]--------------------------------------------------------

#Set Error Action to Silently Continue


#Dot Source required Function Libraries


#----------------------------------------------------------[Declarations]----------------------------------------------------------

#Script Version


#Log File Info


#-----------------------------------------------------------[Functions]------------------------------------------------------------

<#
ExampleFunction <FunctionName>{
  Param()
  
  Begin{
    Log-Write -LogPath $sLogFile -LineValue "<description of what is going on>..."
  }
  
  Process{
    Try{
      <code goes here>
    }
    
    Catch{
      Log-Error -LogPath $sLogFile -ErrorDesc $_.Exception -ExitGracefully $True
      Break
    }
  }
  
  End{
    If($?){
      Log-Write -LogPath $sLogFile -LineValue "Completed Successfully."
      Log-Write -LogPath $sLogFile -LineValue " "
    }
  }
}

.DISCLAIMER
This template was based on the template of 9to5IT;https://gist.github.com/9to5IT/9620683
#>

function startBrowser(){
 $global:Driver = Start-SeFirefox 
}

function selectWebsite($inputurl){
$openwebsite = Enter-SeUrl $inputurl -Driver $global:Driver
}


function clickElement($inputelement){
Write-Host $inputelement 
$clickElement = Find-SeElement -Driver $Driver -Id $inputelement

Write-Host $clickElement 
Invoke-SeClick -Element $clickElement
}



#-----------------------------------------------------------[Execution]------------------------------------------------------------

#Log-Start -LogPath $sLogPath -LogName $sLogName -ScriptVersion $sScriptVersion
#Script Execution goes here
#Log-Finish -LogPath $sLogFile

$InitialUrl = '<www.testurl.nl>'
$buttonelement = '<elementname>'

startBrowser
selectWebsite($InitialUrl)
clickElement($buttonelement)


