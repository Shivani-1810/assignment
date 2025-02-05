<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shivani's Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #007BFF; /* Blue background */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .calculator {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            width: 320px;
            text-align: center;
        }

        .calculator h1 {
            font-size: 24px;
            color: #007BFF;
            margin-bottom: 15px;
        }

        .display {
            width: calc(100% - 20px);
            padding: 15px;
            font-size: 22px;
            text-align: right;
            border: 2px solid #007BFF;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.2);
            outline: none;
            margin-bottom: 10px;
        }

        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }

        .buttons button {
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .buttons button:hover {
            background-color: #0056b3;
        }

        .equal {
            background-color: #0056b3;
            grid-column: span 4;
        }

        .equal:hover {
            background-color: #00408a;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <h1>Shivani's Calculator</h1>
        <input type="text" id="display" class="display" readonly>
        <div class="buttons">
            <button onclick="appendValue('7')">7</button>
            <button onclick="appendValue('8')">8</button>
            <button onclick="appendValue('9')">9</button>
            <button onclick="appendValue('/')">/</button>
            <button onclick="appendValue('4')">4</button>
            <button onclick="appendValue('5')">5</button>
            <button onclick="appendValue('6')">6</button>
            <button onclick="appendValue('*')">*</button>
            <button onclick="appendValue('1')">1</button>
            <button onclick="appendValue('2')">2</button>
            <button onclick="appendValue('3')">3</button>
            <button onclick="appendValue('-')">-</button>
            <button onclick="appendValue('0')">0</button>
            <button onclick="appendValue('.')">.</button>
            <button onclick="clearDisplay()">C</button>
            <button onclick="appendValue('+')">+</button>
            <button class="equal" onclick="calculate()">=</button>
        </div>
    </div>

    <script>
        const display = document.getElementById('display');

        function appendValue(value) {
            display.value += value;
        }

        function clearDisplay() {
            display.value = '';
        }

        function calculate() {
            try {
                display.value = eval(display.value);
            } catch (error) {
                alert('Invalid input!');
            }
        }

        // Enable keyboard input
        document.addEventListener("keydown", function(event) {
            const key = event.key;
            if ((key >= '0' && key <= '9') || ['+', '-', '*', '/', '.'].includes(key)) {
                appendValue(key);
            } else if (key === 'Enter') {
                calculate();
            } else if (key === 'Backspace') {
                display.value = display.value.slice(0, -1);
            } else if (key === 'Escape') {
                clearDisplay();
            }
        });
    </script>
</body>
</html>
