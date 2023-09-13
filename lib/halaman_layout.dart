import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryMenu {
  final int id;
  final String name;

  CategoryMenu({
    required this.id,
    required this.name,
  });
}

class CategoryItem {
  final int? id;
  final String? nameFood;

  CategoryItem({
    this.id,
    this.nameFood,
  });
}

class HalamanLayout extends StatefulWidget {
  const HalamanLayout({super.key});

  @override
  State<HalamanLayout> createState() => _HalamanLayoutState();
}

class _HalamanLayoutState extends State<HalamanLayout> {
  List<CategoryMenu> listMenu = [
    CategoryMenu(id: 0, name: "Semua"),
    CategoryMenu(id: 1, name: "Harga Murah"),
    CategoryMenu(id: 3, name: "Bintang 4.5"),
  ];

  CategoryMenu? _selectMenu;

  List<CategoryItem> listMenItem = [
    CategoryItem(id: 0, nameFood: "Sate"),
    CategoryItem(id: 1, nameFood: "Baso"),
    CategoryItem(id: 3, nameFood: "Cuanki"),
    CategoryItem(id: 0, nameFood: "Pizza"),
    CategoryItem(id: 1, nameFood: "MCD"),
    CategoryItem(id: 3, nameFood: "KFC"),
    CategoryItem(id: 0, nameFood: "Burger"),
    CategoryItem(id: 1, nameFood: "Cilor"),
    CategoryItem(id: 3, nameFood: "Maklor"),
  ];

  List<CategoryItem> listMenuItemFilter = [];

  void _listFilter(int id) {
    listMenuItemFilter.clear();
    if (id == 0) {
      for (var element in listMenItem) {
        listMenuItemFilter.add(element);
      }
    } else {
      for (var element in listMenItem) {
        if (element.id == _selectMenu?.id) {
          listMenuItemFilter.add(element);
        }
      }
    }
  }

  @override
  void initState() {
    _selectMenu = CategoryMenu(id: 0, name: "Semua");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEBEB),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Layout'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 87, bottom: 24, top: 24),
              child: Text(
                'Membangun Brand Digital yang Berkualitas bagi Usaha Kuliner di Indonesia',
                style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.pin_drop_rounded,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Jakarta',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.arrow_drop_down_outlined,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(
                    0xffCED4DA,
                  ),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    4,
                  ),
                ),
              ),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: const Text(
                'Cari nama brand kuliner',
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                itemCount: listMenu.length,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectMenu = listMenu[index];
                        _listFilter(listMenu[index].id);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: _selectMenu == listMenu[index]
                              ? Colors.orange
                              : Colors.white,
                          border: Border.all(
                            color: const Color(
                              0xFFC2C2C2,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(
                            4,
                          ),
                        ),
                        child: Text(
                          listMenu[index].name,
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Material(
                color: const Color(0xFFEBEBEB),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 24,
                  ),
                  itemCount: listMenuItemFilter.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 12,
                        bottom: 12,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.network(
                                "https://hips.hearstapps.com/hmg-prod/images/table-filled-with-large-variety-of-food-shot-from-royalty-free-image-1659038707.jpg?crop=1xw:0.84335xh;center,top&resize=1200:*",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              listMenuItemFilter[index].nameFood ?? "",
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
