<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>What's For Lunch?</title>
</head>
<body>

<h1>What is for lunch?</h1>

<form id="whatsForLunch" method="post" action="WFLresults.cfm">
    <p>Choose four options</p>
    <div class="container">
        <div class="choices">
            <label for="firstChoice">First Choice</label>
            <input type="text" name="firstChoice">
        </div>
        <div class="choices">
            <label for="secondChoice">Second Choice</label>
            <input type="text" name="secondChoice">
        </div>
        <div class="choices newRow">
            <label for="thirdChoice">Third Choice</label>
            <input type="text" name="thirdChoice">
        </div>
        <div class="choices">
            <label for="fourthChoice">Fourth Choice</label>
            <input type="text" name="fourthChoice">
        </div>
    </div>
    <button type="submit">Submit</button>
</form>

<form action="randomChoice.cfm" method="post">
    <p>I'm feeling like some...</p>
    <select name="category">
            <option value="default">Any</option>
            <option value="asian">Asian</option>
            <option value="mexican">Mexican</option>
            <option value="americana">Americana</option>
    </select>
    <button type="submit">Choose for me</button>
</form>

</body>
</html>
