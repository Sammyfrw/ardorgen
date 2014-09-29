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

    var stats_chart_options = {
        chart: {
            renderTo: 'container',
            type: 'bar'
        },
        title: {
            text: 'Ethercraft Population by Country'
        },
        xAxis: {
            categories: ['Soulreaving', 'Enforcing', 'Invoking', 'Evoking']
        },
        yAxis: {
            title: {
                text: 'Popuation (thousand)'
            }
        },
        series: [{
            name: 'Rogalia',
            data: [2, 5, 8, 4]
        },  {
            name: 'Zahnheim',
            data: [2, 9, 5, 5]
        }]
    };

    var stats_chart = new Highcharts.Chart(stats_chart_options);
});
