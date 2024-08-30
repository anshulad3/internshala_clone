import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  final String? selectedProfile;
  final String? selectedCity;
  final String? selectedDuration;

  const FilterScreen(
      {super.key,
      this.selectedCity,
      this.selectedDuration,
      this.selectedProfile});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String? selectedProfile;
  String? selectedCity;
  String? selectedDuration;

  @override
  void initState() {
    super.initState();
    selectedProfile = widget.selectedProfile;
    selectedCity = widget.selectedCity;
    selectedDuration = widget.selectedDuration;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Filter'),
        titleSpacing: 126,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: double.maxFinite,
                child: DropdownButton<String>(
                  value: selectedProfile,
                  items: <String>[
                    'Administration',
                    'Marketing',
                    'Business Analytics',
                    'Android App Development',
                    'Product Management',
                    'Brand Management',
                    'Data Science',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedProfile = newValue;
                    });
                  },
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(12),
                  dropdownColor: Colors.grey.shade50,
                  enableFeedback: true,
                ),
              ),
              //
              //
              SizedBox(height: 20),
              //
              //
              Text(
                'City :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: double.maxFinite,
                child: DropdownButton<String>(
                  value: selectedCity,
                  items: <String>[
                    'Gurgaon',
                    'Delhi',
                    'Parbhani',
                    'Kera',
                    'Lucknow',
                    'Tarn Taran',
                    'Munnar',
                    'Banga (Philippines)'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCity = newValue;
                    });
                  },
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(12),
                  dropdownColor: Colors.grey.shade50,
                  enableFeedback: true,
                ),
              ),
              //
              //
              SizedBox(height: 20),
              //
              //
              Text(
                'Duration :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: double.maxFinite,
                child: DropdownButton<String>(
                  value: selectedDuration,
                  items: <String>['2 Months', '3 Months', '5 Months']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDuration = newValue;
                    });
                  },
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(12),
                  dropdownColor: Colors.grey.shade50,
                  enableFeedback: true,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop({
                        'profile': selectedProfile,
                        'city': selectedCity,
                        'duration': selectedDuration,
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue.shade300,
                      foregroundColor: Colors.grey.shade50,
                    ),
                    child: Text('Apply'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop({
                        'profile': null,
                        'city': null,
                        'duration': null,
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue.shade300,
                      foregroundColor: Colors.grey.shade50,
                    ),
                    child: Text('Reset'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
