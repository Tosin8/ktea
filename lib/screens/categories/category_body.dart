// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ktea/screens/categories/dining/dining_body.dart';


// class Category_Body extends StatefulWidget {
//   const Category_Body({super.key});

//   @override
//   State<Category_Body> createState() => _Category_BodyState();
// }

// class _Category_BodyState extends State<Category_Body> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10
//       ),
//         child: ListView(
//           children:   [
//             const SizedBox(height: 10), 
//           const Text('Collection',
//            style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),), 
//           // HomeDecoration(),
//           // SizedBox(height: 20),
//           // Sofa(),
//           // SizedBox(height: 20),
//           // TableP(),
//           // SizedBox(height: 20),
//           // Cabinet(),
//           // SizedBox(height: 20),
//            //Light(),
//            const SizedBox(height: 10), 
//            CollectionsWidget(
//             imagebkg: 'assets/images/collections/1.jpg', 
//            maintitle: 'Modern Dining', 
//            subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
//             mainTime: 500, 
//             delayTime: 0, 
//             press: () { 
//               Get.to(const DiningScreen()); 
//              }, 
//              //herotag: 'dining',
//             ),
//             const SizedBox(height: 10), 
//             CollectionsWidget(imagebkg: 'assets/images/collections/2.jpg', 
//            maintitle: 'Classic Furnitures', 
//            subtitle: 'Best worth of it at \nthe peak of it\'s of excellence.',
//             mainTime: 500, 
//             delayTime: 500, press: () {  },
//             // herotag: '',
//             ), 
//             const SizedBox(height: 10), 
//             CollectionsWidget(imagebkg: 'assets/images/collections/3.jpg', 
//            maintitle: 'Modern Kitchen', 
//            subtitle: 'Transform your kitchen,\ninto a Chef\'s dream.',
//             mainTime: 500, 
//             delayTime: 1000, press: () {  }, 
//             //herotag: '',
//             ), 
//             const SizedBox(height: 10), 
//             CollectionsWidget(imagebkg: 'assets/images/collections/4.jpg', 
//            maintitle: 'Elegant Lights', 
//            subtitle: 'Illuminate your home,\nwith stunning lighting.',
//             mainTime: 500, 
//             delayTime: 1500, press: () {  }, 
//             //herotag: '',
//             ), 
//              const SizedBox(height: 10), 
//             CollectionsWidget(imagebkg: 'assets/images/collections/5.jpg', 
//            maintitle: 'Cabinet', 
//            subtitle: 'Custom Cabinets,\nbuilt for both form and function.',
//             mainTime: 500, 
//             delayTime: 2000, press: () {  }, 
//             //herotag: '',
//             ), 
//         ]));
//   }
// }

// class CollectionsWidget extends StatelessWidget {
//   const CollectionsWidget({
//     super.key, required this.imagebkg, required this.maintitle, required this.subtitle, required this.mainTime, required this.delayTime, required this.press, //required this.herotag,
//   });

// final String imagebkg;
// //herotag; 
// final String maintitle; 
// final String subtitle; 
// final int mainTime; 
// final int delayTime; 
// final GestureTapCallback press; 

//   @override
//   Widget build(BuildContext context) {
//     return FadeInRight(
//       duration: Duration(milliseconds: mainTime), 
//       delay: Duration(milliseconds: delayTime),
//       child: GestureDetector(
//         onTap: () {
//            press; 
//         },
//         child:  Container(
//            height: 250,
//            width: 300,
//            decoration:  BoxDecoration(
//              borderRadius: BorderRadius.circular(10),
//              image:  DecorationImage(
//                image: AssetImage(imagebkg),
//                fit: BoxFit.cover,)
//            ),
//            child:  Container(
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(10),
//                  gradient: LinearGradient(
//                    colors: [
//                      Colors.black.withOpacity(0.5),  
//                      Colors.black.withOpacity(0.2), 
                     
                     
//                      ], begin: Alignment.bottomRight )
//                ),
//                child: Padding(
//                  padding: const EdgeInsets.all(10),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.end,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      Text(maintitle, 
//                      style: const TextStyle(
//                        color: Colors.white, 
//                      fontSize: 26,
//                       fontWeight: FontWeight.w400),
//                       ),
//                       const SizedBox(height: 12), 
//                       Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Text(subtitle, 
//                          style: const TextStyle(
//                            color: Colors.white, 
//                            fontSize: 15, fontWeight: FontWeight.w400),
//                            ),
//                            GestureDetector(
//                             onTap: press,
//                             child: const Icon(Icons.arrow_forward_ios, color: Colors.white,))
//                        ],
//                       ), const SizedBox(height: 20,),  
                 
//                    ],
//                  ),
//                ),
//              ),
//            ),
//           ),
        
//       );
    
//   }
// }


// // Creating Parallax Scrolling. 

// // class ParallaxFlowDelegate extends FlowDelegate {
// //   ParallaxFlowDelegate({
// //     required this.scrollable,
// //     required this.listItemContext,
// //     required this.backgroundImageKey,
// //   }) : super(repaint: scrollable.position);


// //   final ScrollableState scrollable;
// //   final BuildContext listItemContext;
// //   final GlobalKey backgroundImageKey;

// //   @override
// //   BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
// //     return BoxConstraints.tightFor(
// //       width: constraints.maxWidth,
// //     );
// //   }

// //   @override
// //   void paintChildren(FlowPaintingContext context) {
// //     // Calculate the position of this list item within the viewport.
// //     final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
// //     final listItemBox = listItemContext.findRenderObject() as RenderBox;
// //     final listItemOffset = listItemBox.localToGlobal(
// //         listItemBox.size.centerLeft(Offset.zero),
// //         ancestor: scrollableBox);

// //     // Determine the percent position of this list item within the
// //     // scrollable area.
// //     final viewportDimension = scrollable.position.viewportDimension;
// //     final scrollFraction =
// //         (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

// //     // Calculate the vertical alignment of the background
// //     // based on the scroll percent.
// //     final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

// //     // Convert the background alignment into a pixel offset for
// //     // painting purposes.
// //     final backgroundSize =
// //         (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
// //             .size;
// //     final listItemSize = context.size;
// //     final childRect =
// //         verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

// //     // Paint the background.
// //     context.paintChild(
// //       0,
// //       transform:
// //           Transform.translate(offset: Offset(0.0, childRect.top)).transform,
// //     );
// //   }

// //   @override
// //   bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
// //     return scrollable != oldDelegate.scrollable ||
// //         listItemContext != oldDelegate.listItemContext ||
// //         backgroundImageKey != oldDelegate.backgroundImageKey;
// //   }
// // }

// // class Parallax extends SingleChildRenderObjectWidget {
// //   const Parallax({
// //     super.key,
// //     required Widget background,
// //   }) : super(child: background);

// //   @override
// //   RenderObject createRenderObject(BuildContext context) {
// //     return RenderParallax(scrollable: Scrollable.of(context));
// //   }

// //   @override
// //   void updateRenderObject(
// //       BuildContext context, covariant RenderParallax renderObject) {
// //     renderObject.scrollable = Scrollable.of(context);
// //   }
// // }

// // class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

// // class RenderParallax extends RenderBox
// //     with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
// //   RenderParallax({
// //     required ScrollableState scrollable,
// //   }) : _scrollable = scrollable;

// //   ScrollableState _scrollable;

// //   ScrollableState get scrollable => _scrollable;

// //   set scrollable(ScrollableState value) {
// //     if (value != _scrollable) {
// //       if (attached) {
// //         _scrollable.position.removeListener(markNeedsLayout);
// //       }
// //       _scrollable = value;
// //       if (attached) {
// //         _scrollable.position.addListener(markNeedsLayout);
// //       }
// //     }
// //   }

// //   @override
// //   void attach(covariant PipelineOwner owner) {
// //     super.attach(owner);
// //     _scrollable.position.addListener(markNeedsLayout);
// //   }

// //   @override
// //   void detach() {
// //     _scrollable.position.removeListener(markNeedsLayout);
// //     super.detach();
// //   }

// //   @override
// //   void setupParentData(covariant RenderObject child) {
// //     if (child.parentData is! ParallaxParentData) {
// //       child.parentData = ParallaxParentData();
// //     }
// //   }

// //   @override
// //   void performLayout() {
// //     size = constraints.biggest;

// //     // Force the background to take up all available width
// //     // and then scale its height based on the image's aspect ratio.
// //     final background = child!;
// //     final backgroundImageConstraints =
// //         BoxConstraints.tightFor(width: size.width);
// //     background.layout(backgroundImageConstraints, parentUsesSize: true);

// //     // Set the background's local offset, which is zero.
// //     (background.parentData as ParallaxParentData).offset = Offset.zero;
// //   }

// //   @override
// //   void paint(PaintingContext context, Offset offset) {
// //     // Get the size of the scrollable area.
// //     final viewportDimension = scrollable.position.viewportDimension;

// //     // Calculate the global position of this list item.
// //     final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
// //     final backgroundOffset =
// //         localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);

// //     // Determine the percent position of this list item within the
// //     // scrollable area.
// //     final scrollFraction =
// //         (backgroundOffset.dy / viewportDimension).clamp(0.0, 1.0);

// //     // Calculate the vertical alignment of the background
// //     // based on the scroll percent.
// //     final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

// //     // Convert the background alignment into a pixel offset for
// //     // painting purposes.
// //     final background = child!;
// //     final backgroundSize = background.size;
// //     final listItemSize = size;
// //     final childRect =
// //         verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

// //     // Paint the background.
// //     context.paintChild(
// //         background,
// //         (background.parentData as ParallaxParentData).offset +
// //             offset +
// //             Offset(0.0, childRect.top));
// //   }
// // }
