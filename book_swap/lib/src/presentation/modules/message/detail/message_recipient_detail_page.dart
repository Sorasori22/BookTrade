import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/message/providers/message_delete_chat_provider.dart';
import 'package:book_swap/src/features/profile/profile_schema.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/components/effective_image.dart';
import 'package:book_swap/src/presentation/widgets/feedback/async_value_widget.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

@RoutePage()
class MessageRecipientDetailPage extends ConsumerWidget {
  const MessageRecipientDetailPage({
    super.key,
    @PathParam('recipientId') required this.recipientId,
  });

  final String recipientId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ProfileId.fromValue(recipientId);
    final dataAsync = ref.watch(profileDetailProvider(id));

    return Scaffold(
      body: dataAsync.onData(
        loadingWidget: () => Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        (data) {
          return Theme(
            data: Theme.of(context).copyWith(
              appBarTheme: AppBarTheme(
                backgroundColor: Theme.of(context).colorScheme.surface,
              ),
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  leading: LayoutBuilder(
                    builder: (context, constraints) {
                      final settings =
                          context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
                      final deltaExtent = settings!.maxExtent - settings.minExtent;
                      final t = (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                          .clamp(0.0, 1.0);

                      final colorScheme = Theme.of(context).colorScheme;
                      final iconColor = Color.lerp(Colors.white, colorScheme.onSurface, t);

                      return IconButton(
                        onPressed: () => context.router.back(),
                        icon: Icon(Icons.arrow_back, color: iconColor),
                      );
                    },
                  ),
                  actions: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final settings =
                            context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
                        final deltaExtent = settings!.maxExtent - settings.minExtent;
                        final t =
                            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                                .clamp(0.0, 1.0);

                        final colorScheme = Theme.of(context).colorScheme;
                        final iconColor = Color.lerp(Colors.white, colorScheme.onSurface, t);

                        return Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.message, color: iconColor),
                              onPressed: () {
                                context.navigateTo(MessageRoomRoute(recipientId: recipientId));
                              },
                            ),
                            PopupMenuButton(
                              icon: Icon(Icons.more_vert, color: iconColor),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: const Text('Delete chat'),
                                  onTap: () => _showDeleteChatDialog(context, ref, id),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                  expandedHeight: 280,
                  pinned: true,
                  stretch: true,
                  flexibleSpace: LayoutBuilder(
                    builder: (context, constraints) {
                      final settings =
                          context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
                      final deltaExtent = settings!.maxExtent - settings.minExtent;
                      final t = (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                          .clamp(0.0, 1.0);

                      final colorScheme = Theme.of(context).colorScheme;
                      final textColor = Color.lerp(Colors.white, colorScheme.onSurface, t);

                      return FlexibleSpaceBar(
                        expandedTitleScale: 1.5,
                        titlePadding: const EdgeInsets.symmetric(
                          horizontal: 56,
                          vertical: 16,
                        ),
                        title: Text(
                          data.displayName,
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        stretchModes: const [
                          StretchMode.zoomBackground,
                          StretchMode.blurBackground,
                        ],
                        background: Stack(
                          fit: StackFit.expand,
                          children: [
                            EffectiveImage(
                              imageObject: data.avatar,
                              fit: BoxFit.cover,
                            ),
                            const DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0, 0.8),
                                  end: Alignment(0, 0),
                                  colors: <Color>[
                                    Color(0x90000000),
                                    Color(0x00000000),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (data.bio != null && data.bio!.isNotEmpty) ...[
                          const Text(
                            'About',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            data.bio!,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 24),
                        ],
                        const Text(
                          'Contact Information',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildInfoTile(
                          context,
                          icon: Icons.email_outlined,
                          title: 'Email',
                          value: data.email,
                        ),
                        if (data.phoneNumber != null)
                          _buildInfoTile(
                            context,
                            icon: Icons.phone_outlined,
                            title: 'Phone',
                            value: data.phoneNumber!,
                          ),
                        if (data.location != null)
                          _buildInfoTile(
                            context,
                            icon: Icons.location_on_outlined,
                            title: 'Location',
                            value: data.location!,
                          ),
                        if (data.address != null)
                          _buildInfoTile(
                            context,
                            icon: Icons.home_outlined,
                            title: 'Address',
                            value: data.address!,
                          ),
                        const SizedBox(height: 24),
                        const Text(
                          'Additional Information',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        if (data.age != null)
                          _buildInfoTile(
                            context,
                            icon: Icons.cake_outlined,
                            title: 'Age',
                            value: '${data.age} years old',
                          ),
                        _buildInfoTile(
                          context,
                          icon: Icons.person_outline,
                          title: 'Username',
                          value: '@${data.username}',
                        ),
                        _buildInfoTile(
                          context,
                          icon: Icons.calendar_today_outlined,
                          title: 'Member Since',
                          value: _formatDate(data.createdAt),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 24,
            child: Icon(
              icon,
              size: 24,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  Future<void> _showDeleteChatDialog(
    BuildContext context,
    WidgetRef ref,
    ProfileId id,
  ) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete chat'),
        content: const Text('Are you sure you want to delete this chat?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            child: const Text('Delete'),
            onPressed: () async {
              final closeLoading = BotToast.showLoading();
              final result = await ref.read(messageDeleteChatProvider(id).notifier).call();
              closeLoading();
              if (result.isSuccess) {
                BotToast.showText(text: 'Chat deleted');
                if (context.mounted) {
                  context.navigateTo(MessageRoomRoute(recipientId: recipientId));
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
