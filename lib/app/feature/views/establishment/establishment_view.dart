import 'package:flutter/material.dart';
import 'package:parentapp/app/core/models/establishment_model.dart';
import 'package:provider/provider.dart';

import '../../../core/models/service_model.dart';
import '../../../shared/default/text_styles.dart';
import '../../controllers/service_controller.dart';
import 'service_card.dart';

class EstablishmentView extends StatefulWidget {
  final EstablishmentModel establishmentModel;

  const EstablishmentView({required this.establishmentModel, super.key});

  @override
  State<EstablishmentView> createState() => _EstablishmentViewState();
}

class _EstablishmentViewState extends State<EstablishmentView> {
  double iconSize = 15;
  late Widget fullStar;
  late Widget halfStar;

  ServiceController get serviceController => Provider.of<ServiceController>(context, listen: false);

  @override
  void initState() {
    fullStar = Icon(Icons.star, size: iconSize, color: Colors.yellow);
    halfStar = Icon(Icons.star_half, size: iconSize, color: Colors.yellow);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            backgroundColor: appBarColor,
            leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.chevron_left, size: 40, weight: 1)),
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))]),
        body: Column(
          children: [
            Container(
              width: size.width,
              color: appBarColor,
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.establishmentModel.name, style: titleStyle),
                  Text(widget.establishmentModel.description, style: style.copyWith(color: Colors.black)),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.green,
                      width: size.width,
                      height: size.height * 0.2,
                      child: Image.network(widget.establishmentModel.image, fit: BoxFit.cover),
                    ),
                    Container(color: backgroundColor, height: size.height * 0.08),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Card(
                    color: Colors.black,
                    elevation: 5,
                    shadowColor: Colors.black,
                    child: Container(
                      padding: const EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 5),
                      width: size.width * 0.9,
                      height: size.height * 0.2,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF353535)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Aberto", style: titleStyle.copyWith(color: Colors.green)),
                              Row(children: [Text("Fecha as ", style: style), Text("23:00", style: style.copyWith(color: Colors.red))]),
                              Row(children: [fullStar, fullStar, fullStar, fullStar, halfStar]),
                              Row(children: [
                                Icon(Icons.account_balance_wallet, size: iconSize, color: textColor),
                                Icon(Icons.attach_money, size: iconSize, color: textColor),
                                Icon(Icons.attach_money, size: iconSize, color: textColor)
                              ]),
                              Row(children: [Icon(Icons.location_on, size: iconSize, color: textColor), const SizedBox(width: 5), Text(widget.establishmentModel.address, style: style)]),
                              Row(children: [Icon(Icons.phone, size: iconSize, color: textColor), const SizedBox(width: 5), Text(widget.establishmentModel.phone, style: style)]),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(backgroundImage: NetworkImage(widget.establishmentModel.banner), radius: 40),
                              // Row(children: [Icon(Icons.account_balance, size: iconSize, color: textColor), const SizedBox(width: 5), Text("À la carte", style: style)]),
                              // Row(children: [Icon(Icons.account_balance, size: iconSize, color: textColor), const SizedBox(width: 5), Text("Menu Infantil", style: style)]),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.9,
              child: Container(
                color: backgroundColor,
                child: FutureBuilder(
                  future: serviceController.getAll(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return const Center(child: Text("Nenhum dado encontrado"));
                      case ConnectionState.waiting:
                        return const Center(child: CircularProgressIndicator());
                      case ConnectionState.active:
                        return const Center(child: CircularProgressIndicator());
                      case ConnectionState.done:
                        if (snapshot.hasError) {
                          return Center(child: Text(snapshot.error.toString()));
                        } else {
                          return ListView.separated(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) => ServiceCard(serviceModel: snapshot.data![index]),
                            separatorBuilder: (context, index) => const SizedBox(height: 10),
                          );
                        }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            List<ServiceModel> serviceList = await serviceController.getAll();
          },
          label: const Text("Reservar"),
          icon: const Icon(Icons.calendar_today),
        ));
  }
}
