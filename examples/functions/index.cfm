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

<!--- Dump return --->
<cfdump var="#jedi#">

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
