import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/src/modal_page/wolt_modal_sheet_base_page.dart';

class WoltModalSheetPage extends WoltModalSheetBasePage {
  /// A [Widget] that represents the main content displayed in the page.
  /// This is a shortcut for providing a list of Sliver widgets with only one Sliver widget.
  final Widget child;

  /// Creates a [WoltModalSheetPage] with a single child main content.
  WoltModalSheetPage({
    required this.child,
    Widget? pageTitle,
    double? navBarHeight,
    Widget? topBarTitle,
    Widget? heroImage,
    double? heroImageHeight,
    Color? backgroundColor,
    bool? hasSabGradient,
    Color? sabGradientColor,
    bool? enableDrag,
    bool forceMaxHeight = false,
    bool? isTopBarLayerAlwaysVisible,
    bool? hasTopBarLayer,
    ScrollController? scrollController,
    Widget? stickyActionBar,
    Widget? leadingNavBarWidget,
    Widget? trailingNavBarWidget,
    Widget? topBar,
  }) : super(
          mainContent: [SliverToBoxAdapter(child: child)],
          pageTitle: pageTitle,
          navBarHeight: navBarHeight,
          topBarTitle: topBarTitle,
          heroImage: heroImage,
          heroImageHeight: heroImageHeight,
          backgroundColor: backgroundColor,
          hasSabGradient: hasSabGradient,
          enableDrag: enableDrag,
          sabGradientColor: sabGradientColor,
          forceMaxHeight: forceMaxHeight,
          isTopBarLayerAlwaysVisible: isTopBarLayerAlwaysVisible,
          hasTopBarLayer: hasTopBarLayer,
          scrollController: scrollController,
          stickyActionBar: stickyActionBar,
          leadingNavBarWidget: leadingNavBarWidget,
          trailingNavBarWidget: trailingNavBarWidget,
          topBar: topBar,
        );

  WoltModalSheetPage copyWith({
    Widget? pageTitle,
    double? navBarHeight,
    Widget? sliverList,
    Widget? child,
    Widget? topBarTitle,
    Widget? heroImage,
    double? heroImageHeight,
    Color? backgroundColor,
    bool? hasSabGradient,
    Color? sabGradientColor,
    bool? enableDrag,
    bool? forceMaxHeight,
    bool? isTopBarLayerAlwaysVisible,
    bool? hasTopBarLayer,
    ScrollController? scrollController,
    Widget? stickyActionBar,
    Widget? leadingNavBarWidget,
    Widget? trailingNavBarWidget,
    Widget? topBar,
  }) {
    return WoltModalSheetPage(
      pageTitle: pageTitle ?? this.pageTitle,
      navBarHeight: navBarHeight ?? this.navBarHeight,
      child: child ?? this.child,
      topBarTitle: topBarTitle ?? this.topBarTitle,
      heroImage: heroImage ?? this.heroImage,
      heroImageHeight: heroImageHeight ?? this.heroImageHeight,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      hasSabGradient: hasSabGradient ?? this.hasSabGradient,
      sabGradientColor: sabGradientColor ?? this.sabGradientColor,
      enableDrag: enableDrag ?? this.enableDrag,
      forceMaxHeight: forceMaxHeight ?? this.forceMaxHeight,
      isTopBarLayerAlwaysVisible:
          isTopBarLayerAlwaysVisible ?? this.isTopBarLayerAlwaysVisible,
      hasTopBarLayer: hasTopBarLayer ?? this.hasTopBarLayer,
      scrollController: scrollController ?? this.scrollController,
      stickyActionBar: stickyActionBar ?? this.stickyActionBar,
      leadingNavBarWidget: leadingNavBarWidget ?? this.leadingNavBarWidget,
      trailingNavBarWidget: trailingNavBarWidget ?? this.trailingNavBarWidget,
      topBar: topBar ?? this.topBar,
    );
  }
}
