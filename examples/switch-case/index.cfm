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
