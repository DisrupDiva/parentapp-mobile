import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parentapp/app/core/models/establishment_model.dart';
import 'package:parentapp/app/feature/controllers/ad_controller.dart';
import 'package:parentapp/app/feature/controllers/service_controller.dart';
import 'package:parentapp/app/feature/views/establishment/establishment_view.dart';
import 'package:parentapp/app/feature/views/home/widget/card_establishment.dart';
import 'package:parentapp/app/feature/views/home/widget/circular_establishment.dart';
import 'package:parentapp/app/feature/views/home/widget/slider_banner.dart';
import 'package:provider/provider.dart';

import '../../../core/models/service_model.dart';
import '../../../shared/default/text_styles.dart';
import '../../controllers/establishment_controller.dart';

class HomeView extends StatefulWidget {
  final AdController adController;
  const HomeView({required this.adController, super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  EstablishmentController get establishmentController => Provider.of<EstablishmentController>(context);
  ServiceController get serviceController => Provider.of<ServiceController>(context);

  bool _isLoaded = false;
  final scrollController = ScrollController();


  final TextEditingController _searchController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isLoaded) {
      establishmentController.getPaginatedEstablishments();
      serviceController.getTopTenServices();
      _isLoaded = true;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 40,
        title: Row(children: [
          const Icon(Icons.location_on, color: Colors.black),
          const SizedBox(width: 5),
          Text('Sua localização', style: style.copyWith(color: Colors.black, fontSize: 14)),
        ]),
        backgroundColor: appBarColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: _searchController,
                  maxLines: 1,
                  textAlignVertical: TextAlignVertical.bottom,
                  style: style.copyWith(color: Colors.white, fontSize: 14),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: 'Pesquisar',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                  ),
                  onEditingComplete: () {},
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width,
                height: 76,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(width: 5),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    ServiceModel service = ServiceModel.fromJson(serviceController.listService[index].data()  as Map<String, dynamic>);
                    return CircularEstablishment(service: service);
                  },
                  itemCount: serviceController.listService.length,
                ),
              ),
              const SizedBox(height: 10),
              SliderBanner(adController: widget.adController),
              const SizedBox(height: 10),
              SizedBox(width: size.width, child: const Text('Estabelecimentos', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  runSpacing: 20,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    ...establishmentController.listEstablishment.map(
                      (establishment) => InkWell(
                        onTap: () {
                          EstablishmentModel establishmentModel = EstablishmentModel.fromJson(establishment.data() as Map<String, dynamic>);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EstablishmentView(establishmentModel: establishmentModel)));
                        },
                        child: CardEstablishment(establishment: establishment),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
