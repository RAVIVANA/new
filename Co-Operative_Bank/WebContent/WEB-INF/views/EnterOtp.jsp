<!DOCTYPE html>
<html>
<head>
    <title>Co-Operative Bank - Enter OTP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        /* CSS styles for the form */
        html, body {
            height: 100%;
        }

        body {
            display: flex;
            align-items: center;
        }

        #content {
            padding: 20px;
            background-color: #f8f9fa;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            height: calc(1.5em + 0.75rem + 2px);
            padding: 0.375rem 0.75rem;
            font-size: 0.875rem;
            width: 50px;
            text-align: center;
        }

        /* Add spacing between the digit input boxes */
        .input-group .form-control:not(:first-child) {
            margin-left: 5px;
        }

        .btn-primary {
            background-color: #333;
            border-color: #333;
        }

        .btn-primary:hover {
            background-color: #111;
            border-color: #111;
            text-shadow: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div id="content" class="col-md-4 offset-md-4">
            <h1 class="text-center">Enter OTP</h1>
            <form id="otpForm" class="mt-4" action="ConfirmPass" method="post">
                <div class="form-group">
                    <label for="otp">OTP</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="digit1" maxlength="1" pattern="[0-9]" required oninput="moveToNextInput(1)" name="digit1">
                        <input type="text" class="form-control" id="digit2" maxlength="1" pattern="[0-9]" required oninput="moveToNextInput(2)" name="digit2">
                        <input type="text" class="form-control" id="digit3" maxlength="1" pattern="[0-9]" required oninput="moveToNextInput(3)" name="digit3">
                        <input type="text" class="form-control" id="digit4" maxlength="1" pattern="[0-9]" required oninput="moveToNextInput(4)" name="digit4">
                        <input type="text" class="form-control" id="digit5" maxlength="1" pattern="[0-9]" required oninput="moveToNextInput(5)" name="digit5">
                        <input type="text" class="form-control" id="digit6" maxlength="1" pattern="[0-9]" required name="digit6">
                    </div>
                    <small class="form-text text-muted">Enter each digit of the OTP separately.</small>
                </div>
                <input type="hidden" id="otpHidden" name="otpHidden">
                <input type="submit" class="btn btn-primary btn-block" value="Submit" onclick="performActions(event)">
            </form>
        </div>
    </div>

    <script>
        function moveToNextInput(nextInput) {
            var currentInput = document.getElementById("digit" + nextInput);
            var nextInputId = "digit" + (nextInput + 1);

            if (currentInput.value.length === 1) {
                document.getElementById(nextInputId).focus();
            }
        }

        function populateHiddenField() {
            var otpDigits = "";
            for (var i = 1; i <= 6; i++) {
                otpDigits += document.getElementById("digit" + i).value;
            }
            document.getElementById("otpHidden").value = otpDigits;
        }

        function performActions(event) {
            event.preventDefault();
            populateHiddenField();
            document.getElementById("otpForm").submit();
        }
    </script>
</body>
</html>
