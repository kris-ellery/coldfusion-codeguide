<!--- Set variable ---->
<cfset padawan = "Kris">

<!--- Variable output ---->
<cfoutput>#padawan#</cfoutput>

<!--- Variable dump ---->
<cfdump var = "#padawan#">

<cfscript>
  // Set variable
  master = "Yoda";

  // Variable output
  WriteOutput(master);

  // Variable dump
  WriteDump(master);
</cfscript>
