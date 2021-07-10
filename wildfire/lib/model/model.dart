class SlideModel {
  String image;
  String title;
  String description;

  SlideModel(
      {required this.title,
      required this.image,
      required,
      required this.description});

  void setTitle(String getImage) {
    image = getImage;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getTitle() {
    return title;
  }

  String getImage() {
    return image;
  }

  String getDescription() {
    return description;
  }
}

List<SlideModel> getSlide() {
  List<SlideModel> slide = [];

  SlideModel slide1 = new SlideModel(
      image: 'assets/wood_fire.png',
      title: 'Tell us when you see a wildfire',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing malesuada tellus massa risus euismod mauris. Urna leo.');
  slide.add(slide1);

  SlideModel slide2 = new SlideModel(
      image: 'assets/extinguisher.png',
      title: 'Elit vulputate vel dui faucibus magnis.',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt habitasse id ac netus dictum volutpat tellus. Maecenas aliquam metus.');
  slide.add(slide2);

  SlideModel slide3 = new SlideModel(
      image: 'assets/fire_spark.png',
      title: 'Magnis sem orci pulvinar feugiat ..',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros, dignissim ornare pulvinar eget lectus. Nulla massa pulvinar elit id amet eget egestas suscipit sapien. Nibh tempor.');
  slide.add(slide3);
  return slide;
}
