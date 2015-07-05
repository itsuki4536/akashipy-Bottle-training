<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
<div class="container">
    <h1>勉強会の一覧</h1>
    <form action="/events" method="GET">
    <input type="text" name="keyword" style="width:200px class="form-control">
    <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-search"></i>検索</button>
    </form>
    <ul>
    % for event in events:
        <li><a href="{{event['event_url']}}">{{ event['title'] }}</a></li>
            <ul>
                <li>開始時間：{{event['started_at']}}</li>
                <li>場所：{{event['place']}}</li>
            </ul>
    % end
    </ul>
</div>
</body>
</html>