def generate(data):
    data["params"]["names_for_user"] = []
    data["params"]["names_from_user"] = [
        {
            "name": "fib",
            "description": "Function to compute the $n^\\text{th}$ fibonacci number",
            "type": "python function",
        }
    ]
