import 'package:cooking_food/pages/drawer.dart';
import 'package:flutter/material.dart';

class Custom_Recipes extends StatelessWidget {
  VoidCallback onTap;
  Custom_Recipes({super.key, required this.onTap});

  List<Map<String, String>> Recipes = [
    {
      "recipes": "BreakFast",
      "images":
          "https://www.eatingwell.com/thmb/CZW8njuLGSKJ74ePzbLNu3cA8ZQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6974160-6436dd088fdb4661af15d660640e0187.jpg"
    },
    {
      "recipes": "Snaks",
      "images": "https://i.ytimg.com/vi/cfnp1zi-Z04/maxresdefault.jpg"
    },
    {
      "recipes": "Rice",
      "images":
          "https://hips.hearstapps.com/hmg-prod/images/mexican-rice-1648564775.png?crop=1.00xw:0.502xh;0,0.250xh&resize=1200:*"
    },
    {
      "recipes": "Curry",
      "images":
          "https://spicecravings.com/wp-content/uploads/2022/10/Coconut-Chicken-Featured-2.jpg"
    },
    {
      "recipes": "Paneer",
      "images":
          "https://www.funfoodfrolic.com/wp-content/uploads/2022/08/Paneer-Curry-Blog.jpg"
    },
    {
      "recipes": "Cake Chocolate",
      "images":
          "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/109778.jpg?resize=1200:*"
    },

    {
      "recipes": "Vegetables",
      "images":
          "https://diethood.com/wp-content/uploads/2021/08/chicken-vegetable-skillet-5.jpg"
    },
    {
      "recipes": "Indian Street Food",
      "images":
          "https://cdn.tasteatlas.com//Images/Dishes/84327074df8e4c5fabeaeca6fa3ab659.jpg?w=375&h=280"
    },
    {
      "recipes": "Desserts",
      "images":
          "https://www.seriouseats.com/thmb/G0W4ID0jumIS6Xu7XSe4rjsraO0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2015__07__20140107-super-healthy-5-minute-fruit-mousse-nila-jones-9-8a2222cf499d4eacb103e36af19b91bd.jpg"
    },
    {
      "recipes": "World Cuisine",
      "images":
          "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2019%2F02%2F19%2Fthai-chicken-pizza-1809-p72-2000.jpg"
    },
    {
      "recipes": "Kulfi Falooda",
      "images":
          "https://www.cookwithkushi.com/wp-content/uploads/2019/06/IMG_3859_.jpg"
    },
    {
      "recipes": "Kala Chana",
      "images":
          "https://www.indianveggiedelight.com/wp-content/uploads/2023/01/kala-chana-curry-recipe-featured.jpg"
    },
    {
      "recipes": "Aloo Chaat",
      "images":
          "https://sinfullyspicy.com/wp-content/uploads/2022/03/Aloo-Chaat-Featured-Image-500x500.jpg"
    },
    {
      "recipes": "Fruit Cream",
      "images":
          "https://aromaticessence.co/wp-content/uploads/2021/05/fruit_cream_featured.jpeg"
    },
    {
      "recipes": "Chicken Kothu",
      "images":
          "https://i.pinimg.com/originals/70/62/6a/70626ace5b289ec60cae9999bc80fcef.jpg"
    },
    {
      "recipes": "Chicken Biryani",
      "images":
          "https://vismaifood.com/storage/app/uploads/public/f8f/843/4a0/thumb__700_0_0_0_auto.jpg"
    },
    {
      "recipes": "Chana Dal Bhurji",
      "images":
          "https://i.ndtvimg.com/i/2018-03/paneer-bhurji_620x350_61521115438.jpg"
    },
    {
      "recipes": "Dal Khichdi",
      "images":
          "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/ruby_pathak-yahoo.com/Masoor_Palak_Khichdi_400.jpg"
    },
    {
      "recipes": "Banana Kheer",
      "images": "https://i.timesnowhindi.com/stories/Banana_Kheer_Recipe.png"
    },
    {
      "recipes": "Dosa",
      "images":
          "https://vismaifood.com/storage/app/uploads/public/8b4/19e/427/thumb__700_0_0_0_auto.jpg"
    },
    {
      "recipes": "Banana Appam",
      "images":
          "https://www.vegrecipesofindia.com/wp-content/uploads/2019/03/banana-appam-recipe-1a.jpg"
    },
    {
      "recipes": "Paneer Paratha",
      "images":
          "https://www.whiskaffair.com/wp-content/uploads/2022/07/Aloo-Paneer-Paratha-2-3.jpg"
    },
    {
      "recipes": "Palak Paneer",
      "images":
          "https://zaykarecipes.com/wp-content/uploads/2023/02/palak-paneer-lifafa.jpg"
    },
    {
      "recipes": "Vadapoo",
      "images":
          "https://c.ndtvimg.com/2023-03/eh8f18dg_vadapoo_625x300_31_March_23.jpg"
    },
    //
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemCount: Recipes.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: onTap,
              child: Hero(
                tag: "Hero Animation",
                child: Container(
                  margin: EdgeInsets.all(2),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage("${Recipes[index]["images"]}"),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:[ Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 30,
                      width: 150,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "${Recipes[index]["recipes"]}",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            );
          });
  }
}
