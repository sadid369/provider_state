import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/my_provider_class.dart';
import 'package:provider_state/my_second_provider_class.dart';

extension Providers on BuildContext {
  MyProviderClass get myProvider =>
      Provider.of<MyProviderClass>(this, listen: false);
  MySecondProviderClass get mySecondProvider =>
      Provider.of<MySecondProviderClass>(this, listen: false);
}
