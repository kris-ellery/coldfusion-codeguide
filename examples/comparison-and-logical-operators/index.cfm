<!--- Set variable --->
<cfset age = 10>

<!--- Simple if/elseif/else --->
<cfif age eq 15>

<cfelseif age gte 30>

<cfelseif age lte 5>

<cfelseif age gt 10 or age lt 10>

<cfelse>

</cfif>

<!--- Set variable --->
<cfset height = 3>

<!--- Ternary operator --->
<cfset jedi = (height lte 3) ? "Yoda" : "Obi-Wan Kenobi">

<!--- Dump jedi --->
<cfdump var="#jedi#">

<cfscript>
  // Set variable
  count = 10;

  // Simple if/elseif/else
  if (count == 15) {

  } else if (count >= 30) {

  } else if (count <= 5) {

  } else if (count > 10 || count < 10) {

  } else {

  }

  // Set variable
  power = 7;

  // Ternary operator
  sith = (power <= 8) ? "Sidious" : "Vader";

  // Dump sith
  WriteDump(sith);
</cfscript>
