<cfset startValue = 0>
<cfset endValue = 9>


<cfscript>

    if (#form.category# eq "asian"){
        endValue = 2;
    } else if (#form.category# eq "mexican"){
        startValue = 3;
        endValue = 4;
    } else if (#form.category# eq "americana"){
        startValue = 5;
        endValue = 9;
    }

    switch (randrange(#startValue#, #endValue#)) {
        case 0:
            writeOutput("You're having Pho");
        break;
        case 1:
            writeOutput("You're having Thai");
        break;
        case 2:
            writeOutput("You're having Ramen");
        break;
        case 3:
            writeOutput("You're having Chipotle");
        break;
        case 4:
            writeOutput("You're having Zocalo");
        break;
        case 5:
            writeOutput("You're having Pieology");
        break;
        case 6:
            writeOutput("You're having McDonalds");
        break;
        case 7:
            writeOutput("You're having Subway");
        break;
        case 8:
            writeOutput("You're having MadDogs");
        break;
        default:
            writeOutput("You're having Whataburger");
        break;
    }
</cfscript>