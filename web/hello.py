def wsgi_app(environ, start_response):
    
    start_response('200 OK', [('Content-type', 'text/html')])

    return ["\n".join(environ.get('QUERY_STRING').split("&"))]
