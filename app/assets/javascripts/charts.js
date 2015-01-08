$(document).ready(function() {
    $(function () {
        Highcharts.setOptions({
            chart: {
                backgroundColor: {
                    linearGradient: [0, 0, 500, 500],
                    stops: [
                        [0, 'rgb(255, 255, 255)'],
                        [1, 'rgb(240, 240, 255)']
                    ]
                },
                borderWidth: 2,
                plotBackgroundColor: 'rgba(255, 255, 255, .9)',
                plotShadow: true,
                plotBorderWidth: 1
            }
        });

        var ethercrafts = window.ETHERCRAFT

        var races = window.RACE

        var stats_chart_options = {
            chart: {
                renderTo: 'chartBox',
                type: 'bar'
            },
            title: {
                text: 'Ethercraft Population by Race'
            },
            xAxis: {
                categories: ethercrafts
            },
            yAxis: {
                title: {
                    text: 'Population (thousand)'
                }
            },
            series: races
        };
        if ($('#chartBox').length > 0 ) {
            var stats_chart = new Highcharts.Chart(stats_chart_options);
        }
    });
});
