<cfset lunch = randrange(0, 3)>

<cfoutput>
    <cfif lunch eq 0>
        We're having #form.firstChoice#
        <cfelseif lunch eq 1>
        We're having #form.secondChoice#
        <cfelseif lunch eq 2>
        We're having #form.thirdChoice#
        <cfelse>
        We're having #form.fourthChoice#
    </cfif>
</cfoutput>