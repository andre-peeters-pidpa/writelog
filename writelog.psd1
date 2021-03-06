#######################################################################################################################
# File:             writelog.psd1                                                                                     #
# Author:           pidpa                                                                                             #
# Publisher:        pidpa                                                                                             #
# Copyright:        © 2016 pidpa. All rights reserved.                                                                #
# Usage:            To load this module in your Script Editor:                                                        #
#                   1. Open the Script Editor.                                                                        #
#                   2. Select "PowerShell Libraries" from the File menu.                                              #
#                   3. Check the writelog module.                                                                     #
#                   4. Click on OK to close the "PowerShell Libraries" dialog.                                        #
#                   Alternatively you can load the module from the embedded console by invoking this:                 #
#                       Import-Module -Name System.Object[]                                                           #
#                   Please provide feedback on the PowerGUI Forums.                                                   #
#######################################################################################################################

@{

# Script module or binary module file associated with this manifest
ModuleToProcess = 'writelog.psm1'

# Version number of this module.
ModuleVersion = '1.2.0.1'

# ID used to uniquely identify this module
GUID = '{3a16825f-ed21-4916-8de7-2f96408521e7}'

# Author of this module
Author = 'pidpa'

# Company or vendor of this module
CompanyName = 'pidpa'

# Copyright statement for this module
Copyright = '© 2016 pidpa. All rights reserved.'

# Description of the functionality provided by this module
Description = 'module to write to logfiles (file, eventlog, screen)'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '2.0'

# Minimum version of the .NET Framework required by this module
DotNetFrameworkVersion = '2.0'

# Minimum version of the common language runtime (CLR) required by this module
CLRVersion = '2.0.50727'

# Processor architecture (None, X86, Amd64, IA64) required by this module
ProcessorArchitecture = 'None'

# Modules that must be imported into the global environment prior to importing
# this module
RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to
# importing this module
ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = @()

# Modules to import as nested modules of the module specified in
# ModuleToProcess
NestedModules = @()

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# List of all modules packaged with this module
ModuleList = @()

# List of all files packaged with this module
FileList = @(
	'.\writelog.psm1'
	'.\writelog.psd1'
)

# Private data to pass to the module specified in ModuleToProcess
PrivateData = ''

}
