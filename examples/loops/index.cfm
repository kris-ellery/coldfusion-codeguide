<!--- Loop --->
<cfloop from="1" to="10" index="i">
  <cfoutput>#i#</cfoutput>
</cfloop>

<!--- Loop break --->
<cfloop from="1" to="10" index="i">
  <cfoutput>#i#</cfoutput>
  <cfbreak>
</cfloop>

<!--- Loop skip --->
<cfloop from="1" to="10" index="i">
  <cfif i mod 2 eq 0>
    <cfcontinue>
  </cfif>
  <cfoutput>#i#</cfoutput>
</cfloop>

<cfscript>
  // Loop
  for (i=1; i <= 10; i++) {
    WriteOutput(i);
  }

  // Loop break
  for (i=1; i <= 10; i++) {
    WriteOutput(i);
    break;
  }

  // Loop skip
  for (i=1; i <= 10; i++) {
    if (i mod 2 == 0) {
      continue;
    }
    WriteOutput(i);
  }

  // While loop
  k = 0;
  while (k < 10) {
    k++;
    WriteOutput(k);
  }

  // Do/While loop
  s = 0;
  do {
    s++;
    WriteOutput(s);
  } while (s LT 10);
</cfscript>
