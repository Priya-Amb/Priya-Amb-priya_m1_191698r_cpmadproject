class SliderModel{

  String imagePath;
  String title;
  String desc;

  SliderModel({this.imagePath, this.title, this.desc});

    void setImageAssetPath(String getImagepath){
      imagePath = getImagepath;
    }
    void setTitle(String getTitle){
      title = getTitle;
    }
    void setDesc(String getDesc){
      desc = getDesc;
    }
  String getImageAssetPath(){
    return imagePath;
  }
  String getTitle(){
    return title;
  }
  String getDesc(){
    return desc;
  }
}

List<SliderModel>getSlides(){
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImageAssetPath("images/undraw_online_groceries.png");
  sliderModel.setTitle("Best Deals");
  sliderModel.setDesc("Descover vegan healthy food near you with affordable price");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //2
  sliderModel.setImageAssetPath("images/undraw_healthy_options.png");
  sliderModel.setTitle("Best Deals");
  sliderModel.setDesc("Descover vegan healthy food near you with affordable price");
  slides.add(sliderModel);  

  sliderModel = new SliderModel();
  //3
  sliderModel.setImageAssetPath("images/undraw_Eating_together_re_ux62.png");
  sliderModel.setTitle("Best Deals");
  sliderModel.setDesc("Descover vegan healthy food near you with affordable price");
  slides.add(sliderModel);  

  return slides;
}