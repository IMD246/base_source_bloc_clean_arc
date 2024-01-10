part of '../create_conversation_page.dart';

class _NewChatOptionTile extends StatelessWidget {
  const _NewChatOptionTile({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final Object icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: double.infinity,
        child: AppIcon(icon: icon, size: Sizes.s20),
      ),
      title: Text(label, style: AppTextStyles.bodyLarge.bold),
      horizontalTitleGap: Sizes.s4,
      onTap: onTap,
    );
  }
}
