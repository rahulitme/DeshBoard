// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: const Color(0xFF1A1B23),
//       ),
//       home: const DashboardContent(),
//     );
//   }
// }

// class DashboardContent extends StatelessWidget {
//   const DashboardContent({super.key});

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
//     return const Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Row(
//         children: [
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
//     const FlSpot(2015, 20),
//       const FlSpot(2016, 35),
//     const FlSpot(2017, 15),
//     const FlSpot(2018, 30),
//     const FlSpot(2019, 45),
//     const FlSpot(2020, 25),
//   ];

//   final List<FlSpot> doneSpots = [
//     const FlSpot(2015, 15),
//     const FlSpot(2016, 25),
//     const FlSpot(2017, 20),
//     const FlSpot(2018, 40),
//     const FlSpot(2019, 35),
//     const FlSpot(2020, 30),
//   ];

//   PerformanceChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         gridData: const FlGridData(show: false),
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
//           rightTitles: const AxisTitles(
//             sideTitles: SideTitles(showTitles: false),
//           ),
//           topTitles: const AxisTitles(
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
//             dotData: const FlDotData(show: false),
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
//             dotData: const FlDotData(show: false),
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

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
        primaryColor: const Color(0xFF1B2559),
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          // Sidebar
          SidebarWidget(),

          // Main Content
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // Top Bar
                    TopBarWidget(),
                    SizedBox(height: 24),

                    // Featured Project Card
                    FeaturedProjectCard(),
                    SizedBox(height: 24),

                    // Projects and Creators Row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: ProjectList(),
                        ),
                        SizedBox(width: 24),
                        Expanded(
                          flex: 2,
                          child: TopCreators(),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),

                    // Performance Chart
                    PerformanceChart(),
                  ],
                ),
              ),
            ),
          ),

          // Right Sidebar (Calendar & Birthdays)
          RightSidebarWidget(),
        ],
      ),
    );
  }
}

class SidebarWidget extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = const [
    {'icon': Icons.home, 'title': 'Home', 'isSelected': true},
    {'icon': Icons.people, 'title': 'Employees', 'isSelected': false},
    {'icon': Icons.access_time, 'title': 'Attendance', 'isSelected': false},
    {'icon': Icons.summarize, 'title': 'Summary', 'isSelected': false},
    {'icon': Icons.info, 'title': 'Information', 'isSelected': false},
  ];

  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/1.jpg', // or 'assets/images/1.jpg' if in subfolder
                  width: 32,
                  height: 32,
                ),
                const SizedBox(width: 8),
                const Text(
                  'AdStacks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Profile Section
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/1.jpg'),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Pooja Mishra',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Admin',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Menu Items
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];
                return ListTile(
                  leading: Icon(
                    item['icon'],
                    color: item['isSelected'] ? Colors.blue : Colors.black54,
                  ),
                  title: Text(
                    item['title'],
                    style: TextStyle(
                      color: item['isSelected'] ? Colors.blue : Colors.black54,
                    ),
                  ),
                  selected: item['isSelected'],
                  selectedTileColor: Colors.blue.withOpacity(0.1),
                  onTap: () {},
                );
              },
            ),
          ),

          // Workspaces Section
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'WORKSPACES',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.black54),
                      onPressed: () {},
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'Adstacks',
                    style: TextStyle(color: Colors.black54),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_down,
                      color: Colors.black54),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Finance',
                    style: TextStyle(color: Colors.black54),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_down,
                      color: Colors.black54),
                  onTap: () {},
                ),
              ],
            ),
          ),

          // Bottom Menu Items
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.black54),
            title: const Text(
              'Setting',
              style: TextStyle(color: Colors.black54),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.black54),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.black54),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Container(
          width: 300,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.camera_alt_outlined, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.power_settings_new, color: Colors.black),
          onPressed: () {},
        ),
        const CircleAvatar(
          radius: 16,
          backgroundColor: Colors.grey,
          child: Icon(Icons.person, size: 20),
        ),
      ],
    );
  }
}

class FeaturedProjectCard extends StatelessWidget {
  const FeaturedProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 800,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF7B61FF), Color(0xFF9C1AFF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.network(
              '/api/placeholder/200/200',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'ETHEREUM 2.0',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Top Rating\nProject',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Trending project and high rating\nProject Created by team.',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.purple,
                  ),
                  child: const Text('Learn More'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PerformanceChart extends StatelessWidget {
  const PerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Over All Performance\nThe Years',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          '${(2015 + value.toInt())}',
                          style: const TextStyle(color: Colors.black54),
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          style: const TextStyle(color: Colors.black54),
                        );
                      },
                    ),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 30),
                      const FlSpot(1, 35),
                      const FlSpot(2, 45),
                      const FlSpot(3, 25),
                      const FlSpot(4, 40),
                      const FlSpot(5, 30),
                    ],
                    isCurved: true,
                    color: Colors.red.withOpacity(0.5),
                    barWidth: 4,
                    dotData: const FlDotData(show: false),
                  ),
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 20),
                      const FlSpot(1, 25),
                      const FlSpot(2, 40),
                      const FlSpot(3, 30),
                      const FlSpot(4, 35),
                      const FlSpot(5, 25),
                    ],
                    isCurved: true,
                    color: Colors.blue.withOpacity(0.5),
                    barWidth: 4,
                    dotData: const FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RightSidebarWidget extends StatelessWidget {
  const RightSidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: const Color(0xFF1B2559),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'GENERAL 10:00 AM TO 7:00 PM',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),

          // Calendar Widget
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'OCT',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' 2023',
                    ),
                    Spacer(),
                    Icon(Icons.chevron_left, color: Colors.black),
                    Icon(Icons.chevron_right, color: Colors.black),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Mo', style: TextStyle(color: Colors.black54)),
                    Text('Tu', style: TextStyle(color: Colors.black54)),
                    Text('We', style: TextStyle(color: Colors.black54)),
                    Text('Th', style: TextStyle(color: Colors.black54)),
                    Text('Fr', style: TextStyle(color: Colors.black54)),
                    Text('Sa', style: TextStyle(color: Colors.black54)),
                    Text('Su', style: TextStyle(color: Colors.black54)),
                  ],
                ),
                const SizedBox(height: 8),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: 35,
                  itemBuilder: (context, index) {
                    final day = index - 1;
                    final isSelected = day == 27;
                    return Container(
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : null,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          day < 0 ? '' : (day + 1).toString(),
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Today Birthday Section
          const Text(
            'Today Birthday',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.celebration),
                  label: const Text('Birthday Wishing'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Anniversary Section
          const Text(
            'Anniversary',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.celebration),
                  label: const Text('Anniversary Wishing'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2D2F3B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'All Projects',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildProjectCard(
            isSelected: true,
            projectNumber: '#1',
          ),
          _buildProjectCard(
            projectNumber: '#2',
          ),
          _buildProjectCard(
            projectNumber: '#3',
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard({
    bool isSelected = false,
    required String projectNumber,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF3F4154) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? Colors.blue.withOpacity(0.5) : Colors.transparent,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF2D2F3B),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.folder_outlined,
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Technology behind the Blockchain',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Project $projectNumber • See project details',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.edit,
            color: Colors.grey[400],
            size: 20,
          ),
        ],
      ),
    );
  }
}

class TopCreators extends StatelessWidget {
  const TopCreators({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2D2F3B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Creators',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildCreatorListHeader(),
          _buildCreatorListItem('@medelleen_s21', '9821'),
          _buildCreatorListItem('@karl.wl02', '7032'),
          _buildCreatorListItem('@medelleen_s21', '9821'),
        ],
      ),
    );
  }

  Widget _buildCreatorListHeader() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Artworks',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Rating',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCreatorListItem(String name, String rating) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(width: 8),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Text(
              '-',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              rating,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
