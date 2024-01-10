part of '../chat_detail_page.dart';

class _TypingIndicatorWidget extends StatelessWidget {
  const _TypingIndicatorWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      buildWhen: (previous, current) => previous.typingIndicator != current.typingIndicator,
      builder: (context, state) {
        if (state.typingIndicator == null) {
          return AppSpacing.emptyBox;
        }

        return Padding(
          padding: AppSpacing.edgeInsetsAll16.copyWith(top: 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const JumpingDots(
                color: AppColors.gray2,
                radius: 6,
                jumpHeight: 4.0,
              ),
              AppSpacing.gapW8,
              Text(
                context.l10n.chat_detail__user_is_typing(state.typingIndicator!.userFullName),
                style: AppTextStyles.bodySmall.gray,
              ),
            ],
          ),
        );
      },
    );
  }
}

class JumpingDots extends StatefulWidget {
  const JumpingDots({
    super.key,
    this.numberOfDots = 3,
    this.color,
    this.radius = 5,
    this.jumpHeight = 10,
  });

  final int numberOfDots;
  final Color? color;
  final double? radius;
  final double jumpHeight;

  @override
  State<JumpingDots> createState() => _JumpingDotsState();
}

const _jumpingDotsAnimationDurationMili = 200;

class _JumpingDotsState extends State<JumpingDots> with TickerProviderStateMixin {
  late List<AnimationController> _animationControllers;
  late final List<Animation<double>> _animations = [];

  @override
  void initState() {
    super.initState();
    _initAnimation();
  }

  @override
  void dispose() {
    for (final controller in _animationControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _initAnimation() {
    ///initialization of _animationControllers
    ///each _animationController will have same animation duration
    _animationControllers = List.generate(
      widget.numberOfDots,
      (index) {
        return AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: _jumpingDotsAnimationDurationMili),
        );
      },
    ).toList();

    ///initialization of _animations
    ///here end value is -20
    ///end value is amount of jump.
    ///and we want our dot to jump in upward direction
    for (int index = 0; index < widget.numberOfDots; index++) {
      _animations.add(
        Tween<double>(begin: 0, end: widget.jumpHeight).animate(_animationControllers[index]),
      );
    }
    for (int index = 0; index < widget.numberOfDots; index++) {
      _animationControllers[index].addStatusListener((status) {
        //On Complete
        if (status == AnimationStatus.completed) {
          //return of original postion
          _animationControllers[index].reverse();
          //if it is not last dot then start the animation of next dot.
          if (index != widget.numberOfDots - 1) {
            _animationControllers[index + 1].forward();
          }
        }
        //if last dot is back to its original postion then start animation of the first dot.
        // now this animation will be repeated infinitely
        if (index == widget.numberOfDots - 1 && status == AnimationStatus.dismissed) {
          _animationControllers.first.forward();
        }
      });
    }
    //trigger animtion of first dot to start the whole animation.
    _animationControllers.first.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(widget.numberOfDots, (index) {
          //AnimatedBuilder widget will rebuild it self when
          //_animationControllers[index] value changes.
          return AnimatedBuilder(
            animation: _animationControllers[index],
            builder: (context, child) {
              return Container(
                padding: const EdgeInsets.all(2.5),
                child: Transform.translate(
                  offset: Offset(0, _animations[index].value),
                  child: _DotWidget(
                    color: widget.color,
                    radius: widget.radius,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class _DotWidget extends StatelessWidget {
  const _DotWidget({this.color = Colors.black, this.radius = 5});

  final double? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius,
      width: radius,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
