import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class UserState extends Equatable {}

class UserLoadingState extends UserState {
  @override
  List<Object?> get props => [];
}

//data loaded state


//data error loading state