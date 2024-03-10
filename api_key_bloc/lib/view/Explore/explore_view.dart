import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:api_key_bloc/helper/constant/spece.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Platzi.pageColor,
      appBar: AppBar(
        title: const Text(
          "Discover Products",
          style: TextStyle(color: Platzi.pageColor, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Platzi.helpColor,
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: TextFormField(
                        onChanged: (searchTerm) {},
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Platzi.helpColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Platzi.helpColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: "Search for Products",
                          hintStyle: const TextStyle(
                            color: Platzi.oceanColor,
                            fontFamily: 'Inter',
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: Platzi.pageColor,
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.search_sharp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    size12,
                    const Divider(
                      height: 30,
                      thickness: 1,
                      color: Platzi.oceanColor,
                    )
                    // // Use BlocBuilder to conditionally display news or messages based on state
                    // BlocBuilder<NewsBloc, NewsState>(
                    //   builder: (context, state) {
                    //     String searchTerm = ''; // Define searchTerm here
        
                    //     if (state is SuccessNewsState) {
                    //       if (state.news.isEmpty) {
                    //         // Display a message when there are no search results
                    //         if (searchTerm.isEmpty) {
                    //           return const Center(
                    //             child: Text(
                    //               'Enter a search term to find news.',
                    //               style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 16,
                    //               ),
                    //             ),
                    //           );
                    //         } else {
                    //           return const Center(
                    //             child: Text(
                    //               'No search results found.',
                    //               style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 16,
                    //               ),
                    //             ),
                    //           );
                    //         }
                    //       } else {
                    //         // Display the list of news items
                    //         return Column(
                    //           children: [
                    //             ...state.news.map(
                    //               (e) => NewsContainer(
                    //                 news: e,
                    //               ),
                    //             ).toList(),
                    //           ],
                    //         );
                    //       }
                    //     } else {
                    //       // Display an error message if an error occurs
                    //       return const Text("Error");
                    //     }
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
