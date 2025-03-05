import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        leading: const AutoLeadingButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AS.sidePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildContactInfo(context),
              AS.hGap24,
              _buildContactForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Get in Touch',
          style: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        AS.hGap8,
        Text(
          'We\'re here to help! Send us a message and we\'ll respond as soon as possible.',
          style: context.textTheme.bodyLarge,
        ),
        AS.hGap16,
        _buildContactMethod(
          context,
          Icons.email_outlined,
          'Email',
          'support@bookswap.com',
        ),
        _buildContactMethod(
          context,
          Icons.access_time,
          'Response Time',
          'Within 24 hours',
        ),
        _buildContactMethod(
          context,
          Icons.location_on_outlined,
          'Location',
          'San Francisco, CA',
        ),
      ],
    );
  }

  Widget _buildContactMethod(
    BuildContext context,
    IconData icon,
    String title,
    String detail,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(icon, color: context.colors.primary),
          AS.wGap16,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                detail,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Send us a Message',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        AS.hGap16,
        TextField(
          decoration: InputDecoration(
            labelText: 'Subject',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AS.radiusM),
            ),
          ),
        ),
        AS.hGap16,
        TextField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Message',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AS.radiusM),
            ),
          ),
        ),
        AS.hGap24,
        AppButton(
          onPressed: () {
            // Implement send message logic
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Message sent successfully!'),
              ),
            );
          },
          label: 'Send Message',
          fullWidth: true,
          icon: Icons.send,
        ),
      ],
    );
  }
}
