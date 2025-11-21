import EmberRouter from '@ember/routing/router';
import config from 'tienda-ropa/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('products', { path: '/tienda' }); // URL: /tienda
  this.route('about', { path: '/nosotros' });  // URL: /nosotros
  // 'index' ya existe por defecto en '/'
});