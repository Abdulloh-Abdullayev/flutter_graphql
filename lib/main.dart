import 'package:flutter/material.dart';
import 'package:flutter_graphql/graphql/graphql_config.dart';
import 'package:flutter_graphql/pages/home_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() {
  runApp(GraphQLProvider(
    client: graphQLConfiguration.client,
    child: CacheProvider(child: const MyApp(),),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

