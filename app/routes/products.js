import Route from '@ember/routing/route';

export default class ProductsRoute extends Route {
  model() {
    // Simulamos una API
    return [
      {
        id: 1,
        name: 'Hoodie React',
        price: 500,
        img: 'https://www.teez.in/cdn/shop/products/React-Js-Developer-Hoodie-For-Men-2_45420e77-8e7a-4be1-8331-6db5fd149c64_large.jpg?v=1587012825',
      },
      {
        id: 2,
        name: 'Gorra Ember',
        price: 150,
        img: 'https://soyparrillero.mx/cdn/shop/files/new_era--57_800x.jpg?v=1722883706',
      },
      {
        id: 3,
        name: 'Zapatillas JS',
        price: 800,
        img: 'https://www.johnsmith.es/wp-content/uploads/2017/02/JohnSmith_2-720x370.jpg',
      },
    ];
  }
}
