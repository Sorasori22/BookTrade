import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
        leading: const AutoLeadingButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AS.sidePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(context),
              AS.hGap16,
              _buildSectionTitle(context, 'Popular Topics'),
              _buildHelpItem(
                context,
                'How to list a book?',
                'Learn the process of listing your books for trade.',
              ),
              _buildHelpItem(
                context,
                'Trading Process',
                'Understanding how book trading works.',
              ),
              _buildHelpItem(
                context,
                'Account Settings',
                'Managing your account preferences and security.',
              ),
              AS.hGap16,
              _buildSectionTitle(context, 'FAQs'),
              _buildHelpItem(
                context,
                'Book Condition Guidelines',
                'Learn about book condition ratings.',
              ),
              _buildHelpItem(
                context,
                'Shipping & Delivery',
                'Information about shipping and delivery options.',
              ),
              _buildHelpItem(
                context,
                'Safety & Trust',
                'Tips for safe trading and trust building.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search help articles...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AS.radiusL),
        ),
        filled: true,
        fillColor: context.colors.surfaceContainerHighest.withOpacity(0.3),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 12),
      child: Text(
        title,
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildHelpItem(BuildContext context, String title, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(
          description,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colors.onSurfaceVariant,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Navigate to specific help article
        },
      ),
    );
  }
}
