import 'package:math_expressions/math_expressions.dart';

class CalculatorPadController {
  var expressionText = "";
  String resultText = "";
  final Function(String) onExpressionTextChanged;
  final Function(String) onResultTextChanged;

  static const operationCharList = ['C', 'AC', '+', '-', 'x', '/', '='];

  CalculatorPadController({
    required this.onExpressionTextChanged,
    required this.onResultTextChanged,
  });

  void evalueteButtonClick(String text) {
    if (_isOperation(text)) {
      switch (text) {
        case 'C':
          if (expressionText.isNotEmpty) {
            var newText =
                expressionText.substring(0, expressionText.length - 1);
            expressionText = newText;
            if (expressionText.isEmpty) {
              resultText = "";
              onResultTextChanged("");
            }
          }
          break;
        case 'AC':
          expressionText = "";
          resultText = "";
          onResultTextChanged(resultText);
          break;
        case '=':
          if (expressionText.isNotEmpty) _evalueteExpression();
          break;
        default:
          _addOperationToExpression(text);
      }
    } else {
      expressionText = expressionText + text;
    }

    onExpressionTextChanged.call(expressionText);
  }

  bool _isOperation(String text) {
    return operationCharList.contains(text);
  }

  _addOperationToExpression(String operation) {
    if (expressionText.isNotEmpty) {
      String lastChar = expressionText.substring(
          expressionText.length - 1, expressionText.length);
      if (_isOperation(lastChar) && (operation != '-' || lastChar == '-')) {
        expressionText =
            expressionText.substring(0, expressionText.length - 1) + operation;
      } else {
        expressionText = expressionText + operation;
      }
    } else if (operation == '-') {
      expressionText = operation;
    }
  }

  _evalueteExpression() {
    Parser p = Parser();
    Expression exp = p.parse(expressionText.replaceAll("x", "*"));
    ContextModel cm = ContextModel();
    try {
      resultText = exp.evaluate(EvaluationType.REAL, cm).toString();
      if (resultText == "Infinity") throw Exception();
    } catch (e) {
      resultText = 'Operação inválida.';
    }

    onResultTextChanged(resultText);
  }
}
