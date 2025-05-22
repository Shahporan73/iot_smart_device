import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/widget/custom_button.dart';

class ShowColorSheetDialog extends StatefulWidget {
  const ShowColorSheetDialog({super.key});

  @override
  State<ShowColorSheetDialog> createState() => _ShowColorSheetDialogState();

  static Future<Set<int>?> show(BuildContext context) {
    return showDialog<Set<int>>(
      context: context,
      builder: (_) => const Dialog(
        child: SizedBox(
          width: 300,
          height: 400,
          child: ShowColorSheetDialog(),
        ),
      ),
    );
  }
}

class _ShowColorSheetDialogState extends State<ShowColorSheetDialog> {
  final List<ColorItem> colorItems = const [
    ColorItem(color: Colors.black, name: 'Black'),
    ColorItem(color: Colors.red, name: 'Red'),
    ColorItem(color: Colors.blue, name: 'Blue'),
    ColorItem(color: Colors.yellow, name: 'Yellow'),
    ColorItem(color: Colors.green, name: 'Green'),
    ColorItem(color: Colors.blue, name: 'Blue'),
    ColorItem(color: Colors.yellow, name: 'Yellow'),
    ColorItem(color: Colors.black, name: 'Black'),
    ColorItem(color: Colors.blue, name: 'Blue'),
    ColorItem(color: Colors.yellow, name: 'Yellow'),
    ColorItem(color: Colors.red, name: 'Red'),
    ColorItem(color: Colors.yellow, name: 'Yellow'),
  ];

  late final ScrollController _scrollController;
  bool _isAnimating = false;
  ScrollDirection? _lastDirection;

  final Set<int> _selectedIndices = {};

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _animateByHeight(double viewportHeight) {
    if (_isAnimating || _lastDirection == null) return;

    _isAnimating = true;

    final double currentOffset = _scrollController.offset;
    double targetOffset;

    if (_lastDirection == ScrollDirection.forward) {
      targetOffset = (currentOffset - viewportHeight).clamp(0.0, _scrollController.position.maxScrollExtent);
    } else if (_lastDirection == ScrollDirection.reverse) {
      targetOffset = (currentOffset + viewportHeight).clamp(0.0, _scrollController.position.maxScrollExtent);
    } else {
      _isAnimating = false;
      return;
    }

    _scrollController
        .animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    )
        .whenComplete(() => _isAnimating = false);
  }

  void _onItemTapped(int index) {
    setState(() {
      if (_selectedIndices.contains(index)) {
        _selectedIndices.remove(index);
      } else {
        _selectedIndices.add(index);
      }
    });
  }

  void _onDone() {
    Navigator.of(context).pop(_selectedIndices);
  }

  @override
  Widget build(BuildContext context) {
    final viewportHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is UserScrollNotification) {
                _lastDirection = notification.direction;
              }

              if (notification is ScrollEndNotification) {
                _animateByHeight(viewportHeight);
              }
              return false;
            },
            child: ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: colorItems.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final item = colorItems[index];
                final isSelected = _selectedIndices.contains(index);

                return ListTile(
                  onTap: () => _onItemTapped(index),
                  leading: CircleAvatar(
                    backgroundColor: item.color,
                    radius: 10,
                  ),
                  title: Text(
                    item.name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  trailing: isSelected
                      ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.blue,
                      size: 20,
                    ),
                  )
                      : null,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  dense: true,
                );
              },
            ),
          ),
        ),
        SizedBox(height: 5,),
        CustomButton(title: 'Ok',
            borderRadius: 18,
            padding_vertical: 5,
            onTap: (){
           Get.rawSnackbar(message: 'Selected Colors: ${_selectedIndices.map((index) => colorItems[index].name).join(', ')}');
          Navigator.of(context).pop();
            }),
      ],
    );
  }
}

class ColorItem {
  final Color color;
  final String name;

  const ColorItem({required this.color, required this.name});
}
