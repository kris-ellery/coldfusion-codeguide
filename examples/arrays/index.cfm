<!--- Set array --->
<cfset padawans = [ "Randy", "Sean", "Jake" ]>

<!--- Array dump --->
<cfdump var="#padawans#">

<!--- Loop over array --->
<cfloop array="#padawans#" index="padawan">
  <cfoutput>#padawan#</cfoutput>
</cfloop>

<!--- Common array functions

<cfset ArrayClear({:array})>
<cfset ArrayAppend({:array}, {:value})>
<cfset ArrayDelete({:array}, {:value})>
<cfset ArrayDeleteAt({:array}, {:position})>
<cfset ArrayInsertAt({:array}, {:position})>
<cfset ArrayIsEmpty({:array})>
<cfset ArrayLen({:array})>
<cfset ArraySort({:array}, {numeric|text|textnocase}, {asc|desc})>

--->

<cfscript>
  // Set array
  masters = [ "Garrett", "Colin", "Yoda" ];

  // Array dump
  WriteDump(masters);

  // Loop over array
  for (master in masters) {
    WriteOutput(master);
  }

  /* Common array functions

  ArrayClear({:array});
  ArrayAppend({:array}, {:value});
  ArrayDelete({:array}, {:value});
  ArrayDeleteAt({:array}, {:position});
  ArrayInsertAt({:array}, {:position});
  ArrayIsEmpty({:array});
  ArrayLen({:array});
  ArraySort({:array}, {numeric|text|textnocase}, {asc|desc});

  */
</cfscript>
