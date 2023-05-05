import 'package:flutter/material.dart';

class TripPlanningPage extends StatefulWidget {
  @override
  _TripPlanningPageState createState() => _TripPlanningPageState();
}

class _TripPlanningPageState extends State<TripPlanningPage> {
  final _destinationController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();
  Future<void> _selectStartDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _startDate) {
      setState(() {
        _startDate = picked;
        _startDateController.text = picked.toString();
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _endDate ?? DateTime.now().add(Duration(days: 1)),
      firstDate: _startDate ?? DateTime.now().add(Duration(days: 1)),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _endDate) {
      setState(() {
        _endDate = picked;
        _endDateController.text = picked.toString();
      });
    }
  }

  @override
  void dispose() {
    _destinationController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan Your Trip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _destinationController,
              decoration: InputDecoration(
                labelText: 'Destination',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _startDateController,
              readOnly: true,
              onTap: () => _selectStartDate(context),
              decoration: InputDecoration(
                labelText: 'Start Date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _endDateController,
              readOnly: true,
              onTap: () => _selectEndDate(context),
              decoration: InputDecoration(
                labelText: 'End Date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
