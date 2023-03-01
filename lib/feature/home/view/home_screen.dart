import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '/core/init/theme/theme_service.dart';
import 'package:provider/provider.dart';
import '../model/user.dart';
import '../viewModel/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = HomeViewModel();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example"),
      ),
      body: Observer(builder: (_) {
        return homeViewModel.isLoading
            ? ListView.builder(
                itemCount: homeViewModel.post?.length ?? 0,
                itemBuilder: (context, index) {
                  List<Post>? list = homeViewModel.post;
                  return ListTile(
                    subtitle: Text(list?[index].body ?? ''),
                    title: Text(list?[index].title ?? ''),
                  );
                },
              )
            : const Center(child: CircularProgressIndicator());
      }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<ThemeService>().changeTheme();
          },
          child: const Icon(Icons.change_circle_outlined)),
    );
  }
}
