import 'package:flutter/material.dart';

class TicketCounter extends StatefulWidget {
  const TicketCounter({Key? key}) : super(key: key);

  @override
  State<TicketCounter> createState() => _TicketCounterState();
}

class _TicketCounterState extends State<TicketCounter> {
  int _count = 1;

  void _increase() {
    setState(() {
      _count++;
    });
  }

  void _decrease() {
    if (_count > 1) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(
            Icons.remove,
            size: 20,
            color: Colors.green,
          ),
          onPressed: _decrease,
        ),
        Text(
          '$_count',
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff525252),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.add,
            size: 20,
            color: Colors.green,
          ),
          onPressed: _increase,
        ),
      ],
    );
  }
}
