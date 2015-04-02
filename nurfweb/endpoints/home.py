from pyramid.view import view_config


@view_config(route_name='home', renderer='nurfweb.frontend:home.mako')
def home(request):
    return {'project': 'nurfweb'}
