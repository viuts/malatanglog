import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../api/malatanglog/v1/malatanglog.pb.dart';
import '../services/malatang_service.dart';
import '../services/api_service.dart';
import '../widgets/bowl_animation.dart';

class RecordEditScreen extends StatefulWidget {
  final Review? initialReview;
  const RecordEditScreen({super.key, this.initialReview});

  @override
  State<RecordEditScreen> createState() => _RecordEditScreenState();
}

class _RecordEditScreenState extends State<RecordEditScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _shopNameController;
  late TextEditingController _soupTypeController;
  late TextEditingController _commentController;
  late TextEditingController _bestIngredientController;
  late TextEditingController _otherIngredientsController;

  late DateTime _visitedAt;
  late double _spicinessLevel;
  late Review_OrderStyle _orderStyle;
  late double _overallRating;

  // Taste (0-5)
  late double _tasteTonkotsuGyukotsu;
  late double _tasteYakuzen;
  late double _tasteSesame;
  late double _tasteShibire;
  late double _tasteFat;

  // NewJeans Phoning Aesthetic Colors
  static const Color phoningPink = Color(0xFFFF89A1);
  static const Color phoningBlue = Color(0xFF89D1FF);
  static const Color phoningYellow = Color(0xFFFFE66D);
  static const Color phoningBlack = Color(0xFF1D1D1D);

  final Map<String, bool> _ingredients = {
    'チンゲン菜': false,
    '白菜': false,
    'えのき': false,
    'キクラゲ': false,
    'レンコン': false,
    '牛モツ': false,
    '羊肉': false,
    '海老': false,
    'うずら卵': false,
    'ポークソーセージ': false,
    'かにカマ': false,
    'フィッシュボール': false,
    'さつまいも春雨': false,
    'とうもろこし麺': false,
  };

  final Map<String, String> _ingredientEmojis = {
    'チンゲン菜': '🥬',
    '白菜': '🥬',
    'えのき': '🍄',
    'キクラゲ': '🍄',
    'レンコン': '🥗',
    '牛モツ': '🥩',
    '羊肉': '🥩',
    '海老': '🍤',
    'うずら卵': '🥚',
    'ポークソーセージ': '🌭',
    'かにカマ': '🦀',
    'フィッシュボール': '🍡',
    'さつまいも春雨': '🍜',
    'とうもろこし麺': '🍜',
  };

  @override
  void initState() {
    super.initState();
    final review = widget.initialReview;
    _shopNameController = TextEditingController(text: review?.shopName ?? '');
    _soupTypeController = TextEditingController(text: review?.soupType ?? '麻辣');
    _commentController = TextEditingController(text: review?.comment ?? '');
    _bestIngredientController = TextEditingController(
      text: review?.bestIngredient ?? '',
    );
    _otherIngredientsController = TextEditingController();

    _visitedAt = review != null && review.visitedAt.isNotEmpty
        ? DateTime.parse(review.visitedAt)
        : DateTime.now();
    _spicinessLevel = review?.spicinessLevel ?? 1.0;
    _orderStyle = review?.orderStyle ?? Review_OrderStyle.ORDER_STYLE_BUFFET;
    _overallRating = review?.overallRating ?? 5.0;

    _tasteTonkotsuGyukotsu = review?.tasteTonkotsuGyukotsu.toDouble() ?? 3.0;
    _tasteYakuzen = review?.tasteYakuzen.toDouble() ?? 3.0;
    _tasteSesame = review?.tasteSesame.toDouble() ?? 3.0;
    _tasteShibire = review?.tasteShibire.toDouble() ?? 3.0;
    _tasteFat = review?.tasteFat.toDouble() ?? 3.0;

    if (review != null) {
      for (final ingredient in review.ingredients) {
        if (_ingredients.containsKey(ingredient)) {
          _ingredients[ingredient] = true;
        } else {
          _ingredients[ingredient] = true;
        }
      }
    }
  }

  @override
  void dispose() {
    _shopNameController.dispose();
    _soupTypeController.dispose();
    _commentController.dispose();
    _bestIngredientController.dispose();
    _otherIngredientsController.dispose();
    super.dispose();
  }

  String _getSpicinessLabel(double value) {
    if (value == 0) return '不辣 (なし)';
    if (value <= 1.0) return '微辣 (小辛)';
    if (value <= 3.0) return '中辣 (中辛)';
    if (value <= 5.0) return '大辣 (大辛)';
    if (value <= 8.0) return '極辣 (激辛)';
    return '爆辣 (超激辛)';
  }

  // --- Phoning Design Components ---

  InputDecoration _phoningInputDecoration(String hint, {Widget? prefix}) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: prefix,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: phoningBlack, width: 2.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: phoningBlue, width: 3),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.pinkAccent, width: 2.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.pinkAccent, width: 3),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 24),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: phoningBlack,
          letterSpacing: -0.5,
        ),
      ),
    );
  }

  Widget _phoningCard({required Widget child, Color color = Colors.white}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: phoningBlack, width: 2.5),
        boxShadow: const [
          BoxShadow(color: phoningBlack, offset: Offset(4, 4), blurRadius: 0),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final apiService = context.read<ApiService>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.initialReview != null ? '記録の編集' : '新しい記録',
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 1.0,
          ),
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
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 100, 20, 80),
            children: [
              // Shop Section
              _sectionTitle('店舗'),
              Autocomplete<Shop>(
                displayStringForOption: (Shop option) => option.name,
                optionsBuilder: (TextEditingValue textEditingValue) async {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<Shop>.empty();
                  }
                  try {
                    return await apiService.getShops(
                      query: textEditingValue.text,
                    );
                  } catch (e) {
                    return const Iterable<Shop>.empty();
                  }
                },
                onSelected: (Shop selection) {
                  _shopNameController.text = selection.name;
                },
                fieldViewBuilder:
                    (context, controller, focusNode, onFieldSubmitted) {
                      if (_shopNameController.text.isNotEmpty &&
                          controller.text.isEmpty) {
                        controller.text = _shopNameController.text;
                      }
                      return TextFormField(
                        controller: controller,
                        focusNode: focusNode,
                        decoration: _phoningInputDecoration(
                          '店名を入力',
                          prefix: const Icon(Icons.search, color: phoningBlack),
                        ),
                        onChanged: (v) => _shopNameController.text = v,
                        validator: (v) => v!.isEmpty ? 'どこで食べた？' : null,
                      );
                    },
              ),
              const SizedBox(height: 16),

              // Format Section
              _phoningCard(
                color: phoningYellow,
                child: Row(
                  children: [
                    const Text(
                      '形式',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const Spacer(),
                    SegmentedButton<Review_OrderStyle>(
                      style: SegmentedButton.styleFrom(
                        backgroundColor: Colors.white,
                        selectedBackgroundColor: phoningPink,
                        selectedForegroundColor: Colors.white,
                        side: const BorderSide(color: phoningBlack, width: 1.5),
                      ),
                      segments: const [
                        ButtonSegment(
                          value: Review_OrderStyle.ORDER_STYLE_BUFFET,
                          label: Text('バイキング'),
                        ),
                        ButtonSegment(
                          value: Review_OrderStyle.ORDER_STYLE_ORDER,
                          label: Text('オーダー式'),
                        ),
                      ],
                      selected: {_orderStyle},
                      onSelectionChanged:
                          (Set<Review_OrderStyle> newSelection) {
                            setState(() {
                              _orderStyle = newSelection.first;
                            });
                          },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Date Section
              _phoningCard(
                color: phoningBlue,
                child: InkWell(
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: _visitedAt,
                      firstDate: DateTime(2020),
                      lastDate: DateTime.now(),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                              primary: phoningPink,
                              onPrimary: Colors.white,
                              onSurface: phoningBlack,
                            ),
                          ),
                          child: child!,
                        );
                      },
                    );
                    if (picked != null) {
                      setState(() {
                        _visitedAt = picked;
                      });
                    }
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_today, color: phoningBlack),
                      const SizedBox(width: 12),
                      const Text(
                        '食べた日',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      const Spacer(),
                      Text(
                        DateFormat('yyyy/MM/dd').format(_visitedAt),
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Divider(height: 48, thickness: 2, color: phoningBlack),

              _sectionTitle('スープ'),
              TextFormField(
                controller: _soupTypeController,
                decoration: _phoningInputDecoration('例: 麻辣, トマト...'),
              ),
              const SizedBox(height: 16),

              _phoningCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'オーダーした辛さ',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text(
                          _getSpicinessLabel(_spicinessLevel),
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            color: phoningPink,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: _spicinessLevel,
                      min: 0,
                      max: 10,
                      divisions: 20,
                      label: _spicinessLevel.toString(),
                      activeColor: phoningPink,
                      inactiveColor: phoningPink.withValues(alpha: 0.2),
                      onChanged: (v) => setState(() => _spicinessLevel = v),
                    ),
                  ],
                ),
              ),

              _sectionTitle('具材'),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: _ingredients.keys.map((key) {
                  final isSelected = _ingredients[key]!;
                  return FilterChip(
                    label: Text(
                      key,
                      style: const TextStyle(fontWeight: FontWeight.w900),
                    ),
                    selected: isSelected,
                    onSelected: (bool selected) =>
                        setState(() => _ingredients[key] = selected),
                    backgroundColor: Colors.white,
                    selectedColor: phoningPink,
                    checkmarkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: phoningBlack, width: 2),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _otherIngredientsController,
                decoration: _phoningInputDecoration('追加の具材を入力してEnter'),
                onFieldSubmitted: (value) {
                  if (value.trim().isNotEmpty) {
                    setState(() {
                      _ingredients[value.trim()] = true;
                      _otherIngredientsController.clear();
                    });
                  }
                },
              ),

              const SizedBox(height: 24),
              _phoningCard(
                child: Column(
                  children: [
                    const Text(
                      'あなたのボウル',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: phoningPink,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 8),
                    BowlAnimation(
                      selectedIngredients: _ingredients.entries
                          .where((e) => e.value)
                          .map((e) => e.key)
                          .toList(),
                      ingredientEmojis: _ingredientEmojis,
                    ),
                  ],
                ),
              ),

              _sectionTitle('味のバランス (0-5)'),
              _phoningCard(
                child: Column(
                  children: [
                    _buildPhoningSlider(
                      '豚骨・牛骨',
                      _tasteTonkotsuGyukotsu,
                      (v) => _tasteTonkotsuGyukotsu = v,
                      phoningBlue,
                    ),
                    _buildPhoningSlider(
                      'しびれ',
                      _tasteShibire,
                      (v) => _tasteShibire = v,
                      phoningPink,
                    ),
                    _buildPhoningSlider(
                      '薬膳感',
                      _tasteYakuzen,
                      (v) => _tasteYakuzen = v,
                      phoningYellow,
                    ),
                    _buildPhoningSlider(
                      'ゴマ感',
                      _tasteSesame,
                      (v) => _tasteSesame = v,
                      phoningBlue,
                    ),
                    _buildPhoningSlider(
                      'スープの脂',
                      _tasteFat,
                      (v) => _tasteFat = v,
                      phoningPink,
                    ),
                  ],
                ),
              ),

              _sectionTitle('メモ'),
              TextFormField(
                controller: _bestIngredientController,
                decoration: _phoningInputDecoration('一番おすすめの具材'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _commentController,
                decoration: _phoningInputDecoration('コメント・感想'),
                maxLines: 3,
              ),

              _sectionTitle('総合評価'),
              _phoningCard(
                color: phoningPink,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'スコア',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '${_overallRating.toInt()} / 10',
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: _overallRating,
                      min: 1,
                      max: 10,
                      divisions: 9,
                      label: _overallRating.toInt().toString(),
                      activeColor: Colors.white,
                      inactiveColor: Colors.white.withValues(alpha: 0.3),
                      onChanged: (v) => setState(() => _overallRating = v),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: _save,
                style: ElevatedButton.styleFrom(
                  backgroundColor: phoningBlack,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  widget.initialReview != null ? '更新して保存！' : '記録を保存！',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoningSlider(
    String label,
    double value,
    Function(double) onChanged,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
            ),
          ),
          Expanded(
            child: Slider(
              value: value,
              min: 0,
              max: 5,
              divisions: 5,
              label: value.toInt().toString(),
              activeColor: color,
              onChanged: (v) => setState(() => onChanged(v)),
            ),
          ),
          Text(
            value.toInt().toString(),
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final List<String> finalIngredients = _ingredients.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

      final review = Review()
        ..id =
            widget.initialReview?.id ??
            DateTime.now().millisecondsSinceEpoch.toString()
        ..shopName = _shopNameController.text
        ..soupType = _soupTypeController.text
        ..spicinessLevel = _spicinessLevel
        ..orderStyle = _orderStyle
        ..tasteTonkotsuGyukotsu = _tasteTonkotsuGyukotsu.toInt()
        ..tasteYakuzen = _tasteYakuzen.toInt()
        ..tasteSesame = _tasteSesame.toInt()
        ..tasteShibire = _tasteShibire.toInt()
        ..tasteSpiciness = 0
        ..tasteFat = _tasteFat.toInt()
        ..ingredients.addAll(finalIngredients)
        ..bestIngredient = _bestIngredientController.text
        ..comment = _commentController.text
        ..overallRating = _overallRating
        ..visitedAt = _visitedAt.toIso8601String();

      context.read<MalatangService>().addRecord(review);
      Navigator.pop(context);
    }
  }
}
