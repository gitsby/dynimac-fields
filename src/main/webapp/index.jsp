<%--
  Created by IntelliJ IDEA.
  User: kasya
  Date: 1/28/2017
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ASD</title>

        <script>
            var dojoConfig = {
                async: 1,
                packages: [
                    { name: "bootstrap", location: '${pageContext.request.contextPath}/resources/js/Dojo-Bootstrap' }
                ]
            };
        </script>

        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="app-form"></div>
        </div>
        <script>
            require([
                'dojo/query',
                'dojo/dom-construct',
                'dojo/request',
                'dojo/on',
                'bootstrap/Datepicker',
                'dojo/domReady!'
            ], function ($, dc, request, on, dp) {
                var fields = [], form = $('.app-form')[0],
                        fCon = {
                            int: function (id) {
                                var field = dc.create('input', {
                                    id: id,
                                    'class': 'form-control'
                                });

                                on(field, 'keypress', function (e) {
                                    if (e.which == null) {
                                        if (e.keyCode < 48 || e.keyCode > 57) {
                                            e.returnValue = false;
                                            return false;
                                        }
                                        return String.fromCharCode(e.keyCode)
                                    }

                                    if (e.which != 0 && e.charCode != 0) {
                                        if (e.which < 48 || e.which > 57) {
                                            e.returnValue = false;
                                            return false;
                                        }
                                        return String.fromCharCode(e.which);
                                    }

                                    return false;
                                });

                                return field;
                            },

                            text: function(id) {
                                return dc.create('input', {
                                    id: id,
                                    'class': 'form-control'
                                });
                            },

                            date: function(id) {
                                var field = dc.create('input', {
                                    id: id,
                                    'class': 'form-control'
                                });

                                $(field).datepicker().on('changeDate', function(ev){
                                    var startDate = new Date();

                                    if (ev.date.valueOf() < startDate.valueOf()){
                                        return ev.date;
                                    }
                                });

                                return field;
                            },

                            catalogue: function (id, options) {
                                var field = dc.create('select', {
                                    id: id,
                                    'class': 'form-control'
                                });

                                options.forEach(function (item) {
                                    dc.create('option', {
                                        value: item.id,
                                        innerHTML: item.name
                                    }, field);
                                });

                                return field;
                            }
                        };

                request('/test', {
                    handleAs: 'json'
                }).then(function(response) {
                    response.forEach(function(i) {
                        var field = fCon[i.type](i.id, i.catalogue);

                        dc.place('<label for="' + i.id + '">' +
                                 i.name + '</label>', form);

                        fields.push(field);
                        dc.place(field, form);
                    });
                }, function (error) {
                    console.log(error);
                });
            });
        </script>
    </body>
</html>
