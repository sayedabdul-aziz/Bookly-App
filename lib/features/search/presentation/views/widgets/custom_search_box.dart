import 'package:ebookia/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../view_models/cubit/search_cubit.dart';

class CustomSearchBox extends StatefulWidget {
  const CustomSearchBox({
    super.key,
  });

  @override
  State<CustomSearchBox> createState() => _CustomSearchBoxState();
}

class _CustomSearchBoxState extends State<CustomSearchBox> {
  final _controller = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: TextFormField(
          controller: _controller,
          onFieldSubmitted: (value) {
            if (_key.currentState!.validate()) {
              BlocProvider.of<SearchCubit>(context).getBooks(key: value);
            }
          },
          validator: (value) {
            if (value!.isEmpty || value.length < 4) {
              return 'Please enter at least 4 characters.';
            }
            return null;
          },
          cursorColor: Colors.amber,
          decoration: InputDecoration(
              hintText: 'Enter a keyword like java, flutter, ... etc .',
              hintStyle: Styles.titleStyle14,
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: Colors.white)),
              suffixIcon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 17,
                color: Colors.white54,
              ))),
    );
  }
}
