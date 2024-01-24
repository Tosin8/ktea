// class _DiningScreenState extends State<DiningScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length:4 ,
//       child: Scaffold(
//         body: NestedScrollView(


//           headerSliverBuilder: 
//           (BuildContext context, 
//           bool innerBoxIsScrolled) {
//             return [

//                SliverAppBar(
//                 // title: Text('Modern Dining'),
//                 leading: IconButton(onPressed: (){}, 
//                 icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)),
                
//                 pinned: true, floating: true,
//                 expandedHeight: 200,
//                 flexibleSpace: const FlexibleSpaceBar(
//                   title: Text('Modern Dining'),
                
//                    centerTitle: true, 
//                    background: Image(image: AssetImage('assets/images/collections/1.jpg'), 
//                    fit: BoxFit.cover,),
//                 ),

//                 bottom: const TabBar(
//                   isScrollable: true,
//                   tabs: [
//                     Tab(
//                       child: Text('Most Popular'),
//                       ), Tab(
//                       child: Text('Furnitures'),
//                       ), Tab(
//                       child: Text('Dishware'),
//                       ), Tab(
//                       child: Text('Complementary'),
//                       ), 
//                       ]
//                       ),
//               )
//             ];
//           }, 
//           body: const TabBarView(children: [
//             Text('Hello'),Text('Hello'), Text('Hello'), Text('Hello'),  
//           ]),


//         ))); }}






//   class _DiningScreenState extends State<DiningScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController( 
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
// flexibleSpace: const Column(
//   mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           header(), 
//           TabBar(
//             isScrollable: true,
//             tabs:
//            [
//             Tab(
//               child: Text('Most Popular'),), 
//                Tab(
//               child: Text('Most Popular'),), 
//                Tab(
//               child: Text('Most Popular'),),  
//               Tab(
//               child: Text('Most Popular'),), 

//            ], 
//            )
//         ],
// )), 

//        body:  TabBarView(
//         children: [
//           Container(
//             color: Colors.blue,
//           ),  
//            Text('Hello'),
//             Text('Hello'), 
//             Text('Hello'),
//           ],)
//         // ListView(
//     //     children: const [
//     //       // Hero(
//     //       //   tag: 'dining',
//     //       //   child: 
//     //       header(),
//     //       SizedBox(height: 5), 

//     //      DiningCategoryTab() ,
//     // ] ) 
     
//      ) );
//   }
// }