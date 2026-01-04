import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../services/malatang_service.dart';
import 'record_edit_screen.dart';

class RecordListScreen extends StatefulWidget {
  const RecordListScreen({super.key});

  @override
  State<RecordListScreen> createState() => _RecordListScreenState();
}

class _RecordListScreenState extends State<RecordListScreen> {
  static const Color phoningPink = Color(0xFFFF89A1);
  static const Color phoningBlue = Color(0xFF89D1FF);
  static const Color phoningYellow = Color(0xFFFFE66D);
  static const Color phoningBlack = Color(0xFF1D1D1D);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MalatangService>().loadRecords();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'マーラータンログ',
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
            if (service.records.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.ramen_dining_outlined,
                      size: 80,
                      color: phoningPink,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '記録がまだありません！',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: phoningBlack,
                      ),
                    ),
                    const Text(
                      '食べに行きましょう！',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            }
            return ListView.builder(
              itemCount: service.records.length,
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 100),
              itemBuilder: (context, index) {
                final record = service.records[index];
                final visitDate = record.visitedAt.isNotEmpty
                    ? DateFormat(
                        'MM/dd',
                      ).format(DateTime.parse(record.visitedAt))
                    : '??/??';

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
                      color: Colors.white,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  record.shopName.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: phoningBlack,
                                    letterSpacing: -0.5,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: phoningBlue,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: phoningBlack,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  visitDate,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                    color: phoningBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: phoningYellow,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: phoningBlack,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  record.soupType,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '辛さ🌶️: ${record.spicinessLevel.toStringAsFixed(1)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13,
                                ),
                              ),
                              const Spacer(),
                              if (record.overallRating > 0)
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: phoningPink,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      record.overallRating.toInt().toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: phoningBlack,
                                        fontSize: 22,
                                      ),
                                    ),
                                    const Text(
                                      '/10',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          if (record.ingredients.isNotEmpty) ...[
                            const SizedBox(height: 16),
                            Wrap(
                              spacing: 6,
                              runSpacing: 6,
                              children: record.ingredients.take(5).map((i) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: phoningPink.withValues(alpha: 0.15),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: phoningPink,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Text(
                                    i,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                          if (record.comment.isNotEmpty) ...[
                            const SizedBox(height: 16),
                            Text(
                              record.comment,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
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
