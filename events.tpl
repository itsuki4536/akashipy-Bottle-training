<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <h1>勉強会の一覧</h1>
    % for event in events:
        <p>{{ event['title'] }}</p>
    % end
</body>
</html>