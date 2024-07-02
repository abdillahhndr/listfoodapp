import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:testradyadigital/models/model_food.dart";

class DetailFoodScreen extends StatefulWidget {
  final ModelListFood? data;
  const DetailFoodScreen(this.data, {super.key});

  @override
  State<DetailFoodScreen> createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Food",
        ),
        backgroundColor: Color.fromARGB(255, 89, 196, 146),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    child: Image.network(
                      widget.data!.image,
                      height: 150,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.data!.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("How To :",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Text(
                widget.data!.desc,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
