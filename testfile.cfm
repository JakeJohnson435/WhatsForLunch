<cfinclude template="header.cfm">
<p>The current time is <cfdump var = "#now()#"> </p>
<cfset variablename="gg">
<cfset anumber = 8>
<cfoutput>#variablename#</cfoutput>
<p>
    <cfif isDefined("firstname")>
        Hello #firstname#!
        <cfelse>
        Hello Jake!
    </cfif>
    <cfif variablename neq "ezpz">
        You'll see this if things are ezpz
        <cfelseif variablename eq "gg">
        You'll see this if it was a gg
        <cfelse>
        You'll see this if things weren't ezpz
    </cfif>
    <cfif anumber lt 5>
        Your number is less than 10
        <cfelse>
        Your number is greater than 10
    </cfif>
</p>
<p>
    Index Loop
    <br>
    <cfloop from="0" to="10" index="i">
        <cfoutput>
            #i# <br>
        </cfoutput>
    </cfloop>
</p>
<p>
    <cfset myVar=false>
    <cfloop condition="myVar eq false">
        <cfset aNumber = RandRange(1,10)>
        <cfif aNumber eq 10>
            <cfset myVar="true">
            <cfoutput>
                You guessed: #aNumber#. Correct!
            </cfoutput>
            <cfelse>
            <cfoutput>
                You guessed: #aNumber#. Wrong! Keep trying!<br />
            </cfoutput>
        </cfif>
    </cfloop>
</p>
<cfset cfList="Item 1, Item 2, Item 3">
<cfscript>
    cfListEdit=listInsertAt(cfList, "3", "another item");
</cfscript>
<cfloop list="#cfListEdit#" index="i">
    <cfoutput>#i#<br></cfoutput>
</cfloop>

<cfset testStruct = {firstN="Jake", lastN="Johnson", age=26}>
<cfoutput>
    My first name is #testStruct.firstN#, my last name is #testStruct.lastN# and I am #testStruct.age# years old.
</cfoutput>
<cfset myarray = ["1", "2", "3", "4"]>
<cfloop array=#myarray# index="x">
<cfoutput>#x#</cfoutput>
</cfloop>
<cfscript>
    Team = {"Team 1" = "Jake, Jade, Andrew", "Team 2" :{"Captain" = "Tanner", "2nd" = "Steve, Drew"}, "Team 3" : "Ortega, Sean"};
</cfscript>
<cfloop collection="#Team#" item="key">
    <cfdump var="#Team[key]#">
</cfloop>

<cfset lunch = randRange(1, 4)>
<cfif lunch eq 1>
    We'll go to Pinch
    <cfelseif lunch eq 2>
    we'll go to Pho place
    <cfelseif lunch eq 3>
    we'll go to subway
    <cfelse>
    we'll go to whataburger
</cfif>

<cfinclude template="footer.cfm">
