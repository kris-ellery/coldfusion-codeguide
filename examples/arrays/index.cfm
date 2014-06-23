<!--- Set array --->
<cfset padawans = [ "Randy", "Sean", "Jake" ]>

<!--- Array dump --->
<cfdump var="#padawans#">

<!--- Loop over array --->
<cfloop array="#padawans#" index="padawan">
  <cfoutput>#padawan#</cfoutput>
</cfloop>

<cfscript>
  // Set array
  masters = [ "Garrett", "Colin", "Yoda" ];

  // Array dump
  WriteDump(masters);

  // Loop over array
  for (master in masters) {
    WriteOutput(master);
  }
</cfscript>
