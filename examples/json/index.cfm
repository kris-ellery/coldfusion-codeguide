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
