import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class laptops extends StatefulWidget {
  const laptops({Key? key});

  @override
  State<laptops> createState() => _LaptopsPageState();
}

class _LaptopsPageState extends State<laptops> {
  final Stream<QuerySnapshot> _laptopsStream = FirebaseFirestore.instance.collection('laptops').snapshots();

  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Laptops Store',
          style: TextStyle(color: Color(0xFFE63B60), fontSize:40,fontFamily: "Pacifico"),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color:Color( 0xFF223BC9)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search laptops',
                      prefixIcon: const Icon(Icons.search, color: Color(0xFF067FD0)),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.shopping_cart, color: Color(0xFFE63B60)),
                  onPressed: () {
                    // Handle cart button action
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _laptopsStream,
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text(
                      'An error occurred. Please try again later.',
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    ),
                  );
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                final laptops = snapshot.data!.docs;
                final filteredLaptops = _searchQuery.isEmpty
                    ? laptops
                    : laptops.where((document) {
                        final data = document.data() as Map<String, dynamic>;
                        final laptopName = data['name'] as String;
                        return laptopName.toLowerCase().contains(_searchQuery.toLowerCase());
                      }).toList();

                if (filteredLaptops.isEmpty) {
                  return const Center(
                    child: Text(
                      'No laptops found.',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }

                return ListView(

                  children: filteredLaptops.map((DocumentSnapshot document) {
                    final data = document.data() as Map<String, dynamic>;
                    return ListTile(

                      title: Text(
                        data['name'],
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Price: \$${data['price']}',
                        style: const TextStyle(color: Color(0xFFE63B60)),
                      ),
                      trailing: Image.network(
                        data['pic'],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFF223BC9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
