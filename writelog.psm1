###########################################################################
#
# NAME: writelog
#
# AUTHOR:  apadmin
#
# COMMENT: 
#
# VERSION HISTORY:
# 1.0 20/02/2015 - Initial release
# 1.1 27/02/2015 - add eventlog en file logging
# 1.2 26/02/2016 - next edit
#
###########################################################################

function writelog {
	[CmdletBinding()]param(
		 [Parameter(ValueFromPipeline=$True,ValueFromPipelinebyPropertyName=$True)][string]$message
		,[ValidateSet("Error","FailureAudit","Information","SuccessAudit","Warning")][string]$entrytype = "Information"
		,[string]$logfile
        ,[switch]$terminate
		,[switch]$silent
	) 
	
	if ( $logfile ) {
		if ( -not $logfile.EndsWith(".log") ) {
			$logfile = $logfile + ".log"
		}
		$global:logfile = $logfile
		if ( ( Test-Path -Path "c:\temp" ) -eq $false ) 
		{
			New-Item -ItemType directory -Path c:\temp 
		}
		$global:logfile = "c:\temp\{0}" -f $global:logfile
	}
	if ( $message ) {
		$message = "{0} @ {1} : {2} : {3}" -f $scriptPath, (Get-Date) , $entrytype , $message
	   	Write-EventLog -LogName application -Category 0 -EntryType $entrytype -Source wsh -Message $message -EventId 0
		if ( $global:logfile ) {
		    Add-Content -Path $global:logfile -Value $message
		}
		if ( $silent -eq $false ) {
			switch ($entrytype) {
				"Error" { Write-Error $message}
				"Warning" { Write-Warning $message}
				default { 
					if (( $verbosepreference -eq "SilentlyContinue" ) -and ( $DebugPreference -eq "SilentlyContinue" ) ) { 
						Write-Host $message
					} 
				}
			}
			if ( $entrytype -ieq "Information" ) {
				Write-Debug $message
				Write-Verbose $message
			}
		}
	}
    if($terminate) {
        throw $message
    }
}


<#
	.SYNOPSIS
		Writes message to an eventlog, screen or file.

	.DESCRIPTION
		.
		
	.PARAMETER  message
		the message to log.
	
	.PARAMETER  entrytype
		type of log message 
		("Error","FailureAudit","Information","SuccessAudit","Warning")
	
	.PARAMETER logfile
		the file to log too, this file sits in c:\temp
	
	.PARAMETER terminate
		switch, this terminates the calling script
	
	.PARAMETER silent
		don't show messages on screen.

	.EXAMPLE
		PS C:\> .\writelog.ps1 -message "test"
		
		DESCRIPTION
		-----------
		this wil log "test" to the eventlog as an information event.

	.INPUTS
		System.String, System.Switch

	.OUTPUTS
		none

	.NOTES
		This script is designed to be used as a function or module.

	.LINK
		about_functions_advanced

	.LINK
		about_comment_based_help

#>

