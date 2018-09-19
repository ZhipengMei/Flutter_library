Read Flutter more articles at my blog [Here](http://zhipengmei.github.io/site/).

# Building dynamic Checkboxes in Flutter

As we all know, Flutter is a widget based framework. All of the UI components in Flutter are widgets. Today I want to share some of my finding of building Flutter widgets. I'll use the checkbox widget for demo purposes to cover the following two points:
- Building a dynamic widget.
- Perform set state easily.


### Naive Method to Create Multiple Checkbox Widgets

<div align="center">
  <img src="https://zhipengmei.github.io/site/assets/img/dynamic_checkbox/dynamic_checkboxe_1.png" height="700" />
</div>

1. We need to create a ***boilerplate code*** in the **Main.dart**.

 **MaterialApp** widget > **Stateful** widget >  **Scaffold** widget.

```
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Checkboxes"),
        centerTitle: true,
      ),
    );
  }
}
```

2. Initialize few boolean values inside **_MyHomePageState**.

```
bool monVal = false;
bool tuVal = false;
bool wedVal = false;
```

3. We want to create a checkbox with a title. It will be having a Text and Checkbox widgets inside a Column widget. 

```
Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
        Text("Mon"),
        Checkbox(
            value: monVal,
            onChanged: (bool value) {
                setState(() {
                    monVal = value;
                });
            },
        ),
    ],
),
```

4. Put everything together it looks something like this.
```
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic Checkboxes"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // [Monday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Mon"),
                  Checkbox(
                    value: monVal,
                    onChanged: (bool value) {
                      setState(() {
                        monVal = value;
                      });
                    },
                  ),
                ],
              ),

              // [Tuesday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Tu"),
                  Checkbox(
                    value: tuVal,
                    onChanged: (bool value) {
                      setState(() {
                        tuVal = value;
                      });
                    },
                  ),
                ],
              ),

              // [Wednesday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Wed"),
                  Checkbox(
                    value: wedVal,
                    onChanged: (bool value) {
                      setState(() {
                        wedVal = value;
                      });
                    },
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}
```

<div align="center">
  <img src="https://zhipengmei.github.io/site/assets/img/dynamic_checkbox/dynamic_checkboxes_1.gif" height="700" />
</div>

The naive method to implement multiple checkbox widgets is working great and robust. There are not many flaws besides repetitive code. How can we refactor our code?

# Dynamic Method to Create Multiple Checkbox Widgets

<div align="center">
  <img src="https://zhipengmei.github.io/site/assets/img/dynamic_checkbox/dynamic_checkboxe_2.png" height="700" />
</div>

1. Use the same ***boilerplate code*** from previous method.
2. Initialize few boolean values inside **_MyHomePageState**.

```
bool monVal = false;
bool tuVal = false;
bool wedVal = false;
bool thurVal = false;
bool friVal = false;
bool satVal = false;
bool sunVal = false;
```

3. Create a **checkbox** widget. We can re-use this widget dynamically to create multiple widgets of the same kind with different parameters.
- **title** is the name of the checkbox.
- **boolValue** is the boolean value of the checkbox.

```
Widget checkbox(String title, bool boolValue) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text(title),
            Checkbox(
                value: boolValue,
                onChanged: (bool value) {},
            )
        ],
    );
}
```

4. We can use it inside the **build** method.

```
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
        checkbox("Mon", monVal),
        checkbox("Tu", tuVal),
        checkbox("Wed", wedVal),
        checkbox("Thur", thurVal),
        checkbox("Fri", friVal),
    ],
)
```

5. Put everything together it looks something like this.
```
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;
  bool thurVal = false;
  bool friVal = false;
  bool satVal = false;
  bool sunVal = false;

  Widget checkbox(String title, bool boolValue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic Checkboxes"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  checkbox("Mon", monVal),
                  checkbox("Tu", tuVal),
                  checkbox("Wed", wedVal),
                  checkbox("Thur", thurVal),
                  checkbox("Fri", friVal),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  checkbox("Sat", satVal),
                  checkbox("Sun", sunVal),
                ],
              ),
            ],
          ),
        )
    );
  }
}
```

Everything looks great. It achieves our goal to refactor some of the repetitive code when creating multiple Checkbox widgets. But there is one major flaw. It is not production ready if we don't fix it right away.  State management. How can we control the state of each Checkbox?

# Dynamic Method to Create Multiple Checkbox Widgets with State Management

As we create each checkbox, it should be able to save its state when use tick and un-tick it. State management of each Checkbox widget implies we have full control over the state.

The **boolValue** is a local variable within the **checkbox** widget. This value can only use it for UI display. 

How can we implement a dynamic state management inside the **checkbox** widget? 

The answer is the **Switch Statement**. We can use the **title** to match each case and set the current checkbox's boolean to its corresponding day of the week boolean value.

```
setState(() {
    switch (title) {
    case "Mon":
        monVal = value;
        break;
    case "Tu":
        tuVal = value;
        break;
    case "Wed":
        wedVal = value;
        break;
    case "Thur":
        thurVal = value;
        break;
    case "Fri":
        friVal = value;
        break;
    case "Sat":
        satVal = value;
        break;
    case "Sun":
        sunVal = value;
        break;
    }
});
```

The new **checkbox** widget looks something like this.

```
  Widget checkbox(String title, bool boolValue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            /// manage the state of each value
            setState(() {
              switch (title) {
                case "Mon":
                  monVal = value;
                  break;
                case "Tu":
                  tuVal = value;
                  break;
                case "Wed":
                  wedVal = value;
                  break;
                case "Thur":
                  thurVal = value;
                  break;
                case "Fri":
                  friVal = value;
                  break;
                case "Sat":
                  satVal = value;
                  break;
                case "Sun":
                  sunVal = value;
                  break;
              }
            });
          },
        )
      ],
    );
  }
```

<div align="center">
  <img src="https://zhipengmei.github.io/site/assets/img/dynamic_checkbox/dynamic_checkboxes_3.gif" height="700" />
</div>

## That's it

You have learned how to refactor the repetitive widgets building code in Flutter. Excellent job  :) 

[Full Source Code Here](https://github.com/ZhipengMei/Flutter_library/blob/master/dynamic_checkboxes/lib/main.dart)

If you have any questions or comments, chat with me on [Gitter](https://gitter.im/smakerspaces/Lobby).



For help getting started with Flutter, view the online
[documentation](https://flutter.io/).
