class Book {
  String id;
  String author;
  DateTime date;
  String imageUrl;

  Book(
    this.id,
    this.author,
    this.date,
    this.imageUrl,
  );
  //
  static List<Book> books() {
    return [
      Book("1", "Toe", DateTime.now(),
          "https://clipart-library.com/images/6Tpo6G8TE.jpg"),
      Book("2", "Le marchand Noir", DateTime.now(),
          "https://media.springernature.com/full/springer-static/cover-hires/book/978-1-4842-5934-4"),
      Book("3", "L'Homme aux soucis", DateTime.now(),
          "https://bddi.2dcom.fr/libriweb.php?ean=9782344026939"),
      Book("3", "L'Homme aux soucis", DateTime.now(),
          "https://bayanbox.ir/view/128900205807805191/book.jpg"),
      Book("3", "Apprendre JAva", DateTime.now(),
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkRvuDa6aw-de6RyqRR7ffApsH_yRtx6gNUw&usqp=CAU")
    ];
  }
}
