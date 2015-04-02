from pyramid.view import view_config
import os
import psycopg2
import urlparse




@view_config(route_name='data', renderer='nurfweb.frontend:pages/data/data.mako')
def render_data_page(request):
    return {'project': 'nurfweb'}

@view_config(route_name='db', renderer="string")
def db(request):

    urlparse.uses_netloc.append("postgres")
    url = urlparse.urlparse(os.getenv("DATABASE_URL", None))

    conn = psycopg2.connect(
        database=url.path[1:],
        user=url.username,
        password=url.password,
        host=url.hostname,
        port=url.port
    )

    return {}