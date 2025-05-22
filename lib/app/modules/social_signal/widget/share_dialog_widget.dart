import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iot_smart_device_app/resource/widget/RoundTextField.dart';
import 'package:iot_smart_device_app/resource/widget/custom_text.dart';

import '../../../../resource/app_images/app_images.dart';

class ShareDialog extends StatelessWidget {
  final String shareLink;

  const ShareDialog({Key? key, required this.shareLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconSize = Get.height / 24;

    void copyToClipboard() {
      Clipboard.setData(ClipboardData(text: shareLink));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Link copied to clipboard')),
      );
    }

    final List<Map<String, dynamic>> icons = [
      {
        'asset': AppImages.googleIcon,
        'tooltip': 'Google',
        'onTap': () {
          /*TODO*/
        },
      },
      {
        'asset': AppImages.facebookIcon,
        'tooltip': 'Facebook',
        'onTap': () {
          /*TODO*/
        },
      },
      {
        'asset': AppImages.messengerIcon,
        'tooltip': 'Messenger',
        'onTap': () {
          /*TODO*/
        },
      },
      {
        'asset': AppImages.instagramIcon,
        'tooltip': 'Instagram',
        'onTap': () {
          /*TODO*/
        },
      },
      {
        'asset': AppImages.whatsappIcon,
        'tooltip': 'WhatsApp',
        'onTap': () {
          /*TODO*/
        },
      },
      {
        'asset': AppImages.telegramIcon,
        'tooltip': 'Telegram',
        'onTap': () {
          /*TODO*/
        },
      },
    ];

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Colors.white,
      child: SizedBox(
        width: Get.width / 1.1,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(title: 'Invite link'),
                  InkWell(
                    child: const Icon(Icons.close),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const Divider(height: 20),
              CustomText(title: 'Invite this link via'),
              const SizedBox(height: 12),
              // Icons scroll row
              SizedBox(
                height: iconSize + 10,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: icons.map((iconData) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Tooltip(
                          message: iconData['tooltip'],
                          child: InkWell(
                            onTap: iconData['onTap'],
                            child: Image.asset(
                              iconData['asset'],
                              width: iconSize,
                              height: iconSize,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Link + copy button row
              Row(
                children: [
                  Expanded(
                    child: RoundTextField(
                      controller: TextEditingController(text: shareLink),
                        hint: '',
                        style: const TextStyle(fontSize: 14),
                        filled: true,
                        readOnly: true,
                        isBorder: true,
                        fillColor: Colors.grey.shade200,
                        borderWidth: 0,
                        height: Get.height / 20,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: copyToClipboard,
                        ),
                    ),
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