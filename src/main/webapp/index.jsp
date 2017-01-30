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

        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>

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
                'dojox/form/DateTextBox',
                'dojo/domReady!'
            ], function ($, dc, request, on, DateTextBox) {
                var fields, form = $('.app-form'),
                        fCon = {
                            int: function (id) {
                                var field = dc.create('input', {
                                    id: id
                                });

                                on(field, 'keypress', function (e) {
                                    if (e.which == null) {
                                        if (e.keyCode < 48 && e.keyCode > 57) return null;
                                        return String.fromCharCode(e.keyCode)
                                    }

                                    if (e.which != 0 && e.charCode != 0) {
                                        if (e.which < 48 && e.which > 57) return null;
                                        return String.fromCharCode(e.which);
                                    }

                                    return null;
                                });

                                return field;
                            },

                            text: function(id) {
                                return dc.create('input', {id: id});
                            },

                            date: function(id) {
                                return new DateTextBox({id: id});
                            },

                            catalogue: function (id, options) {
                                var field = dc.create('select', {id: id});

                                Object.keys(options).forEach(function (key) {
                                    dc.create('option', {
                                        value: key,
                                        innerHTML: options[key]
                                    }, field);
                                });
                            }
                        };

                request('/test', {
                    handleAs: 'json'
                }).then(function(response) {
                    response.forEach(function(i) {
                        var field = fCon[i.type](i.id, i.catalogue);

                        dc.create('label', {
                            innerHTML: i.name,
                            'for': i.id
                        }, form);

                        dc.place(field, form);
                    });
                });
            });
        </script>
    </body>
</html>
