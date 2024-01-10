import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/extensions/extensions.dart';
import '../resource/resource.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    required this.icon,
    super.key,
    this.color,
    this.backgroundColor,
    this.size = Sizes.s24,
    this.padding,
    this.onTap,
    this.isCircle = false,
  });

  final Object icon;
  final Color? color;
  final Color? backgroundColor;
  final double? size;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget;

    final iconColor = color ?? AppColors.black;
    if (icon is IconData) {
      iconWidget = FaIcon(
        icon as IconData,
        color: iconColor,
        size: size,
      );
    } else if (icon is SvgGenImage) {
      iconWidget = (icon as SvgGenImage).svg(
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      );
    } else if (icon is AssetGenImage) {
      iconWidget = (icon as AssetGenImage).image(
        width: size,
        height: size,
      );
    } else if (icon is Widget) {
      iconWidget = icon as Widget;
    }

    iconWidget = Padding(
      padding: padding ?? EdgeInsets.zero,
      child: iconWidget,
    );

    if (isCircle) {
      iconWidget = Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(child: iconWidget),
      );
    }

    if (onTap != null) {
      return iconWidget.clickable(onTap!);
    }

    return iconWidget;
  }
}

class AppIcons {
  const AppIcons._();

  static SvgGenImage logoText = Assets.icons.logoText;
  static const IconData arrowRight = FontAwesomeIcons.arrowRight;
  static SvgGenImage arrowLeft = Assets.icons.arrowLeftRegular;
  static const IconData close = FontAwesomeIcons.xmark;
  static SvgGenImage closeLight = Assets.icons.xmarkLight;
  static const IconData search = FontAwesomeIcons.magnifyingGlass;
  static SvgGenImage chat = Assets.icons.messageDotsSolid;
  static SvgGenImage eyeRegular = Assets.icons.eyeRegular;
  static SvgGenImage eyeOffRegular = Assets.icons.eyeSlashRegular;
  static const IconData home = FontAwesomeIcons.house;
  static SvgGenImage homeRegular = Assets.icons.houseRegular;
  static const IconData calendar = FontAwesomeIcons.solidCalendar;
  static const IconData calendarRegular = FontAwesomeIcons.calendar;
  static const IconData contacts = FontAwesomeIcons.solidAddressBook;
  static const IconData contactsRegular = FontAwesomeIcons.addressBook;
  static const IconData bell = FontAwesomeIcons.solidBell;
  static const IconData bellRegular = FontAwesomeIcons.bell;
  static const IconData user = FontAwesomeIcons.solidUser;
  static const IconData userRegular = FontAwesomeIcons.user;
  static const IconData menu = FontAwesomeIcons.bars;
  static SvgGenImage menuRegular = Assets.icons.barsRegular;
  static SvgGenImage send = Assets.icons.paperPlaneTopSolid;
  static const IconData reply = FontAwesomeIcons.reply;
  static SvgGenImage emoji = Assets.icons.faceSmileLight;
  static const IconData hearOutline = FontAwesomeIcons.heart;
  static const IconData media = FontAwesomeIcons.photoFilm;
  static const IconData file = FontAwesomeIcons.solidFile;
  static const IconData camera = FontAwesomeIcons.camera;
  static const IconData play = FontAwesomeIcons.play;
  static const IconData attachment = FontAwesomeIcons.paperclip;
  static SvgGenImage createConversation = Assets.icons.messagePlusRegular;
  static const IconData check = FontAwesomeIcons.check;
  static SvgGenImage checkLight = Assets.icons.checkLight;
  static SvgGenImage avatarFallback = Assets.icons.avatarFallback;
  static const IconData viewMore = FontAwesomeIcons.ellipsis;
  static SvgGenImage delete = Assets.icons.trashRegular;
  static SvgGenImage peopleLight = Assets.icons.usersLight;
  static SvgGenImage addMember = Assets.icons.userPlusRegular;
  static SvgGenImage programs = Assets.icons.programs;
}
