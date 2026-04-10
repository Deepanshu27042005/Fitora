import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  
  double? _bmiValue;
  String _bmiCategory = '';
  Color _categoryColor = Colors.teal;
  String _suggestion = '';

  void _calculateBmi() {
    if (_formKey.currentState!.validate()) {
      double height = double.parse(_heightController.text) / 100;
      double weight = double.parse(_weightController.text);
      
      setState(() {
        _bmiValue = weight / (height * height);
        if (_bmiValue! < 18.5) {
          _bmiCategory = 'Underweight';
          _categoryColor = Colors.orange;
          _suggestion = 'Focus on nutrient-dense foods like nuts, dairy, and proteins. Consider strength training to build muscle mass.';
        } else if (_bmiValue! < 25) {
          _bmiCategory = 'Normal';
          _categoryColor = Colors.green;
          _suggestion = 'Great job! Maintain your current lifestyle with a balanced diet and regular physical activity.';
        } else if (_bmiValue! < 30) {
          _bmiCategory = 'Overweight';
          _categoryColor = Colors.orange;
          _suggestion = 'Consider increasing cardio exercises like brisk walking or swimming. Reduce intake of processed sugars.';
        } else {
          _bmiCategory = 'Obese';
          _categoryColor = Colors.red;
          _suggestion = 'It is recommended to consult a nutritionist. Focus on a calorie-controlled diet and daily 30-minute walks.';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Calculate your Body Mass Index',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Height', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _heightController,
                        decoration: const InputDecoration(
                          hintText: '175',
                          suffixText: 'cm',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) => value == null || value.isEmpty ? 'Required' : null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Weight', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _weightController,
                        decoration: const InputDecoration(
                          hintText: '70',
                          suffixText: 'kg',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) => value == null || value.isEmpty ? 'Required' : null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _calculateBmi,
              child: const Text('Calculate BMI', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            if (_bmiValue != null) ...[
              const SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    const Text('YOUR BMI IS', style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.w300)),
                    const SizedBox(height: 8),
                    Text(
                      _bmiValue!.toStringAsFixed(1),
                      style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: _categoryColor),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      decoration: BoxDecoration(
                        color: _categoryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        _bmiCategory.toUpperCase(),
                        style: TextStyle(color: _categoryColor, fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Card(
                      elevation: 0,
                      color: _categoryColor.withOpacity(0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: _categoryColor.withOpacity(0.2)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.lightbulb, color: _categoryColor),
                                const SizedBox(width: 8),
                                const Text('SUGGESTION', style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              _suggestion,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 15, height: 1.4),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
