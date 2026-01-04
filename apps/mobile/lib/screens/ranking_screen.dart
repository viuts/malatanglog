import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/malatang_service.dart';
import 'record_edit_screen.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  static const Color phoningPink = Color(0xFFFF89A1);
  static const Color phoningBlue = Color(0xFF89D1FF);
  static const Color phoningYellow = Color(0xFFFFE66D);
  static const Color phoningBlack = Color(0xFF1D1D1D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ランキング',
          style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1.2),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: phoningBlack,
        elevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(color: phoningBlack, height: 2),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFEBF0), Color(0xFFFFD1DC)],
          ),
        ),
        child: Consumer<MalatangService>(
          builder: (context, service, child) {
            final records = List.from(service.records);
            records.sort((a, b) => b.overallRating.compareTo(a.overallRating));

            if (records.isEmpty) {
              return const Center(
                child: Text(
                  'ランキングデータがありません',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
              );
            }

            return ListView.builder(
              itemCount: records.length,
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 100),
              itemBuilder: (context, index) {
                final record = records[index];
                final rank = index + 1;

                Color rankColor = Colors.white;
                Widget rankIcon = Text(
                  '#$rank',
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                );

                if (rank == 1) {
                  rankColor = phoningYellow;
                  rankIcon = const Icon(
                    Icons.workspace_premium,
                    color: phoningBlack,
                    size: 28,
                  );
                } else if (rank == 2) {
                  rankColor = const Color(0xFFE5E5E5);
                } else if (rank == 3) {
                  rankColor = const Color(0xFFFFCC99);
                }

                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RecordEditScreen(initialReview: record),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      color: rankColor,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: phoningBlack, width: 2.5),
                      boxShadow: const [
                        BoxShadow(
                          color: phoningBlack,
                          offset: Offset(6, 6),
                          blurRadius: 0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            alignment: Alignment.center,
                            child: rankIcon,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  record.shopName.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: phoningBlack,
                                  ),
                                ),
                                Text(
                                  record.soupType,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.star,
                                color: phoningPink,
                                size: 24,
                              ),
                              Text(
                                '${record.overallRating.toInt()}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: phoningBlack,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
