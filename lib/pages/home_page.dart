import 'package:flutter/material.dart';

import '../models/internship_model.dart';
import '../services/internship_fetch.dart';
import 'filter_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Internship> internships = [];
  List<Internship> filteredInternships = [];

  String? selectedProfile;
  String? selectedCity;
  String? selectedDuration;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchInternships().then((data) {
      setState(() {
        internships = data.internships;
        filteredInternships = internships;
        isLoading = false;
      });
    });
  }

  void applyFilter(Map<String, dynamic> filters) {
    setState(() {
      selectedProfile = filters['profile'];
      selectedCity = filters['city'];
      selectedDuration = filters['duration'];
      applyFilters();
    });
  }

  void applyFilters() {
    setState(() {
      filteredInternships = internships.where((internship) {
        final locationNamesList = internship.locationNames ?? [];
        return (selectedProfile == null ||
                internship.profileName == selectedProfile) &&
            (selectedCity == null ||
                locationNamesList.contains(selectedCity)) &&
            (selectedDuration == null ||
                internship.duration == selectedDuration);
      }).toList();
    });
  }

  void navigateToFilterScreen() async {
    final filters = await Navigator.of(context).push(
      MaterialPageRoute<Map<String, dynamic>>(
        builder: (context) => FilterScreen(
          selectedProfile: selectedProfile,
          selectedCity: selectedCity,
          selectedDuration: selectedDuration,
        ),
      ),
    );

    if (filters != null) {
      applyFilter(filters);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        title: Image.asset(
          "lib/images/internshala.png",
          height: 300,
          width: 150,
        ),
        titleSpacing: 70,
      ),

      // FLOATING ACTION BUTTON FOR FILTER MENU
      floatingActionButton: FloatingActionButton(
        onPressed: navigateToFilterScreen,
        shape: const CircleBorder(),
        backgroundColor: Colors.lightBlue.shade400,
        child: Icon(
          Icons.filter_alt,
          color: Colors.white,
        ),
      ),
      //
      //
      drawer: Drawer(
        backgroundColor: Colors.white,
      ),
      //
      //
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: filteredInternships.length,
              itemBuilder: (context, index) {
                final internship = filteredInternships[index];
                final locationText =
                    internship.locationNames?.join(', ') ?? 'No Location';
                return Container(
                  margin: EdgeInsets.only(
                    bottom: 14,
                    top: 14,
                    right: 8,
                    left: 8,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlue.shade100,
                          offset: Offset(3.0, 4.0),
                          blurRadius: 4.0,
                        )
                      ]),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      filteredInternships[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Expanded(
                          child: Text(
                            filteredInternships[index].companyName,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          filteredInternships[index].duration,
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          filteredInternships[index].stipend.salary,
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          locationText,
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
