# Use a higher version of PowerShell in Orchestrator


## Description
This is a step-by-step guide with two different methods on how to make Orchestrator use your native version of PowerShell instead of PowerShell version 2 which Orchestrator uses by default.

Since System Center Orchestrator uses PowerShell version 2 it can be a bit troublesome for some, especially when they want to run scripts or the integrated Run .Net Script activity in Orchestrator.
There's at least two methods of doing this, one by editing in the Windows registry or by calling PowerShell from outside of Orchestrator.
