<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawSeriesChart);

    function drawSeriesChart() {

      var data = google.visualization.arrayToDataTable([
        ['channel_id', 'hours watched', 'Number of users', 'Channel Name',     'Rating'],
        ['1',    40,              5,      'DD National',  4],
        ['2',    85,              8,      'DD Bharati',         4],
        ['3',    178,               21,      'DD Sports',         5],
        ['4',    172,              12,      'DD Movies',    5],
        ['5',    10,              2,         'DD News',         3],
        ['6',    72,              9,       'DD Kids',    5],
        ['7',    38,              4,      'DD India',    4],
        ['8',    118,              10,      'DD Bangla',   5]
      ]);

      var options = {
        title: 'popularity of channels',
        hAxis: {title: 'channel_id'},
        vAxis: {title: 'Viewers'},
        bubble: {textStyle: {fontSize: 11}}
      };

      var chart = new google.visualization.BubbleChart(document.getElementById('series_chart_div'));
      chart.draw(data, options);
    }
    </script>
  </head>
  <body>
    <div id="series_chart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>
