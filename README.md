# ColdFusion CodeGuide

ColdFusion code guide for developers who are new to the language or need a quick refresh.

## Table of Contents

* [Variables](#variables)
* [Arrays](#arrays)
* [Structures](#structures)
* [Switch Case](#switch-case)
* [Comparison and Logical Operators](#comparison-and-logical-operators)
* [Loops](#loops)
* [JSON](#json)
* [Functions](#functions)
* [Components](#components)
* [Database Queries](#database-queries)
* [Stored Procedures](#stored-procedures)
* [Catch/Try](#catch-try)
* [Includes](#includes)

---

## <a name="variables">Variables</a>


**Tag notation**
```cfm
<!--- Set variable ---->
<cfset padawan = "Kris">

<!--- Variable output ---->
<cfoutput>#padawan#</cfoutput>

<!--- Variable dump ---->
<cfdump var = "#padawan#">
```

**Script notation**
```cfm
<cfscript>
  // Set variable
  master = "Yoda";

  // Variable output
  WriteOutput(master);

  // Variable dump
  WriteDump(master);
</cfscript>
```

---

## <a name="arrays">Arrays</a>

[Array Functions](http://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSc3ff6d0ea77859461172e0811cbec09f0b-8000.html)

**Tag notation**
```cfm
<!--- Set array --->
<cfset padawans = [ "Randy", "Sean", "Jake" ]>

<!--- Array dump --->
<cfdump var="#padawans#">

<!--- Loop over array --->
<cfloop array="#padawans#" index="padawan">
  <cfoutput>#padawan#</cfoutput>
</cfloop>
```

**Script notation**
```cfm
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
```

---

## <a name="structures">Structures</a>

[Structure Functions](http://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSc3ff6d0ea77859461172e0811cbec22c24-6210.html)

**Tag notation**
```cfm
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
```

**Script notation**
```cfm
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
    WriteOutput("#key#: #lord[key]#");
  }
</cfscript>
```

---

## <a name="switch-case">Switch Case</a>
**Tag notation**
```cfm
<!--- Set variable --->
<cfset padawan = "Kris">

<!--- Switch case statement --->
<cfswitch expression="#padawan#">
  <cfcase value="Kris">

  </cfcase>
  <cfcase value="Randy">

  </cfcase>
  <cfcase value="Sean, Jake">

  </cfcase>
  <cfdefaultcase>

  </cfdefaultcase>
</cfswitch>
```

**Script notation**
```cfm
<cfscript>
  // Set variable
  jedi = "Yoda";

  // Switch case statement
  switch(jedi) {
    case "Yoda":

      break;
    case "Obi-Wan Kenobi":

      break;
    case "Qui-Gon Jinn": case "Mace Windu":

      break;
    default:

      break;
  }
</cfscript>
```

---

## <a name="comparison-and-logical-operators">Comparison and Logical Operators</a>
| Description | Tag operator | Script operator |
| --- | --- | --- |
| Equal | is, equal, eq  | == |
| Not equal | is not, not equal, neq | != |
| Greater than | gt, greater than | > |
| Greater than or equal | greater than or equal to, ge, gte | >= |
| Less than | lt, less than | < |
| Less than or equal | less than or equal to, le, lte | <= |
| And | and | &amp;&amp; |
| Or | or | &#124;&#124; |

[Operator Types](http://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSc3ff6d0ea77859461172e0811cbec09d55-7ffc.html)

**Tag notation**
```cfm
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
```

**Script notation**
```cfm
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
```

---

## <a name="loops">Loops</a>

**Tag notation**
```cfm
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
```

**Script notation**
```cfm
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
```

---

## <a name="json">JSON</a>

**Tag notation**
```cfm
<!--- Set struct --->
<cfset jedi = {
  "name": "Luke Skywalker",
  "side": "Light",
  "starfighter": "X-Wing"
}>

<!--- Serialize to JSON --->
<cfset jediToJSON = serializeJSON(jedi)>

<!--- Deserialize from JSON --->
<cfset jediFromJSON = deserializeJSON(jediToJSON)>

<!--- Dump --->
<cfdump var = "#jediToJSON#">
<cfdump var = "#jediFromJSON#">
```

**Script notation**
```cfm
<cfscript>
  // Set struct
  sith = {
    "name": "Darth Vader",
    "side": "Dark",
    "starfighter": "TIE fighter"
  };

  // Serialize to JSON
  sithToJSON = serializeJSON(sith);

  // Deserialize from JSON
  sithFromJSON = deserializeJSON(sithToJSON);

  // Dump
  WriteDump(sithToJSON);
  WriteDump(sithFromJSON);
</cfscript>
```

---

## <a name="functions">Functions</a>

**Tag notation**
```cfm
<!--- Public function --->
<cffunction name="getJedi" access="public" returnType="struct">

  <!--- Arguments --->
  <cfargument name="id" type="numeric" required="true">

  <!--- Do something with "id" and create new struct --->
  <cfset jedi = {
    "id": "5",
    "name": "Yoda"
  }>

  <!--- Return --->
  <cfreturn jedi>
</cffunction>

<!--- Access function --->
<cfset jedi = getJedi(5)>

<!--- Dump function return --->
<cfdump var="#jedi#">
```

**Script notation**
```cfm
<cfscript>
  // Public function
  public struct function getSith(required numeric id) {

    // Do something with "id" and create new struct
    sith = {
      "id": "7",
      "name": "Darth Vader"
    };

    // Return
    return sith;
  }

  // Access function
  sith = getSith(7);

  // Dump return
  WriteDump(sith);
</cfscript>
```

---

## <a name="components">Components</a>

**Tag notation**
```cfm
<cfcomponent>

  <!--- Public scope --->
  <cfset this.master = "Yoda">

  <!--- Private scope --->
  <cfset variables.padawan = "Kris">

  <!--- Public function --->
  <cffunction name="getJedi" access="public" returnType="struct">
    <cfargument name="id" type="numeric" required="true">

    <cfset jedi = {
      "id": "5",
      "name": "Yoda"
    }>

    <cfreturn jedi>
  </cffunction>

</cfcomponent>

<!--- Create an instance of component (Jedi.cfc) --->
<cfset Jedi = CreateObject("Component", "path.to.component.Jedi")>

<!--- Access public variable --->
<cfset master = Jedi.master>

<!--- Access method --->
<cfset jedi = Jedi.getJedi(7)>
```

---

## <a name="database-queries">Database Queries</a>

**Tag notation**
```cfm
<!--- Get data from database --->
<cfquery name="myQuery" datasource="myDataSource">
    SELECT id, name FROM jedi
</cfquery>

<!--- Dump results --->
<cfdump var = "#myQuery#">

<!--- Output results --->
<cfoutput query="#myQuery#">
  Id: #id#, Name: #name#
</cfoutput>

<!--- Loop over results --->
<cfloop query="#myQuery#">
  <cfoutput>Id: #id#, Name: #name#</cfoutput>
</cfloop>

<!--- Query caching --->
<cfquery name="myQuery" datasource="myDataSource" cachedwithin="#createTimespan(0,1,0,0)#">
    SELECT id, name FROM jedi
</cfquery>

<!--- Query with query param --->
<cfquery name="myQuery" datasource="myDataSource">
    SELECT id, name FROM jedi
    WHERE id = <cfqueryparam value="7" cfsqltype="cf_sql_integer">
</cfquery>
```

---

## <a name="stored-procedures">Stored Procedures</a>

**Tag notation**
```cfm
<!--- Simple stored procedure --->
<cfstoredproc procedure="myStoredProcedure" datasource="myDataSource">
  <cfprocparam type="in" cfsqltype="cf_sql_integer" value="7">
  <cfprocresult name="myStoredProcedureResults">
</cfstoredproc>
```

**Script notation**
```cfm
<cfscript>
  // Store procedure using "attribute-value" pairs
  spService = new storedproc();
  spService.setDatasource("myDataSource");
  spService.setProcedure("myStoredProcedure");
  spService.addParam(cfsqltype="cf_sql_integer", type="in", value="7";
  spService.addProcResult(name="myStoredProcedureResults");
  spService.execute();
</cfscript>
```

---

## <a name="catch-try">Catch/Try</a>

**Tag notation**
```cfm
<cftry>

  <!--- Do work son! --->

  <cfcatch type="database">
    <cfthrow message="It broke..." detail="Wasn't me.">
  </cfcatch>

  <cfcatch type="any">
    <!--- Handle any exception type --->
    <cfoutput>"Type: " & #cfcatch.type#</cfoutput>
    <cfoutput>"Message: " & #cfcatch.message#</cfoutput>
  </cfcatch>

  <cffinally>
    <!--- Always execute --->
  </cffinally>
</cftry>
```

**Script notation**
<cfscript>
  try {

    // Do work son!

  } catch(database e) {
    throw(message="It broke...", detail="Wasn't me.");
  } catch(any e) {
    // Handle any exception type
    WriteOutput("Type: " & e.type);
    WriteOutput("Message: " & e.message);
  } finally {
    // Always execute
  }
</cfscript>

---

## <a name="includes">Includes</a>

**Tag notation**
```cfm
<!--- Include --->
<cfinclude template="path/to/include.cfm">
```

**Script notation**
```cfm

<cfscript>
  // Include
  include "path/to/include.cfm";
</cfscript>
```
