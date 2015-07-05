<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <h1>勉強会の一覧</h1>
    <ul>
    % for event in events:
        <li><a href="{{event['event_url']}}">{{ event['title'] }}</a></li>
    % end
    </ul>
</body>
</html>