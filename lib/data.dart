class Book {
  String title, 
        writer, 
        price, 
        image, 
        category,
        description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pharetra augue ac eros semper dictum. Sed in gravida ligula. Nullam non enim ultrices, condimentum massa sit amet, mattis risus. Proin ac eros molestie, consectetur lorem eget, ornare orci. Donec molestie mollis ante ut aliquam. Morbi venenatis erat sed ligula pellentesque aliquam. Vivamus pellentesque rutrum ultricies. Phasellus accumsan varius orci, eu dignissim libero viverra et. Mauris vel leo id nulla faucibus interdum. Aenean eget feugiat mauris, eu tempor mi. Fusce quis iaculis augue. Integer tortor nunc, fermentum ut feugiat quis, pellentesque at elit. Aenean ut gravida velit. Curabitur non mi nec nunc vestibulum volutpat vel nec nisl. Aenean bibendum dui sagittis vulputate porttitor. Vestibulum quis vehicula neque. \n\n Curabitur sit amet odio nec diam blandit venenatis. Donec id velit hendrerit, ultricies mauris ut, ultrices dui. Duis tristique blandit est, ac dictum mi maximus a. Morbi dapibus libero venenatis erat tempus feugiat. In a arcu commodo, bibendum libero in, cursus libero. Suspendisse eu tellus commodo, vehicula urna sed, cursus quam. Aenean quis lorem libero. Pellentesque quis elit non diam aliquet auctor. Sed quam est, suscipit sed dolor sit amet, cursus molestie ante. Aliquam iaculis nunc efficitur erat facilisis consequat. Aliquam erat volutpat. Pellentesque volutpat, nisl in hendrerit accumsan, nibh risus scelerisque nisi, eget condimentum orci lectus vitae sem. Duis in scelerisque neque. Aliquam finibus euismod erat. \n\n Phasellus tortor odio, efficitur eu mi volutpat, feugiat finibus metus. Mauris eget odio vel enim cursus mollis in et purus. Phasellus id nunc id urna placerat blandit. Vivamus laoreet orci mi, sit amet sollicitudin lorem volutpat a. Maecenas tincidunt posuere libero in accumsan. Quisque id eros eget eros imperdiet cursus. Ut id fringilla eros, et molestie ipsum.';
  int pages;
  double rating;

  Book(this.title, this.category, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Book> books = [
  Book('Angular.Js', 'Framework Book', 'Irfan Kurniawan', 'Rp. 500,000', 'img/angular.png', 3.5, 123),
  Book('Bower', 'Task Runner', 'Irfan Kurniawan', 'Rp. 500,000', 'img/bower.png', 3.5, 123),
  Book('Ember Js', 'Framework Js', 'Irfan Kurniawan', 'Rp. 500,000', 'img/ember.png', 3.5, 123),
  Book('Grunt', 'Task Runner', 'Irfan Kurniawan', 'Rp. 500,000', 'img/grunt.png', 3.5, 123),
  Book('Jquery', 'Framework Book', 'Irfan Kurniawan', 'Rp. 500,000', 'img/jquery.png', 3.5, 123),
  Book('JavaScript', 'Programming Language', 'Irfan Kurniawan', 'Rp. 500,000', 'img/js.png', 3.5, 123),
  Book('Node Js', 'Server Environment', 'Irfan Kurniawan', 'Rp. 500,000', 'img/node.png', 3.5, 123),
  Book('NPM Js', 'Package Manager', 'Irfan Kurniawan', 'Rp. 500,000', 'img/npm.png', 3.5, 123),
  Book('React Js', 'Framework Book', 'Irfan Kurniawan', 'Rp. 500,000', 'img/react.png', 3.5, 123),
  Book('RX Js', 'Framework Book', 'Irfan Kurniawan', 'Rp. 500,000', 'img/rx.png', 3.5, 123),
  Book('Vue Js', 'Framework Book', 'Irfan Kurniawan', 'Rp. 500,000', 'img/vue.png', 3.5, 123),
  Book('Web Pack', 'Framework Book', 'Irfan Kurniawan', 'Rp. 500,000', 'img/webpack.png', 3.5, 123),
  Book('Yarn', 'Package Manager', 'Irfan Kurniawan', 'Rp. 500,000', 'img/yarn.png', 3.5, 123),
];
