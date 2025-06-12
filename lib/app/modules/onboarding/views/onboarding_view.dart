import 'package:cryto_wallet/app/core/const/app_color.dart';
import 'package:cryto_wallet/app/routes/app_pages.dart';
import 'package:cryto_wallet/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Crypt",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: 64, color: AppColor.primaryWhite),
                      ),
                      TextSpan(
                        text: "X",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: 64, color: AppColor.primaryBlue),
                      ),
                    ],
                  ),
                ),

                Transform.translate(offset: const Offset(25, 0), child: Assets.onboarding.image()),
                Text(
                  'Jump start your\ncrypto portfolio',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColor.primaryWhite),
                ),
                Text(
                  'Take your investment portfolioto next level',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColor.primaryWhite),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryBlue,
                foregroundColor: AppColor.primaryWhite,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: Text("Get Started"),
            ),
          ),
        ],
      ),
    );
  }
}
