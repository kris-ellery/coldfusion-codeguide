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

[Array Functions](http://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSc3ff6d0ea77859461172e0811cbec09f0b-8000.html)

---

## <a name="structures">Structures</a>

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

[Structure Functions](http://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSc3ff6d0ea77859461172e0811cbec22c24-6210.html)

---

## <a name="switch-case">Switch Case</a>
**Tag notation**
```cfm
<cfset padawan = "Kris">

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
  var padawan = "Kris";

  switch(padawan) {
    case "Kris":

      break;
    case "Randy":

      break;
    case "Sean": case "Jake":

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
<!--- Simple if/elseif/else --->
<cfif myVar eq "something">

<cfelseif myVar eq "something-else">

<cfelse>

</cfif>

<!--- Ternary operator --->
<cfset kris = (side eq "light") ? "jedi" : "sith">
```

**Script notation**
```cfm
<cfscript>
  // Simple if/elseif/else
  if (myVar === "something") {

  } else if (myVar === "something-else") {

  } else {

  }

  // Ternary operator
  var kris = (side === "light") ? "jedi" : "sith";
</cfscript>
```

---

## <a name="loops">Loops</a>
```cfm
<!--- Loop --->
<cfloop from="1" to="10" index="i">
  #i#
</cfloop>

<!--- Loop break --->
<cfloop from="1" to="10" index="i">
  #i#
  <cfbreak>
</cfloop>

<!--- Loop skip --->
<cfloop from="1" to="10" index="i">
  <cfif i mod 2 eq 0>
    <cfcontinue>
  </cfif>
  #i#
</cfloop>
```

---

## <a name="json">JSON</a>
```cfm
<!--- JSON --->
<cfset padawan = {
  "name": "Kris",
  "city": "Charlotte",
  "state": "NC"
}>

<cfset toJSON = serializeJSON(padawan)>
<cfset fromJSON = deserializeJSON(toJSON)>

<cfdump var = "#isJson(toJSON)#">
```

---

## <a name="functions">Functions</a>
```cfm
<!--- Set function --->
<cffunction name="myFunction" output="{true|false}" access="{public|private|remote}" returnType="{void|:type}">
  <!--- Function argument --->
  <cfargument name="myArgument" type="{:type}" required="{true|false}" default="{:default}">

  <!--- Do work son! --->
  <cfset myVar = true>

  <!--- Function return --->
  <cfreturn myVar>
</cffunction>

<!--- Get function --->
<cfset myVar = myFunction("myArgument")>
```

---

## <a name="components">Components</a>
```cfm
<!--- Set component --->
<cfcomponent>
  <!--- Set public scope --->
  <cfset this.master = "Yoda">

  <!--- Set private scope --->
  <cfset variables.padawan = "Kris">

  <!--- Set public function --->
  <cffunction name="getJedi" output="false" access="public" returnType="struct">
    <cfargument name="jediId" type="integer" required="true">

    <!--- Do something to get jedi data using #arguments.jediId# --->
    <cfset jedi = {}>

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
```cfm
<!--- Get data from database --->
<cfquery name="myQuery" datasource="{:datasource}">
    SELECT {:column-name} FROM {:table-name}
</cfquery>

<!--- Dump results --->
<cfdump var = "#myQuery#">

<!--- Output results --->
<cfoutput query="#myQuery#">
  #{:column-name}#
</cfoutput>

<!--- Loop over results --->
<cfloop query="#myQuery#">
  #{:column-name}#
</cfloop>

<!--- Query caching --->
<cfquery name="myQuery" datasource="{:datasource}" cachedwithin="#createTimespan(0,1,0,0)#">
    SELECT {:column-name} FROM {:table-name}
</cfquery>

<!--- Query with query param --->
<cfquery name="myQuery" datasource="{:datasource}">
    SELECT {:column-name} FROM {:table-name}
    WHERE {:column-name} = <cfqueryparam value="{:value}" cfsqltype="{:cf_sql_type}">
</cfquery>
```

---

## <a name="stored-procedures">Stored Procedures</a>
```cfm
<!--- Simple stored procedure --->
<cfstoredproc procedure="myStoredProcedure" datasource="{:datasource}">
  <cfprocparam type="{in|out|inout}" cfsqltype="{:cf_sql_type}" value="{:value}">
  <cfprocresult name="myStoredProcedureResults">
</cfstoredproc>
```

---

## <a name="catch-try">Catch/Try</a>
```cfm
<!--- Try and catch exceptions --->
<cftry>

  <!--- Do work son! --->

  <cfcatch type="{:type}">
    <!--- Handle exception --->
  </cfcatch>
  <cfcatch type="{:type}">
    <!--- Handle another exception type --->
  </cfcatch>
</cftry>

<!--- Throw own error --->
<cftry>

  <!--- Do work son! --->

  <cfcatch type="{:type}">
    <cfthrow message="{:message}" type="{:type}" detail="{:detail}">
  </cfcatch>
</cftry>

<!--- Use cffinally to always execute something --->
<cftry>

  <!--- Do work son! --->

  <cfcatch type="{:type}">
    <!--- Handle exception --->
  </cfcatch>
  <cffinally>
    <!--- Always execute --->
  </cffinally>
</cftry>
```

---

## <a name="includes">Includes</a>
```cfm
<!--- Include --->
<cfinclude template="path/to/include.cfm">

<!--- Example --->
<!doctype html>
<html lang="en-US" dir="ltr">
  <head>
    <!--- Include "head.cfm" --->
    <cfinclude template="/_partials/head.cfm">
  </head>
  <body>
    <!--- Include "header.cfm" --->
    <cfinclude template="/_partials/header.cfm">

    <!--- Do work son! --->

    <!--- Include "footer.cfm" --->
    <cfinclude template="/_partials/footer.cfm">
  </body>
</html>
```
