import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';
  }

  Color getTypeColor() {
    switch (this) {
      case 'normal':
        return HexColor('#a8a878');
      case 'fire':
        return HexColor('#f08030');
      case 'water':
        return HexColor('#6890f0');
      case 'electric':
        return HexColor('#f8d030');
      case 'grass':
        return HexColor('#78c850');
      case 'ice':
        return HexColor('#98d8d8');
      case 'fighting':
        return HexColor('#c03028');
      case 'poison':
        return HexColor('#a040a0');
      case 'ground':
        return HexColor('#e0c068');
      case 'flying':
        return HexColor('#a890f0');
      case 'psychic':
        return HexColor('#f85888');
      case 'bug':
        return HexColor('#a8b820');
      case 'rock':
        return HexColor('#b8a038');
      case 'ghost':
        return HexColor('#705898');
      case 'dragon':
        return HexColor('#7038f8');
      case 'dark':
        return HexColor('#705848');
      case 'steel':
        return HexColor('#b8b8d0');
      case 'fairy':
        return HexColor('#f0b6bc');
      case 'stellar':
        return HexColor('#35ace7');
      default:
        return Colors.grey;
    }
  }
}
