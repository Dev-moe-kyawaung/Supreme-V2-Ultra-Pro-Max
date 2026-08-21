import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/constants.dart';
import '../utils/responsive.dart';
import 'lazy_image.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final provider = context.watch<PortfolioProvider>();

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 60 : 100,
      ),
      child: isMobile
          ? _buildMobileLayout(context)
          : _buildDesktopLayout(context),
    ).animate().fadeIn(duration: 800.ms).slideY(begin: 0.2, end: 0);
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: _buildContent(context)),
        const SizedBox(width: 60),
        _buildProfileImage(),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _buildProfileImage(),
        const SizedBox(height: 40),
        _buildContent(context),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name
        Text(
          AppConstants.nameMm,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurface.withOpacity(0.7),
          ),
        ).animate().fadeIn().slideX(begin: -0.2),
        const SizedBox(height: 8),

        // Typing Animation
        DefaultTextStyle(
          style: theme.textTheme.displayLarge?.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: Responsive.isMobile(context) ? 36 : 52,
            color: AppConstants.primaryColor,
            height: 1.1,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(milliseconds: 2000),
            animatedTexts: [
              TypewriterAnimatedText(
                AppConstants.titles[0],
                speed: const Duration(milliseconds: 80),
              ),
              TypewriterAnimatedText(
                AppConstants.titles[1],
                speed: const Duration(milliseconds: 80),
              ),
              TypewriterAnimatedText(
                AppConstants.titles[2],
                speed: const Duration(milliseconds: 80),
              ),
            ],
          ),
        ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.3),
        const SizedBox(height: 24),

        // Location & Languages
        Text(
          '${AppConstants.location}  •  ${AppConstants.languages}',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface.withOpacity(0.6),
            height: 1.6,
          ),
        ).animate().fadeIn(delay: 600.ms),
        const SizedBox(height: 40),

        // CTA Buttons
        Row(
          children: [
            _buildCtaButton(
              context,
              icon: Icons.download_rounded,
              label: 'Download Resume',
              onPressed: () => _launchUrl(AppConstants.resumeUrl),
              isPrimary: true,
            ),
            const SizedBox(width: 16),
            _buildCtaButton(
              context,
              icon: Icons.mail_outline_rounded,
              label: 'Contact Me',
              onPressed: () => _launchUrl('mailto:${AppConstants.email}'),
              isPrimary: false,
            ),
          ],
        ).animate().fadeIn(delay: 900.ms).slideY(begin: 0.3),
      ],
    );
  }

  Widget _buildCtaButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
    required bool isPrimary,
  }) {
    final theme = Theme.of(context);
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 20),
      label: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        backgroundColor: isPrimary ? AppConstants.primaryColor : Colors.transparent,
        foregroundColor: isPrimary ? Colors.white : theme.colorScheme.onSurface,
        side: isPrimary ? null : BorderSide(color: theme.dividerColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: isPrimary ? 4 : 0,
      ),
    );
  }

  Widget _buildProfileImage() {
    return ClipOval(
      child: LazyImage(
        imageUrl: AppConstants.profileImageUrl,
        width: 280,
        height: 280,
        fit: BoxFit.cover,
      ).animate().fadeIn(duration: 1000.ms).scale(begin: const Offset(0.9, 0.9)),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
