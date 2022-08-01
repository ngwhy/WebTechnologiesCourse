def wsgi_app(environ, start_response):
    
    start_response('200 OK', [('Content-type', 'text/html')])
    
    line = "\n".join(environ.get('QUERY_STRING').split("&"))

    return iter([line.encode('utf-8')])
