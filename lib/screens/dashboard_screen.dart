// import 'package:flutter/material.dart';


// class DashboardScreen( extends StatelessWidget {
//   // ignore: use_function_type_syntax_for_parameters
//   const DashboardScreen(({super.key}), {super.key};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Top Rating Project Card
//             Container(
//               height: 180,
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF6E3FF3), Color(0xFFF364F8)],
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                 ),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Stack(
//                 children: [
//                   // Content
//                   Padding(
//                     padding: const EdgeInsets.all(24.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'ETHEREUM 2.0',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         const Text(
//                           'Top Rating\nProject',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             height: 1.2,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         const Text(
//                           'Trending project and high rating\nProject Created by team.',
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 14,
//                           ),
//                         ),
//                         const SizedBox(height: 12),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFF2D2F3B),
//                             foregroundColor: Colors.white,
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 24,
//                               vertical: 12,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           child: const Text('Learn More'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 24),

//             // Projects and Creators Section
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // All Projects Section
//                 Expanded(
//                   flex: 3,
//                   child: Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF2D2F3B),
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'All Projects',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         _buildProjectCard(
//                           isSelected: true,
//                           projectNumber: '#1',
//                         ),
//                         _buildProjectCard(
//                           projectNumber: '#2',
//                         ),
//                         _buildProjectCard(
//                           projectNumber: '#3',
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const SizedBox(width: 24),

//                 // Top Creators Section
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF2D2F3B),
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Top Creators',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         _buildCreatorListHeader(),
//                         _buildCreatorListItem('@medelleen_s21', '9821'),
//                         _buildCreatorListItem('@karl.wl02', '7032'),
//                         _buildCreatorListItem('@medelleen_s21', '9821'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 24),

//             // Performance Chart Section
//             Container(
//               padding: const EdgeInsets.all(24),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF2D2F3B),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Over All Performance\nThe Years',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       height: 1.2,
//                     ),
//                   ),
//                   const SizedBox(height: 24),
//                   SizedBox(
//                     height: 200,
//                     child: PerformanceChart(),
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     children: [
//                       _buildLegendItem('Pending', Colors.pink),
//                       const SizedBox(width: 24),
//                       _buildLegendItem('Project Done', Colors.purple),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildProjectCard({
//     bool isSelected = false,
//     required String projectNumber,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: isSelected ? const Color(0xFF3F4154) : Colors.transparent,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: isSelected ? Colors.blue.withOpacity(0.5) : Colors.transparent,
//           width: 1,
//         ),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 40,
//             height: 40,
//             decoration: BoxDecoration(
//               color: const Color(0xFF2D2F3B),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: const Icon(
//               Icons.folder_outlined,
//               color: Colors.blue,
//             ),
//           ),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Technology behind the Blockchain',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 14,
//                   ),
//                 ),
//                 Text(
//                   'Project $projectNumber • See project details',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Icon(
//             Icons.edit,
//             color: Colors.grey[400],
//             size: 20,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCreatorListHeader() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Row(
//         children: const [
//           Expanded(
//             flex: 2,
//             child: Text(
//               'Name',
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 14,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Text(
//               'Artworks',
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 14,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Text(
//               'Rating',
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 14,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCreatorListItem(String name, String rating) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 16,
//                   backgroundColor: Colors.grey,
//                 ),
//                 const SizedBox(width: 8),
//                 Text(
//                   name,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 14,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Expanded(
//             child: Text(
//               '-',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 14,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Text(
//               rating,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 14,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLegendItem(String label, Color color) {
//     return Row(
//       children: [
//         Container(
//           width: 12,
//           height: 12,
//           decoration: BoxDecoration(
//             color: color,
//             shape: BoxShape.circle,
//           ),
//         ),
//         const SizedBox(width: 8),
//         Text(
//           label,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class PerformanceChart extends StatelessWidget {
//   final List<FlSpot> pendingSpots = [
//     FlSpot(2015, 20),
//     FlSpot(2016, 35),
//     FlSpot(2017, 15),
//     FlSpot(2018, 30),
//     FlSpot(2019, 45),
//     FlSpot(2020, 25),
//   ];

//   final List<FlSpot> doneSpots = [
//     FlSpot(2015, 15),
//     FlSpot(2016, 25),
//     FlSpot(2017, 20),
//     FlSpot(2018, 40),
//     FlSpot(2019, 35),
//     FlSpot(2020, 30),
//   ];

//   PerformanceChart({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(
//           leftTitles: AxisTitles(
//             sideTitles: SideTitles(
//               showTitles: true,
//               interval: 10,
//               getTitlesWidget: (value, meta) {
//                 return Text(
//                   value.toInt().toString(),
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12,
//                   ),
//                 );
//               },
//             ),
//           ),
//           bottomTitles: AxisTitles(
//             sideTitles: SideTitles(
//               showTitles: true,
//               interval: 1,
//               getTitlesWidget: (value, meta) {
//                 return Text(
//                   value.toInt().toString(),
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12,
//                   ),
//                 );
//               },
//             ),
//           ),
//           rightTitles: AxisTitles(
//             sideTitles: SideTitles(showTitles: false),
//           ),
//           topTitles: AxisTitles(
//             sideTitles: SideTitles(showTitles: false),
//           ),
//         ),
//         borderData: FlBorderData(show: false),
//         lineBarsData: [
//           // Pending Line
//           LineChartBarData(
//             spots: pendingSpots,
//             isCurved: true,
//             color: Colors.pink,
//             dotData: FlDotData(show: false),
//             belowBarData: BarAreaData(
//               show: true,
//               color: Colors.pink.withOpacity(0.1),
//             ),
//           ),
//           // Done Line
//           LineChartBarData(
//             spots: doneSpots,
//             isCurved: true,
//             color: Colors.purple,
//             dotData: FlDotData(show: false),
//             belowBarData: BarAreaData(
//               show: true,
//               color: Colors.purple.withOpacity(0.1),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }