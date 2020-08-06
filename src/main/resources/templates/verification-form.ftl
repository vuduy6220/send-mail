<#import "/spring.ftl" as spring/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Account</title>
</head>
<body>
<@spring.bind "verificationForm"/>
<#if verificationForm?? && noErrors??>
Sent to ${verificationForm.email}
<#else>
<form action="/email-verification" method="post">
    Email:
    <@spring.formInput "verificationForm.email"/>
    <@spring.showErrors "<br>"/>
    <input type="submit" value="Submit">
</form>
</#if>
</body>
</html>