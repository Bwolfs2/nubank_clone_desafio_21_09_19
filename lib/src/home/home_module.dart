import 'package:nubank_clone_desafio_21_09_19/src/home/widgets/card_central_list/card_central_list_bloc.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/widgets/card_bottom_list/card_bottom_list_bloc.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/widgets/card_bottom/card_bottom_bloc.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/widgets/card_central/card_central_bloc.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/widgets/header/header_bloc.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone_desafio_21_09_19/src/home/home_page.dart';

import 'widgets/card_central_list/cards/card_cartao_credito/card_cartao_credito_bloc.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => CardCartaoCreditoBloc()),
        Bloc((i) => CardCentralListBloc()),
        Bloc((i) => CardBottomListBloc()),
        Bloc((i) => CardBottomBloc()),
        Bloc((i) => CardCentralBloc()),
        Bloc((i) => HeaderBloc()),
        Bloc((i) => HomeBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
