## tbib_smooth_page_indicator

### Usage
---
`TBIBSmoothPageIndicator` uses the PageController's scroll offset to animate the active dot.

```dart
TBIBSmoothPageIndicator(
	controller: controller,  // PageController
	count:  6,
	effect:  WormEffect(),  // your preferred effect
	onDotClicked: (index){
	    
	}
)

```

### Usage without a PageController
---
Unlike `TBIBSmoothPageIndicator `, `AnimatedTBIBSmoothIndicator` is self animated and all it needs is the active index.
```dart
AnimatedTBIBSmoothIndicator(
	activeIndex: yourActiveIndex,
	count:  6,
	effect:  WormEffect(),
)

```

### Customization

---

You can customize direction, width, height, radius, spacing, paint style, color and more...

```dart
TBIBSmoothPageIndicator(
	controller: controller,
	count:  6,
	axisDirection: Axis.vertical,
	effect:  SlideEffect(
		spacing:  8.0,
		radius:  4.0,
		dotWidth:  24.0,
		dotHeight:  16.0,
		paintStyle:  PaintingStyle.stroke,
		strokeWidth:  1.5,
		dotColor:  Colors.grey,
		activeDotColor:  Colors.indigo
	),
)

```

### RTL Support
---

Smooth page indicator will inherit directionality from its ancestors unless you specify a directionality by passing it directly to the widget or wrapping the Indicator with a Directionality widget from the flutter package.

```dart
TBIBSmoothPageIndicator(
	controller: controller,  // PageController
	count:  6,

	// forcing the indicator to use a specific direction
	textDirection: TextDirection.rtl
	effect:  WormEffect(),
);

