import 'package:flutter/material.dart';
import 'package:wing_bank/models/lists/items-list-utilities.dart';
import 'package:wing_bank/theme/colors.dart';

class ContainerItems extends StatelessWidget {
  const ContainerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: BackgroundColor.colorWhite_2,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search),
                              ),
                              SizedBox(
                                width: 250,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search...",
                                    hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.qr_code),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const ItemList_Utilities(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
