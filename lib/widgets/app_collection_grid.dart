import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/app_model.dart';
import '../utils/constants.dart';
import '../utils/responsive.dart';
import 'lazy_image.dart';

class AppCollectionGrid extends StatelessWidget {
  const AppCollectionGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final apps = AppConstants.featuredApps;
    final isMobile = Responsive.isMobile(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: 60,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'App Collections & Featured Projects',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ).animate().fadeIn().slideX(begin: -0.2),
          const SizedBox(height: 8),
          Text(
            '${apps.length} production-ready applications spanning Android, Web, PWA & Flutter',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
            ),
          ).animate().fadeIn(delay: 200.ms),
          const SizedBox(height: 40),

          // Responsive Staggered Grid
          MasonryGridView.count(
            crossAxisCount: isMobile ? 1 : (Responsive.isTablet(context) ? 2 : 4),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: apps.length,
            itemBuilder: (context, index) {
              return _AppCard(app: apps[index], index: index);
            },
          ),
        ],
      ),
    );
  }
}

class _AppCard extends StatelessWidget {
  final AppModel app;
  final int index;

  const _AppCard({required this.app, required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => _launchUrl(app.githubUrl),
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail / Icon
            AspectRatio(
              aspectRatio: 16 / 10,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  if (app.thumbnailUrl.isNotEmpty)
                    LazyImage(
                      imageUrl: app.thumbnailUrl,
                      fit: BoxFit.cover,
                    )
                  else
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppConstants.primaryColor.withOpacity(0.15),
                            AppConstants.primaryColor.withOpacity(0.05),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          app.icon,
                          style: const TextStyle(fontSize: 48),
                        ),
                      ),
                    ),
                  // Status Badge
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: _getStatusColor(app.status),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        app.status,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(app.icon, style: const TextStyle(fontSize: 20)),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          app.title,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    app.description,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  // Tech Tags
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: app.techTags.take(3).map((tag) => _TechChip(tag: tag)).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ).animate()
      .fadeIn(duration: 600.ms, delay: Duration(milliseconds: 100 * index))
      .slideY(begin: 0.2, end: 0);
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'new': return Colors.green;
      case 'premium': return Colors.amber;
      case 'live': return Colors.blue;
      default: return Colors.grey;
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

class _TechChip extends StatelessWidget {
  final String tag;
  const _TechChip({required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: AppConstants.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppConstants.primaryColor.withOpacity(0.3)),
      ),
      child: Text(
        tag,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: AppConstants.primaryColor,
        ),
      ),
    );
  }
} 
