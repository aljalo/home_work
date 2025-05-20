import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/product_cubit/product_cubit.dart';
import 'cubits/product_detail_cubit/product_detail_cubit.dart';
import 'services/product_service.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ProductCubit(ProductService())..fetchProducts(),
        ),
        BlocProvider(create: (_) => ProductDetailCubit()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
