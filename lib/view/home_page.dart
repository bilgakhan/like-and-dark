import 'package:ao/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);
    return Scaffold(
      backgroundColor: provider.isDark
          ? const Color(0xff222222)
          : const Color.fromARGB(255, 220, 211, 211),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width * 0.8,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/400/200',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      provider.like();
                    },
                    child: provider.isClicked
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 40,
                          )
                        : Icon(
                            Icons.favorite_outline,
                            color:
                                provider.isDark ? Colors.white : Colors.black,
                            size: 40,
                          ),
                  ),
                  Text(
                    provider.checkLike() ? " " : provider.countLikes.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      color: provider.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: provider.isDark ? Colors.green[400] : Colors.red,
        onPressed: () {
          provider.appereance();
        },
        child: provider.isDark
            ? const Icon(Icons.light_mode_outlined)
            : const Icon(Icons.dark_mode_outlined),
      ),
    );
  }
}
