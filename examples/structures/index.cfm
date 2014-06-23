<!--- Set struct --->
<cfset padawan = {}>

<!-- Append item to struct using bracket notation (case sensitive) --->
<cfset padawan["name"] = "Kris">

<!--- Append item to struct using dot notation (case insensitive) --->
<cfset padawan.side = "Light">

<!--- Dumo struct --->
<cfdump var="#padawan#">

<!--- Set struct and append content in single statement --->
<cfset master = {
  "name": "Yoda",
  "side": "Light"
}>

<!--- Loop over a struct --->
<cfloop collection="#master#" item="key">
  <cfoutput>#key#: #master[key]#</cfoutput>
</cfloop>

<cfscript>
  // Set struct
  sith = {};

  // Append item to struct using bracket notation (case sensitive)
  sith["name"] = "Vader";

  // Append item to struct using dot notation (case insensitive)
  sith.side = "Dark";

  // Dump struct
  WriteDump(sith);

  // Set struct and append content in single statement
  lord = {
    "name": "Sidious",
    "side": "Dark"
  };

  // Loop over struct
  for (key in lord) {
    WriteOutput("#key#: #lord[key]# ");
  }
</cfscript>
