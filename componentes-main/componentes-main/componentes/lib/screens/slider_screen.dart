import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                //divisions: 10,
                //si _sliderEnabled está activado ejecuta
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                        print(value);
                      }
                    //caso contrario manda null
                    : null),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            CheckboxListTile(
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            // Switch(
            //     value: _sliderEnabled,
            //     onChanged: (value) => setState(() {
            //           _sliderEnabled = value;
            //         })),

            SwitchListTile.adaptive(
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),

            AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                    image: const NetworkImage(
                        'https://scontent.ftuc1-1.fna.fbcdn.net/v/t39.30808-6/284023048_5237152349673496_1807304620420704326_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=7ok-lOq_OtYAX-5ymy9&_nc_ht=scontent.ftuc1-1.fna&oh=00_AT-yv83PrSJOj1s8usz_RLgJja9mMldhUgsFdPZfSkrCsQ&oe=6294756D'),
                    fit: BoxFit.contain,
                    width: _sliderValue),
              ),
            ),
            const SizedBox(height: 50)
          ],
        ));
  }
}
